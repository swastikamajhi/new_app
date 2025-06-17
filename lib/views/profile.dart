import 'package:flutter/material.dart';


class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyProfilePage')),

      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[400],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              CircleAvatar(radius: 60, child: Icon(Icons.person, size: 80)),

              Text(
                'Coding Lab',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              Text(
                'YouTuber & Blogger',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  //facebook logo...
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.lightBlue,
                    child: Image.asset(
                      "assests/facebook.png",
                      color: Colors.white,
                      width: 32,
                      height: 32,
                    ),
                  ),

                  //instagram logo
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.pinkAccent,
                    child: Image.asset(
                      "assest/instagram.png",
                      color: Colors.white,
                      width: 25,
                      height: 25,
                    ),
                  ),

                  // twitter logo...
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: Image.asset(
                      "assest/twittericon.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  // yt logo...
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red[300],
                    child: Image.asset(
                      "assest/tiktok.png",
                      fit: BoxFit.cover,
                      width: 32,
                      height: 32,
                    ),
                  ),
                ],
              ),
              //buttons here.....
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Text(
                      "Subscribe",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Text(
                      "Message",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),

              //like & share section here....
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //first child... of like & share section...
                  Row(
                    children: [
                      Icon(Icons.heart_broken_outlined),
                      Text("66.4k", style: TextStyle(fontSize: 14)),
                    ],
                  ),

                  SizedBox(height: 18, child: VerticalDivider(width: 20)),
                  Row(
                    children: [
                      Icon(Icons.message_outlined),
                      Text("22k", style: TextStyle(fontSize: 14)),
                    ],
                  ),

                  SizedBox(height: 18, child: VerticalDivider(width: 20)),
                  Row(
                    children: [
                      Icon(Icons.share_outlined),
                      Text("15.4k", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
