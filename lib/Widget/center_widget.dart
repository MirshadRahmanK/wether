import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget centerWidget(BuildContext context,{required String cloud,required String time,required String coord}) {
  return Padding(
    padding: const EdgeInsets.only(top: 40, bottom: 20),
    child: Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cloud_sharp,
                  color: Colors.grey,
                ),
                Text(
                  cloud,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.timeline_sharp,
                  color: Colors.grey,
                ),
                Text(
                  time,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cloud_off_rounded,
                  color: Colors.grey,
                ),
                Text(
                 coord,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
