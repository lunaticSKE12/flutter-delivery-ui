import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final List<Map<String, dynamic>> foods = [
    {
      "title": "8-Piece Pink Donut",
      "price": 380,
      "imageUrl":
          "https://www.wilton.com/dw/image/v2/AAWA_PRD/on/demandware.static/-/Sites-wilton-project-master/default/dw14412d54/images/project/WLPROJ-9442/WLPROJ-9442_2.jpg?sw=800&sh=800"
    },
    {
      "title": "Beef Cheese Burger",
      "price": 240,
      "imageUrl":
          "https://537924-1719237-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2021/02/Classic-homemade-hamburger.jpg"
    },
    {
      "title": "Korean Fried Chicken",
      "price": 350,
      "imageUrl":
          "https://cdn.vox-cdn.com/thumbor/Ue0s9B5eZAWYsO99fiqwXjeBHpo=/0x0:890x561/1200x800/filters:focal(374x210:516x352)/cdn.vox-cdn.com/uploads/chorus_image/image/69524313/Screen_Shot_2021_06_30_at_7.51.51_AM.0.png"
    },
    {
      "title": "Spaghetti with Meatball",
      "price": 280,
      "imageUrl": "https://images8.alphacoders.com/826/826205.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              child: Text(
                'Find Delicious \nFood around you',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                    color: Colors.grey.shade800),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Search Food',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            ListView.builder(
              shrinkWrap: true,
              // physics: ScrollPhysics(),
              itemCount: foods.length,
              itemBuilder: (ctx, index) {
                return Container(
                  height: 140,
                  margin: EdgeInsets.only(bottom: 14),
                  child: Row(children: [
                    Container(
                      height: 140,
                      width: 140,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.network(
                          foods[index]['imageUrl'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ]),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
