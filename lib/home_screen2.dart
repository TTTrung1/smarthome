import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  int initialIndex = 1;
  int index1 = 1;
  int index2 = 2;
  int index3 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60.0, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(
                      color: Color.fromRGBO(248, 248, 248, 1),
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Wifi:tw1r_413_7G',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              '3 new devices',
              textAlign: TextAlign.left,
              style: TextStyle(
                  height: 2,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  sliver: SliverGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            initialIndex = index1;
                          });
                        },
                        child: Container(
                            height: 186,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(40, 36, 36, 1),
                                borderRadius: BorderRadius.circular(24),
                                border: initialIndex == 1
                                    ? Border.all(
                                        color: const Color.fromRGBO(
                                            255, 178, 103, 0.6))
                                    : null),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/Bork.png',
                                ),
                                const Text(
                                  'Bork V530',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(248, 248, 248, 1)),
                                ),
                                const Text(
                                  'Vacuum cleaner',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            initialIndex = index2;
                          });
                        },
                        child: Container(
                            height: 186,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(40, 36, 36, 1),
                                borderRadius: BorderRadius.circular(24),
                                border: initialIndex == 2
                                    ? Border.all(
                                        color: const Color.fromRGBO(
                                            255, 178, 103, 0.6))
                                    : null),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/Led.png',
                                ),
                                const Text(
                                  'LIFX LED Light',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(248, 248, 248, 1)),
                                ),
                                const Text(
                                  'Smart bulb',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            initialIndex = index3;
                          });
                        },
                        child: Container(
                            height: 186,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(40, 36, 36, 1),
                                borderRadius: BorderRadius.circular(24),
                                border: initialIndex == 3
                                    ? Border.all(
                                        color: const Color.fromRGBO(
                                            255, 178, 103, 0.6))
                                    : null),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/Xiaomi.png',
                                ),
                                const Text(
                                  'Xiaomi DEM-F600',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(248, 248, 248, 1)),
                                ),
                                const Text(
                                  'Humidifier',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                              ],
                            )),
                      ),
                      Container(
                          height: 186,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(33, 29, 29, 1),
                              borderRadius: BorderRadius.circular(24),
                              border: null),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/Wifi.png',
                              ),
                              const Text(
                                'Not found device?',
                                softWrap: true,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(248, 248, 248, 1)),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Select manually',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 178, 103, 1)),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(255, 178, 103, 1))),
                  child: const SizedBox(
                      height: 63,
                      child: Center(
                          child: Text(
                        'Add device',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Color.fromRGBO(33, 29, 29, 1)),
                      )))),
            ),
          )
        ],
      ),
    );
  }
}
