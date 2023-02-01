import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

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
          Padding(padding: const EdgeInsets.all(10),
          child: Text('${hotel['name']}', style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase'),
        centerTitle: true,
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
                      List<dynamic> list =
                          snapshot.data!.snapshot.value as dynamic;
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
