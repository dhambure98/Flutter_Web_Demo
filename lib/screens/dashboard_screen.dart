import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  //setting the expansion funtion for the navigation rail
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //Let's Start by adding the navigation rail
          NavigationRail(
              extended: isExpanded,
              backgroundColor: const Color.fromARGB(255, 171, 236, 250),
              unselectedIconTheme:
                  const IconThemeData(color: Colors.white, opacity: 1),
              unselectedLabelTextStyle: const TextStyle(color: Colors.white),
              selectedIconTheme:
                  IconThemeData(color: Colors.deepPurple.shade400),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text("Home"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bar_chart),
                  label: Text("Reports"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person),
                  label: Text("Profile"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text("Settings"),
                ),
              ],
              selectedIndex: 0),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: SingleChildScrollView(
                child: Column(
              children: [
                //let's add the navigation menu for this project
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        icon: const Icon(Icons.menu),
                        ),
                      const CircleAvatar(backgroundImage: NetworkImage(
                        "https://api.uifaces.co/our-content/donated/xZ4wg2Xj.jpg"),
                      radius: 30,)
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  //Now let's start with the dashboard main reports
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Card(
                          child: Column(
                            children: [
                              Row(
                                children: [Icon(
                                  Icons.article, 
                                  size: 26.0,
                                  ),
                                  SizedBox(width: 15.0),
                                  Text("Articles", style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold,),)
                                  ],)],
                          ),
                      )
                      )
                    ],
                  )
                ],
              )
            ),
          )
          )
        ],
      ),
    );
  }
}
