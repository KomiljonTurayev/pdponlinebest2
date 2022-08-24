import 'package:flutter/material.dart';

class Homework1 extends StatefulWidget {
  const Homework1({Key? key}) : super(key: key);

  @override
  State<Homework1> createState() => _Homework1State();
}

class _Homework1State extends State<Homework1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('PDP Online')),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/img.JPG'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.2),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'PDP Online',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 26),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/img.JPG'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(0.9),
                                  Colors.black.withOpacity(0.8),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.2),
                                ]),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'PDP Online',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 26),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/img.JPG'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(0.9),
                                  Colors.black.withOpacity(0.8),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.2),
                                ]),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'PDP Online',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 26),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
