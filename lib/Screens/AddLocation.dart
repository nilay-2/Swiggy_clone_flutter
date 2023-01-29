import 'package:flutter/material.dart';
import 'package:swiggy_clone/Screens/Home.dart';

class AddLocation extends StatefulWidget {
  const AddLocation({Key? key}) : super(key: key);

  @override
  State<AddLocation> createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 150,
        flexibleSpace: SafeArea(
          child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_rounded)),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => print('Tapped location icon'),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.deepOrange,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Kashish Park',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Flexible(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        'Kashish Park Compound Road, Dharmaveer Nagar, Thane, Maharashtra.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ))
                  ],
                ),
              )),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.00),
            child: Container(
              // 255,238,170
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(255, 255, 204, 0.5),
                  border: Border.all(color: Colors.yellow)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'A detailed address will help our Delivery Partner reach your doorstep easily.',
                  style: TextStyle(
                      color: Colors.yellow[900],
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
            ),
          ),
          Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid address';
                          }
                          return null;
                        },
                        cursorColor: Colors.deepOrange,
                        decoration: InputDecoration(
                            labelText: 'HOUSE / FLAT / BLOCK NO.',
                            floatingLabelStyle:
                                TextStyle(color: Colors.deepOrange),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepOrange, width: 3))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        cursorColor: Colors.deepOrange,
                        style: TextStyle(color: Colors.grey[800]),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid address';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: 'APARTMENT / ROAD / AREA',
                            floatingLabelStyle:
                                TextStyle(color: Colors.deepOrange),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepOrange, width: 3))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        cursorColor: Colors.deepOrange,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid address';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          focusColor: Colors.deepOrange,
                          labelText: 'DIRECTIONS TO REACH',
                          floatingLabelStyle:
                              TextStyle(color: Colors.deepOrange),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepOrange, width: 3)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 120,
                        child: TextField(
                          cursorColor: Colors.deepOrange,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      BorderSide(color: Colors.deepOrange)),
                              hintText: 'e.g. Ring the bell on the red gate'),
                          maxLines: 120,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text('SAVE AS'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Home',
                                      style: TextStyle(color: Colors.grey[800]),
                                    )
                                  ],
                                ),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.grey))))),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.work,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Work',
                                      style: TextStyle(color: Colors.grey[800]),
                                    )
                                  ],
                                ),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.grey))))),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.people,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Friends and Family',
                                      style: TextStyle(color: Colors.grey[800]),
                                    )
                                  ],
                                ),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.grey))))),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Other',
                                      style: TextStyle(color: Colors.grey[800]),
                                    )
                                  ],
                                ),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: BorderSide(
                                              color: Colors.grey))))),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'ENTER HOUSE / FLAT / BLOCK NO.',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.deepOrange))
                    ],
                  ))
            ],
          ))
        ],
      )),
    );
  }
}
