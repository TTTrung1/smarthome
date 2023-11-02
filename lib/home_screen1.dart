import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  bool sw1 = true;
  bool sw2 = true;

  double slider1 = 0.6;
  double slider2 = 0.4;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Stack(children: [
            Image.asset('assets/bedroom.png'),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 20, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/back.png'),
                  Text(
                    'Bedroom',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Image.asset('assets/bell.png')
                ],
              ),
            ),
            Positioned(
              top: 350,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 198,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  color: Theme.of(context).canvasColor),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 10, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '36%',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        Image.asset('assets/humidity.png')
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Humidifier',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                        Text('Air',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20, bottom: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Mode 2',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall),
                                        CupertinoSwitch(
                                          value: sw1,
                                          onChanged: (bool sw) {
                                            setState(() {
                                              sw1 = sw;
                                            });
                                          },
                                          activeColor: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Container(
                              height: 198,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  color: Theme.of(context).canvasColor),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 10, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '72%',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                        ),
                                        Image.asset('assets/clean.png')
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text('Purifier',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall),
                                        Text('Air',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20, bottom: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('On',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall),
                                        CupertinoSwitch(
                                            value: sw2,
                                            onChanged: (sw) {
                                              setState(() {
                                                sw2 = sw;
                                              });
                                            },
                                            activeColor: Theme.of(context)
                                                .colorScheme
                                                .primary)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20),
                      child: Container(
                        height: 154,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: Theme.of(context).canvasColor),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15, top: 5, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Main light',
                                  style:
                                  Theme.of(context).textTheme.titleSmall),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(

                                    child: Slider(
                                      value: slider1,
                                      onChanged: (n) {
                                        setState(() {
                                          slider1 = n;
                                        });
                                      },
                                      thumbColor: Colors.black87,
                                      inactiveColor: Colors.black26,
                                    ),
                                  ),
                                  Image.asset('assets/Lamp.png')
                                ],
                              ),
                              Text('Floor lamp',
                                  style:
                                  Theme.of(context).textTheme.titleSmall),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Slider(
                                      value: slider2,
                                      onChanged: (n) {
                                        setState(() {
                                          slider2 = n;
                                        });
                                      },
                                      thumbColor: Colors.black87,
                                      inactiveColor: Colors.black26,
                                    ),
                                  ),
                                  Image.asset('assets/Tablelamp.png')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

