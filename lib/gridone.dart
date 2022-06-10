//'Arisya Dzahier 1919340
import 'package:flutter/material.dart';

class GridLayout extends StatefulWidget {
  const GridLayout({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GridLayoutState createState() => _GridLayoutState();
}

bool Grid1 = true;
bool Grid2 = true;
bool Grid3 = true;
bool Grid4 = true;

class _GridLayoutState extends State<GridLayout> {
  void iconPressed1() {
    setState(() {
      Grid1 = !Grid1;
    });
  }

  void iconPressed2() {
    setState(() {
      Grid2 = !Grid2;
    });
  }

  void iconPressed3() {
    setState(() {
      Grid3 = !Grid3;
    });
  }

  void iconPressed4() {
    setState(() {
      Grid4 = !Grid4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.count(
        crossAxisCount: 2,
        children: [
          // AIR-CONDITION 
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Image(
                            image: AssetImage(Grid1
                                ? 'assets/ac-off.png'
                                : 'assets/ac-on.png'),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextButton(
                              child: const Icon(Icons.power_settings_new,
                                  size: 40),
                              onPressed: iconPressed1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "AIR-COND",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          //actionsTaken.elementAt(textIndex1)
                          (Grid1 == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 25),
                        ),
                      )
                    ],
                  )
                ],
              )),

          // CEILING FAN
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      SizedBox(
                         height: 80,
                          width: 80,
                        child: Image(
                          image: AssetImage(Grid2
                              ? 'assets/fan-off.png'
                              : 'assets/fan-on.png'),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                          width: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                        child: TextButton(
                          child: const Icon(Icons.power_settings_new, size: 40),
                          onPressed: iconPressed2,
                        ),
                          ),
                      ),
                    ],
                  ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "CEILING FAN",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          (Grid2 == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 25),
                        ),
                      )
                    ],
                  )
                ],
              )),

          // LAMP
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          child: Image(
                            image: AssetImage(Grid3
                                ? 'assets/lamp-off.png'
                                : 'assets/lamp-on.png'),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 60,
                          width: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextButton(
                              child: const Icon(Icons.power_settings_new,
                                  size: 40),
                              onPressed: (iconPressed3),
                            ),
                          ),
                        )
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "LAMP",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          (Grid3 == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 25),
                        ),
                      )
                    ],
                  )
                ],
              )),

          // TELEVISION
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                         height: 80,
                          width: 80,
                        child: Image(
                          image: AssetImage(Grid4
                              ? 'assets/tv-off.png'
                              : 'assets/tv-on.png'),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                          width: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                        child: TextButton(
                          child: const Icon(Icons.power_settings_new, size: 40),
                          onPressed: iconPressed4,
                        ),
                      ),
                      ),
                    ],
                  ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "TV",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          (Grid4 == true) ? 'OFF' : "ON",
                          style: const TextStyle(fontSize: 25),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
