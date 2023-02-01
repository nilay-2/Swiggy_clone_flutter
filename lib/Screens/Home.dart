import 'package:flutter/material.dart';
import 'package:swiggy_clone/Screens/AddLocation.dart';
import 'package:swiggy_clone/Screens/Hotel_list.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double cardFontSize = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 15),
        unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 15),
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/swiggy.png',
              height: 40,
              width: 40,
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
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 20),
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AddLocation()));
                                },
                                icon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.grey[800],
                                ),
                                label: Text(''),
                              )
                            ],
                          ),
                          Text(
                            'Kashish Park, LBS Marg, Lal bahadur shastri road',
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[750]),
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
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
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
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 40,
                    runSpacing: 12,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HotelList()));
                            },
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/food.PNG',
                                height: 85,
                                width: 100,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Food',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: cardFontSize,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/instamart.PNG',
                              height: 85,
                              width: 100,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Instamart',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: cardFontSize,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/dineout.PNG',
                              height: 85,
                              width: 100,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Dineout',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: cardFontSize,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/genie.PNG',
                              height: 85,
                              width: 100,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Genie',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: cardFontSize,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/meat-delivery.PNG',
                              height: 85,
                              width: 100,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Meat Delivery',
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: cardFontSize,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/offer-1.PNG',
                                width: 300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/offer-2.PNG',
                                width: 300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/offer-3.PNG',
                                width: 300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/images/offer-4.PNG',
                                width: 300,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 540,
                    width: double.infinity,
                    color: Color.fromRGBO(233, 233, 248, 1.0),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                'assets/images/brands.PNG',
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Text(
                                  'Fantastic eats and where to find them!',
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 2)),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                              child: Text(
                                'Cuisines from around the world',
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.all(35),
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('EXPLORE FOOD',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    Image.asset(
                                      'assets/icons/food-hot.png',
                                      color: Colors.deepOrange,
                                    )
                                  ],
                                ),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                              color: Color.fromRGBO(
                                                  233, 233, 248, 1.0),
                                            )))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: 400,
                      width: double.infinity,
                      color: Color.fromRGBO(233, 233, 248, 1.0),
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: Container(
                          child: ClipRRect(
                            child: Image.asset(
                              'assets/images/offer-5.PNG',
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      )),
                  Container(
                      height: 400,
                      width: double.infinity,
                      color: Color.fromRGBO(233, 233, 248, 1.0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Live',
                              style: TextStyle(
                                fontSize: 70,
                                color: Color.fromRGBO(70, 69, 69, 1.0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'it up!',
                              style: TextStyle(
                                fontSize: 70,
                                color: Color.fromRGBO(70, 69, 69, 1.0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Swiggy clone - crafted with ♥',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
