import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyDetails(), debugShowCheckedModeBanner: false);
  }
}

class MyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blueAccent),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text('Modupe Ifeoluwa',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        'MOBILE DEV.',
                        style: TextStyle(
                            color: Colors.black26,
                            fontSize: 16,
                            letterSpacing: 2.0),
                      ),
                        Text(
                          'ENGINEER',
                          style: TextStyle(
                              color: Colors.black26,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0),

                        ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text('I\'m a Teacher and I love to learn.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  letterSpacing: 2.0)),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Divider(
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text('I am curious about what I can gain from this course. It has been worth it so far.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2.0)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 150,
                        child: Divider(
                          color: Colors.blue,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          color: Colors.lightGreen,
                          margin:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.smartphone_outlined,
                                  color: Colors.white,
                                ),
                                title: Text('+2348189927793',
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          color: Colors.lightGreen,
                          margin:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                ),
                                title: Text('LAGOS, NIGERIA',
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Card(
                          color: Colors.lightGreen,
                          margin:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                title: Text('modupyife@gmail.com',
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              // top: screenHeight * (1 / 8) - 100 / 2,
              left: screenWidth * 0.28,
              bottom: screenHeight - 220,
              // right: 30,
              child: Container(
                margin: const EdgeInsets.all(4),
                height: 150,
                width: 150,
                decoration:
                BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
                child: Container(
                  padding: EdgeInsets.all(4),
                  margin: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.white10, width: 5),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}