import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String btnName = "Start!";
  String btnName2 = "Next";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Yourshop App")),
          leading: const Icon(Icons.list),
          backgroundColor: Colors.orange,
        ),
        body: Center(
            child: currentIndex == 0
                ? Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.orange,
                              ),
                              onPressed: () {
                                setState(() {
                                  btnName = "Been Clicked";
                                });
                              },
                              child: Text(btnName),
                            ),
                            const SizedBox(
                              height: 20,
                              width: 20,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                setState(() {
                                  btnName2 = "heelo";
                                });
                              },
                              child: Text(btnName2),
                            ),
                          ]),
                    ))
                : currentIndex == 1
                    ? Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.lightBlue,
                        child: Image.asset('assets/images/sam.jpg'),
                      )
                    : Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Color.fromARGB(255, 251, 226, 2),
                        child: Image.asset('assets/images/papa.jpg'),
                      )),
        //backgroundColor: Colors.grey,

        bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
              BottomNavigationBarItem(
                label: "Settings",
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
              BottomNavigationBarItem(
                label: "Notifications",
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            }),
      ),
    );
  }
}
