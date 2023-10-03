import 'package:app_travel_ui/second_screen.dart';
import 'package:app_travel_ui/thied_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(), //ThirdScreen(),
      //SecondScreen(),
      //MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentButton = 0;
  List<String> buttonList1 = [
    "https://i.pinimg.com/564x/e0/41/33/e04133aadd365aa312898ba01d0c3758.jpg",
    "https://i.pinimg.com/564x/03/c9/ac/03c9ace8aff295233c6c81e5dc13e130.jpg",
  ];
  List<String> buttonList2 = [
    "https://i.pinimg.com/564x/36/7d/e8/367de89fe331a36fa698c531c8610793.jpg",
    "https://i.pinimg.com/564x/db/ce/78/dbce78095c9aeb1cffe79edf0b95296b.jpg",
  ];
  List<String> buttonList3 = [

    "https://i.pinimg.com/564x/11/40/02/114002430b3b00f5fc4d7e8bf334ea06.jpg",
    "https://i.pinimg.com/564x/2d/e0/e2/2de0e25f24ee2f8866ef9a14fd84449b.jpg",
  ];

  List<String> MainList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    MainList = buttonList1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  color:  Color(0xff0F2940),
                  image: DecorationImage(
                    alignment: Alignment.topRight,
                    image: AssetImage("assets/line_back.png",),
                    fit:BoxFit.contain,

                  )
                ),
                ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                          onPressed: () {},
                          icon:  Image.asset("assets/menu.png"),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 40.0, bottom: 30.0),
                child: Text(
                  "Explore\nthe world",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: MainList.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return RotatedBox(
                        quarterTurns: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentButton = 2;
                                    MainList = buttonList3;
                                  });
                                },
                                child: Text("Stroll",
                                    style: TextStyle(
                                      color: currentButton == 2
                                          ? Colors.amber
                                          : Colors.black,
                                    )),
                              ),
                              const SizedBox(
                                width: 100.0,
                              ),
                                 GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      currentButton = 1;
                                      MainList = buttonList2;
                                    });
                                  },
                                  child: Text("Holets",
                                      style: TextStyle(
                                        color: currentButton == 1
                                            ? Colors.amber
                                            : Colors.black,
                                      )),
                                ),

                              const SizedBox(
                                width: 100.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentButton = 0;
                                    MainList = buttonList1;
                                  });
                                },
                                child: Text(
                                  "Packages",
                                  style: TextStyle(
                                    color: currentButton == 0
                                        ? Colors.amber
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(20.0),
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                              ),/*child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.network(
                                    MainList[index - 1],
                                    fit: BoxFit.cover,

                                  )),*/
                              /************************************/
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: GestureDetector(
                                  onTap: () {
                                    // Add yoogic here
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          // Replace this with the page you want to navigate to
                                          return SecondScreen();
                                        },
                                      ),
                                    );
                                  },
                                  child: Image.network(
                                    MainList[index - 1],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              /****************************************/
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Whistler",
                                style: TextStyle(fontSize: 26)),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 26.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.amber,
                                ),
                                Text("Mountain",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey))
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
