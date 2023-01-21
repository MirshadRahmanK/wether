import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wether_app/Model/model.dart';
import 'package:wether_app/Widget/bottom_container.dart';
import 'package:wether_app/Widget/center_widget.dart';
import 'package:http/http.dart' as http;
import 'package:wether_app/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Wether _weather = Wether();
bool isLoaded = false;

class _HomeScreenState extends State<HomeScreen> {
  getDatas() async {
    var uri =
        'https://api.openweathermap.org/data/2.5/weather?lat=10.9985&lon=76.1422&appid=8079fcace7ea96d0343c2ca50c094e23';
    var response = await http.get(Uri.parse(uri));
    print(response.body);
    _weather = Wether.fromJson(jsonDecode(response.body));
    setState(() {
      isLoaded = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDatas();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: isLoaded
            ? Scaffold(
                backgroundColor: Colors.black,
                body: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  _weather.name!,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                        Image(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            image: AssetImage('assets/clouds-and-sun.png')),
                        Text(
                          "Temp",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${_weather.main!.temp}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Visibility :",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Text(
                              "${_weather.visibility}",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )
                          ],
                        ),
                        centerWidget(context,
                            cloud: _weather.visibility.toString(),
                            coord: _weather.id.toString(),
                            time: _weather.visibility.toString()),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Coord",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        bottomContainer(context),
                      ],
                    ),
                  ),
                ),
              )
            : Scaffold(
                backgroundColor: Colors.black,
                body: Center(
                  child: CircularProgressIndicator(color: Colors.yellow),
                ),
              ));
  }
}
