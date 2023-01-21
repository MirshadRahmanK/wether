import 'package:flutter/material.dart';

Widget bottomContainer(BuildContext context,) {
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
                Text(
                  "Colud",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Image(
                    height: 30, width: 30, image: AssetImage('assets/sun.png'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Timezone",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Image(
                    height: 30, width: 30, image: AssetImage('assets/sun.png'))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Colud",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Image(
                    height: 30, width: 30, image: AssetImage('assets/sun.png'))
              ],
            ),
          )
        ],
      ),
    ),
  );
}
