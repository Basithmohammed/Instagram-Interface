import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List<Map<String, dynamic>> storie = [
    {
      "image": "assets/images/menicon.png",
      "name":"Tinto"
    },
    {
      "image": "assets/images/w.webp",
      "name":"Suthe"
    },
    {
      "image": "assets/images/user2.png",
      "name":"Bazi"
    },
    {
      "image": "assets/images/user1.jpg",
      "name":"Jobi"
    },
    {
      "image": "assets/images/menicon.png",
      "name":"John"
    },
    {
      "image": "assets/images/w.webp",
      "name":"Bazi"
    },
    {
      "image": "assets/images/user1.jpg",
      "name":"Arun"
    },
    {
      "image": "assets/images/user2.png",
      "name":"James"
    },
    {
      "image": "assets/images/menicon.png",
      "name":"Sruthy"
    },
    {
      "image": "assets/images/user2.png",
      "name":"Gokul"
      
    },
    {
      "image": "assets/images/menicon.png",
      "name":"Jobi"
    },
    {
      "image": "assets/images/user1.jpg",
      "name":"Milan"
    },
  ];
  List<Map<String, dynamic>> feed = [
    {
      "Username": "Basith",
      "image": "assets/images/img1.jpg",
      "user": "assets/images/menicon.png",
      "location":"Taj Mahal"
    },
    {
      "Username": "Sudheesh",
      "image": "assets/images/img2.jpg",
      "user": "assets/images/w.webp",
      "location":"India Gate"
    },
    {
      "Username": "Jobin",
      "image": "assets/images/img3.jpg",
      "user": "assets/images/menicon.png",
      "location":"Roma"
    },
    {
      "Username": "Tinto",
      "image": "assets/images/img5.jpg",
      "user": "assets/images/w.webp",
      "location":"Shershah shuri tomb"
    },
    {
      "Username": "Bazii",
      "image": "assets/images/img4.jpg",
      "user": "assets/images/menicon.png",
      "location":"Kalanjiyam"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: [
          IconButton(
            iconSize: 26,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.add,
            ),
          ),
          IconButton(
            iconSize: 26,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.message,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // for story
            Container(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storie.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(storie[index]["image"]),
                      ),
                      const SizedBox(
                          height: 3,
                        ),
                      Text(
                        style: TextStyle(color: Colors.white),
                        storie[index]["name"],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //for body
            Expanded(
              child: ListView.builder(
                itemCount: feed.length,
                itemBuilder: (context, index) => Card(
                  shadowColor: Colors.green[500],
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 10,
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(feed[index]["user"]),
                          ),
                          title: Text(feed[index]["Username"]),
                          subtitle: Text(
                            style: TextStyle(color: Colors.black,fontSize: 12),
                            
                            feed[index]["location"],
                            ),
                          trailing: Icon(Icons.favorite),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Image(
                          fit: BoxFit.cover,
                          height: 250,
                          width: 600,
                          image: AssetImage(feed[index]["image"]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              label: const Text(
                                "Like",
                              ),
                              icon: const Icon(
                                Icons.favorite_border,
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              label: const Text(
                                "Comment",
                              ),
                              icon: const Icon(
                                Icons.comment,
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              label: const Text(
                                "Share",
                              ),
                              icon: const Icon(
                                Icons.share,
                              ),
                            ),
                            
                          ],
                          
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// 















