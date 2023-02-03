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

  Widget HotelCardTemplate(hotel) {
    return Card(
      elevation: 0,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              '${hotel['name']}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
        child: Column(
          children: [
            Container(
                child: StreamBuilder(
              stream: ref.onValue,
              builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
                if (!snapshot.hasData) {
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
                  List<dynamic> list = snapshot.data!.snapshot.value as dynamic;
                  list = list.where((element) => element != null).toList();
                  print(list);
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: snapshot.data!.snapshot.children.length,
                    itemBuilder: (context, index) {
                      return HotelCardTemplate(list[index]);
                    },
                  );
                }
              },
            ))
          ],
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
