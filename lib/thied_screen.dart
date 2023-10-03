import 'package:app_travel_ui/second_screen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);
@override  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/treking.jpg",
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2,
                ),
              )
            ],
          ),
          Column(
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15.0),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                // Replace this with the page you want to navigate to
                                return SecondScreen();
                              },),);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          )),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 420),

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                //height: 378,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xff0F2940),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 25),
                      child: Container(
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xff0C356A),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: IntrinsicHeight(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 20),
                                          child: Container(
                                            height: 35,
                                            width: 35,
                                            child: Opacity(
                                              opacity: 0.5,
                                              child: Image.asset(
                                                  "assets/icons_world.png"),
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding:  EdgeInsets.only(
                                              top: 5, left: 25),
                                          child: Text(
                                            "Tour",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 90,
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.only(left: 20),
                                        child: VerticalDivider(
                                          color: Colors.white,
                                          thickness: 2,
                                          width: 2,
                                          // Adjust the width of the vertical divider
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 20),
                                          child: Text(
                                            "Night wonder",
                                            style: TextStyle(
                                              color: Colors.white.withOpacity(0.3),
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30),
                                          child: Text(
                                            "Mountain climbing",
                                            style: TextStyle(
                                              color: Colors.white.withOpacity(0.3),
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30),
                                          child: Text(
                                            "scuba diving",
                                            style: TextStyle(
                                              color: Colors.white.withOpacity(0.3),
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height:3),
                                        const Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left:180),
                                              child: Text(
                                                "\$",
                                                style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 9,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 3), // Adjust the left padding as needed
                                              child: Text(
                                                "200",
                                                style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 12,
                                                ),
                                              ),                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                    padding:
                    const EdgeInsets.only(left: 40, right: 40, top: 25),
                    child:  Container(
                      height: 110,
                      decoration: BoxDecoration(
                        color: const Color(0xff0C356A),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding:const  EdgeInsets.only(
                                            left: 22, top: 15),
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          child: Opacity(
                                            opacity: 0.5,
                                            child: Image.asset(
                                                "assets/icons_airplane.png"),
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            top: 5, left: 20),
                                        child: Text(
                                          "Flight",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 90,
                                    child:const  Padding(
                                      padding:
                                       EdgeInsets.only(left: 20),
                                      child: VerticalDivider(
                                        color: Colors.white,
                                        thickness: 2,
                                        width: 2,
                                        // Adjust the width of the vertical divider
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:const  EdgeInsets.only(
                                            left: 30, top: 20),
                                        child: Text(
                                          "Night wonder",
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.3),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 30),
                                        child: Text(
                                          "Mountain climbing",
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.3),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 30),
                                        child: Text(
                                          "Scuba diving",
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.3),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height:3),
                                      const Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left:180),
                                            child: Text(
                                              "\$",
                                              style: TextStyle(
                                                color: Colors.amber,
                                                fontSize: 9,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 3), // Adjust the left padding as needed
                                            child: Text(
                                              "300",
                                              style: TextStyle(
                                                color: Colors.amber,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),),

                    Padding(
                      padding: const EdgeInsets.only(left: 140, top: 35),
                      child: Container(
                        height: 50,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Row( // Row widget should be a child of the Container
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left:10),
                              //const EdgeInsets(left: 10), // Adjust the left padding as needed
                              child: Text(
                                "\$",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 3), // Adjust the left padding as needed
                              child: Text(
                                "500",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(width: 3,),
                            const Padding(
                              padding: EdgeInsets.only(left: 2), // Adjust the left padding as needed
                              child: Text(
                                "check out",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(width: 3,),
                            Padding(
                              padding: const EdgeInsets.only(left: 1), // Adjust the left padding as needed
                              child: Container(
                                width: 15,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.white,

                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 35),
                      child: Container(
                        width: 100,
                        height: 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.2),
                          color: Colors.white
                        )
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }


}
