import 'package:face/home.dart';
import 'package:flutter/material.dart';

class landingPage extends StatelessWidget {
  const landingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green[700],
          elevation: null,
          title: Text('Leaf Disease Detector'),
        ),
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              ),
              child: Image.asset('assets/plant.jpeg'),
            ),
            SizedBox(
              height: height / 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      'Types of Potato leaf Disease',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * 0.4,
                        width: width * 0.45,
                        child: Column(
                          children: [
                            Text(
                              'Early Blight',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green[900]),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Image.asset('assets/eb2.jpg'),
                            SizedBox(
                              height: 8.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green[500],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Roughly circular brown spots appear on leaves and stems',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * 0.4,
                        width: width * 0.45,
                        child: Column(
                          children: [
                            Text(
                              'Late Blight',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green[900]),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Image.asset('assets/lateBlight.jpg'),
                            SizedBox(
                              height: 8.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green[500],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ' Pale green water soaked spots mostly on the margin and tips',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            // FractionallySizedBox(
            //   widthFactor: width * 0.5,
            FlatButton(
                color: Colors.green[900],
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                  'Start Detecting',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 25),
                )),
            // )
          ],
        ),
      ),
    );
  }
}
