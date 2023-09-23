import 'package:flutter/material.dart';
import 'package:foodui/widgets/listTile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        body: Column(children: [
          Container(
            padding: EdgeInsets.only(right: 20, left: 20, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                color: Color.fromARGB(255, 234, 234, 234),
                                offset: Offset(1, 2),
                              )
                            ]),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 15,
                        ),
                      ),
                    ),
                    Text(
                      "My Profile",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.amber[600],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/user1.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sufiyan Razaq",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Sufiyan@gmail.com",
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          "User ID: 123456",
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                TabBar(
                  indicatorColor: Colors.amber,
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  tabs: [
                    Tab(
                      text: "Account",
                    ),
                    Tab(
                      text: "Payment",
                    ),
                    Tab(
                      text: "History",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(
                  child: Text("Account details"),
                ),
                Scaffold(
                  body: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Cards",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 150,
                                width: 220,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 10,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/card.png"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amber,
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(0, 3),
                                      )
                                    ]),
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Add new Cards",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          listTile(
                            'assets/images/google.png',
                            "Google Pay",
                            Icon(
                              Icons.radio_button_checked,
                              color: Colors.amber[400],
                            ),
                            FontWeight.w600,
                          ),
                          listTile(
                            'assets/images/mc.png',
                            "Credit Card",
                            Icon(
                              Icons.radio_button_checked,
                              color: Colors.amber[400],
                            ),
                            FontWeight.w600,
                          ),
                          listTile(
                            'assets/images/apple.png',
                            "Apple Pay",
                            Icon(
                              Icons.radio_button_checked,
                              color: Colors.amber[400],
                            ),
                            FontWeight.w600,
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: 300,
                              height: 50,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.amber,
                                  textStyle: TextStyle(color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text("History Details"),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
