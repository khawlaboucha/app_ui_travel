import 'package:app_travel_ui/main.dart';
import 'package:app_travel_ui/thied_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //BackGround
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                    color:  Color(0xff0F2940),
                    image: DecorationImage(
                      alignment: Alignment.topRight,
                      image: AssetImage("assets/line_back.png",),
                      fit:BoxFit.fitWidth,

                    )
                ),
              )
            ],
          ),SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  return  MyHomePage();
                                },),);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ),
                      IconButton(
                          onPressed: () {  },
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 40.0, bottom: 30.0),
                  child: Text(
                    "Mountain\nPackages",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 220,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            // Add your navigation logic here
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  // Replace this with the page you want to navigate to
                                                  return ThirdScreen();
                                                },),
                                            );},
                                        child: Image.asset(
                                          "assets/treking.jpg",
                                          fit: BoxFit.cover,
                                        ),),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(10.0)),
                                          color: Colors.orange,
                                        ),
                                        child: Icon(
                                          Icons.calendar_today,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "Trekking",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 20.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                      Text(
                                        "Tours + Hotel",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 220,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.asset(
                                          "assets/adventure.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(10.0)),
                                          color: Colors.orange,
                                        ),
                                        child: const Icon(
                                          Icons.calendar_today,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "Adventure",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                      Text(
                                        "Tours + Flight",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 30.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Sort by",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      Text(
                                        "Price",
                                        style: TextStyle(
                                            color: Colors.amber, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_downward_outlined,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 220,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: GestureDetector(
                                    onTap: () {
                                     // Add your navigation logic here
                                     Navigator.of(context).push(
                                     MaterialPageRoute(
                                     builder: (context) {
                                     // Replace this with the page you want to navigate to
                                       return ThirdScreen();
                                     },),
                                         );},
                                    child: Image.asset(
                                      "assets/camping.jpg",
                                      fit: BoxFit.cover,
                                    ),),

                                  ),

                                ),

                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "Camping",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 20.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                      Text(
                                        "Tours + Transporation",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 220,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),

                                    child: Image.asset(
                                      "assets/beking.jpg",
                                      fit: BoxFit.cover,
                                  ),
                                ),),                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "Biking",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 20.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                      Text(
                                        "Tours + Race",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 25),
            child: Container(
                width: 100,
                height: 3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0.2),
                    color: Color(0xff0F2940)
                )
            ),
          ),
            Padding(
            padding: const EdgeInsets.only(left: 15,top: 25),
            child: Container(
             width: 100,
             height: 3,
             decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(0.2),
               color: Color(0xff0F2940)
    )
    ),
    )

        ],
      ),
    );
  }
}
