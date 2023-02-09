import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:swiggy_clone/Screens/AddLocation.dart';
import 'package:swiggy_clone/Screens/Home.dart';

class HotelList extends StatefulWidget {
  const HotelList({Key? key}) : super(key: key);

  @override
  State<HotelList> createState() => _HotelListState();
}

class _HotelListState extends State<HotelList> {
  final ref = FirebaseDatabase.instance.ref('Restaurants');
  List<Map<String,dynamic>> hoteList = [
    {
      "address": "Thane West",
      // "coverImage": "https://firebasestorage.googleapis.com/v0/b/swiggy-clone-flutter.appspot.com/o/1.jpeg?alt=media&token=971278fd-9963-4e90-a681-a2f9dfe9f270",
      "coverImage": "1.jpeg",
      "deliveryTime": 26,
      "description": "Seafood, Indian, Maharashtra",
      "distance": 19,
      "id": 1,
      "name": "Mi Hi koli",
      "rating": 4.2,
      "ratingCount": "100+"
    },
    {
      "address": "Thane West",
      // "coverImage": "https://firebasestorage.googleapis.com/v0/b/swiggy-clone-flutter.appspot.com/o/2.jpeg?alt=media&token=77cf233e-6cb6-4036-adda-72bdce78c005",
      "coverImage": "2.jpeg",
      "deliveryTime": 28,
      "description": "Chinese, Fast Food",
      "distance": 30,
      "name": "Silly Chilly",
      "rating": 3.9,
      "ratingCount": "1k+"
    },
    {
      "address": "Mulund",
      // "coverImage": "https://firebasestorage.googleapis.com/v0/b/swiggy-clone-flutter.appspot.com/o/3.jpeg?alt=media&token=533612a7-6df6-4cca-a14b-725d4e7cc42d",
      "coverImage": "3.jpeg",
      "deliveryTime": 38,
      "description": "Burgers, Biryani",
      "distance": 1.6,
      "name": "KFC",
      "rating": 3.9,
      "ratingCount": "100+"
    },
    {
      "address": "Thane",
      // "coverImage": "https://firebasestorage.googleapis.com/v0/b/swiggy-clone-flutter.appspot.com/o/4.jpeg?alt=media&token=d6d4cde4-248e-4323-bc41-f79b630e1be1",
      "coverImage": "4.jpeg",
      "deliveryTime": "40",
      "description": "Chinese, Sushi, Asian",
      "name": "Fat Monk Chinese",
      "rating": 4.2,
      "ratingCount": "100+"
    }
  ];
  Widget HotelCardTemplate(hotel) {
    return Card(
      elevation: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                child: Container(
                  width: 150,
                  height: 150,
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 0.2, 0.7, 1],
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    // child: Image.asset(
                    //   'assets/images/${hotel['coverImage']}',
                    //   width: 150,
                    //   height: 150,
                    // ),
                    child: Image.network(
                      '${hotel['coverImage']}',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 105,
                child: Column(
                  children: [
                    const Text('50%  OFF',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text("UPTO",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.currency_rupee,
                          color: Colors.white,
                          size: 15,
                        ),
                        Text("100",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${hotel['name']}',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.stars_rounded,
                      color: Colors.green[700],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${hotel['rating']}  (${hotel['ratingCount']}) - ${hotel['deliveryTime']} mins',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 19),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '${hotel['description']}',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700]),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '${hotel['address']} - ${hotel['distance']} km',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 1,
                        width: 210,
                        decoration: BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.grey))),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.delivery_dining,
                            size: 28,
                            color: Colors.grey[600],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Free Delivery', style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                          ),)
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 130,
        flexibleSpace: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.send_rounded,
                              color: Colors.deepOrange,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              'Kashish Park',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 20),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AddLocation()));
                                },
                                icon: Icon(Icons.keyboard_arrow_down_outlined))
                          ],
                        )
                      ],
                    ),
                    CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30,
                      ),
                      backgroundColor: Colors.grey[850],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        width: 80,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.grey[800],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('|',
                                  style: TextStyle(
                                      fontSize: 28, color: Colors.grey)),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.mic_rounded,
                                  color: Colors.deepOrange, size: 30)
                            ]),
                      ),
                      isDense: true,
                      hintText: 'Search for restaurant, items and more',
                      hintStyle: TextStyle(
                        color: Colors.grey[800],
                      ),
                      filled: true,
                      fillColor: Color.fromRGBO(224, 224, 241, 1.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 15),
        unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 15),
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: Image.asset(
                'assets/icons/swiggy.png',
                height: 40,
                width: 40,
              ),
            ),
            label: 'Swiggy',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/food-hot.png',
              height: 40,
              width: 40,
            ),
            label: 'Food',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/shopping-basket.png',
              height: 40,
              width: 40,
            ),
            label: 'Instamart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/wine.png',
              height: 40,
              width: 40,
            ),
            label: 'dineout',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/clipboard.png',
              height: 40,
              width: 40,
            ),
            label: 'Genie',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Top rated near you',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  child: StreamBuilder(
                stream: ref.onValue,
                builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
                  if (!snapshot.hasData) {
                    // print(snapshot);
                    // return Text('Loading ....', style: TextStyle(fontSize: 18),);
                    return Container(
                      width: double.infinity,
                      height: 500,
                      alignment: Alignment.center,
                      child: Container(
                        width: 80,
                        height: 80,
                        child: const CircularProgressIndicator(
                          color: Colors.deepOrange,
                          strokeWidth: 8,
                        ),
                      ),
                    );
                  } else {
                    List<dynamic> list =
                        snapshot.data!.snapshot.value as dynamic;
                    list = list.where((element) => element != null).toList();
                    // print(list);
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.snapshot.children.length,
                      // itemCount: hoteList.length,
                      itemBuilder: (context, index) {
                        return HotelCardTemplate(list[index]);
                      },
                    );
                  }
                },
              )
                // child: ListView.builder(
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   itemCount: hoteList.length,
                //   itemBuilder: (context, index) {
                //     return HotelCardTemplate(hoteList[index]);
                //   },
                // ),
              )
              // https://firebasestorage.googleapis.com/v0/b/swiggy-clone-flutter.appspot.com/o/1.jpeg?alt=media&token=971278fd-9963-4e90-a681-a2f9dfe9f270
            ],
          ),
        ),
      ),
    );
  }
}

// TextButton(
// onPressed: () {
// Navigator.push(
// context, MaterialPageRoute(builder: (context) => Login()));
// },
// child: Padding(padding: EdgeInsets.all(10), child: Row(children: [Icon(Icons.settings, color: Colors.black,), SizedBox(width: 10), Text('Contacts', style: TextStyle(
// color: Colors.black
// ),)])),
// ),
