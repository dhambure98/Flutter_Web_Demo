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
                          child: Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [Icon(
                                    Icons.article, 
                                    size: 26.0,
                                    ),
                                    SizedBox(width: 15.0),
                                    Text("Articles", style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold,),)
                                    ],),
                                    SizedBox(height: 20.0,),
                                    Text("07 Articles", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                                    ],
                            ),
                          ),
                      )
                      ),

                      Flexible(
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [Icon(
                                    Icons.comment, 
                                    size: 26.0,
                                    color: Colors.red,
                                    ),
                                    SizedBox(width: 15.0),
                                    Text("Comments", style: TextStyle(color: Colors.red, fontSize: 26.0, fontWeight: FontWeight.bold,),)
                                    ],),
                                    SizedBox(height: 20.0,),
                                    Text("+30 Comments", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),)
                                    ],
                            ),
                          ),
                      )
                      ),

                      Flexible(
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [Icon(
                                    Icons.people, 
                                    size: 26.0,
                                    color: Colors.amber,
                                    ),
                                    SizedBox(width: 15.0),
                                    Text("Subscriptions", style: TextStyle(color: Colors.amber, fontSize: 26.0, fontWeight: FontWeight.bold,),)
                                    ],),
                                    SizedBox(height: 20.0,),
                                    Text("3.5M Subscriptions", style: TextStyle(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold),)
                                    ],
                            ),
                          ),
                      )
                      ),

                      Flexible(
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [Icon(
                                    Icons.mobile_friendly_outlined, 
                                    size: 26.0,
                                    color: Colors.green,
                                    ),
                                    SizedBox(width: 15.0),
                                    Text("Revenue", style: TextStyle(color: Colors.green, fontSize: 26.0, fontWeight: FontWeight.bold,),)
                                    ],),
                                    SizedBox(height: 20.0,),
                                    Text("Rs. 200,300.00 ", style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),)
                                    ],
                            ),
                          ),
                      )
                      )
                    ],
                  ),

                  //now let's set the article section 
                  const SizedBox(height: 30.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Column(children: [
                      Text("6 Articles", 
                      style: TextStyle(fontWeight: FontWeight.bold, 
                      fontSize: 20.0
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text(
                      "3 new Articles", 
                      style: TextStyle(
                        color: Colors.grey, 
                        fontSize: 18.0, 
                        fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Container(
                    width: 250.0,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Type Article Title",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.black26
                          ),
                          )
                        )
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),

                //Let's set the filter section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  TextButton.icon(
                    onPressed: (){}, 
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.deepPurple.shade400,
                    ), 
                    label: Text(
                      "2023, July 14, July 15, July 16",
                      style: TextStyle(
                        color: Colors.deepPurple.shade400),
                    ),
                    ),
                    Row(
                      children: [
                        DropdownButton(
                          hint: Text("Filter by"),
                          items: [
                            DropdownMenuItem(
                              value: "Date",
                              child: Text("Date"),
                            ),

                            DropdownMenuItem(
                              value: "Comments",
                              child: Text("Comments"),
                            ),

                            DropdownMenuItem(
                              value: "Views",
                              child: Text("Views"),
                            ),
                            
                            ], 
                          onChanged: (value) {}),
                          SizedBox(width: 20.0,),

                        DropdownButton(
                          hint: Text("Order by"),
                          items: [
                            DropdownMenuItem(
                              value: "Date",
                              child: Text("Date"),
                            ),

                            DropdownMenuItem(
                              value: "Comments",
                              child: Text("Comments"),
                            ),

                            DropdownMenuItem(
                              value: "Views",
                              child: Text("Views"),
                            ),
                            
                            ], 
                          onChanged: (value) {}),

                        ],
                      ),
                ],
                ),
                SizedBox(
                  height: 40.0,
                ),

                //Now let's add the Table
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DataTable(
                      headingRowColor: MaterialStateProperty.resolveWith((states) => Colors.grey.shade200),
                      columns: [
                      DataColumn(label: Text("ID")),
                      DataColumn(label: Text("Article Title")),
                      DataColumn(label: Text("Creation Data")),
                      DataColumn(label: Text("Views")),
                      DataColumn(label: Text("Comments")),
                    
                    ], rows: [
                      DataRow(cells: [
                        DataCell(Text("0")),
                        DataCell(
                          Text("How to build a flutter web app")),
                        DataCell(Text("$DateTime.now()}")),
                        DataCell(Text("2.3K Views")),
                        DataCell(Text("102Comments"))
                        ])
                    ])
                  ],
                )
                ],
              ),
            ),
          ),
          ),
        ],
      ),
      //let's add the floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple.shade400,
      ),
    );
  }
}
