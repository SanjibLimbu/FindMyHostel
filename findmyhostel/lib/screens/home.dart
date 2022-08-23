import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: non_constant_identifier_names
  List hostel_details = [{"name":"Everest Boys Hostel", "room_type": "Double Bed", "price":"Rs 10500","image":'assets/images/hostel_1.jpg'},{"name":"Kailash Boys Hostel", "room_type": "Triple Bed", "price":"Rs 10000","image":'assets/images/hostel_kailash.jpg'}];
  // ignore: non_constant_identifier_names
  List new_details = [{"name":"Everest Girls Hostel", "room_type": "Double Bed", "price":"Rs 10000","image":"assets/images/hostel_2.jpg"},{"name":"Sangeet Boys Hostel", "room_type": "Triple Bed", "price":"Rs 10500","image":'assets/images/Hostel_Sangeet.png'}];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // backgroundColor: Color.fromARGB(255, 242, 239, 239),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 20,
                right: 20,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/location.png",
                        height: 20,
                        color: Colors.grey,
                      ),
                      const Text(
                        "Dillibazar, Kathmandu",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/images/notification.png",
                    height: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 215, 213, 213),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 215, 213, 213),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 215, 213, 213),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  hintText: "Explore Hostels",
                  hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                  contentPadding: const EdgeInsets.fromLTRB(
                    20.0,
                    15.0,
                    20.0,
                    15.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "Featured",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 304,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: hostel_details.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/detail_page");
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin:
                            const EdgeInsets.only(left: 20, bottom: 2, top: 2),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(
                                1,
                                1,
                              ), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                hostel_details[index]["image"],
                                height: 190,
                                width: 270,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15, bottom: 7),
                              child: SizedBox(
                                  width: 270,
                                  child: Text(
                                    hostel_details[index]["name"],
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.start,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Text(
                                hostel_details[index]["room_type"],
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(
                              width: 270,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    hostel_details[index]["price"].toString(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1, color: Colors.red),
                                    ),
                                    child: Image.asset(
                                      "assets/images/fav.png",
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "Recommended",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 104,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: new_details.length,
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/detail_page");
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(
                              left: 20, bottom: 2, top: 2),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(
                                    1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                 new_details[index]["image"],
                                  height: 80,
                                  width: 90,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                    new_details[index]["name"],
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(
                                      new_details[index]["room_type"],
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                      textAlign: TextAlign.start,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 247, 222, 1),
                                          size: 20,
                                        ),
                                        Text(
                                          "4.1",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 247, 222, 1)),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                         "RS 10000",
                                          style: TextStyle(
                                            color: Colors.orange,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })),
            const SizedBox(
              height: 15,
            )
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Business',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 5, 76, 208),
        onTap: _onItemTapped,
      ),
    );
  }
}
