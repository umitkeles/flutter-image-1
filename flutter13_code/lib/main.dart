import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.orange),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Ders 13 ",
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB TIKLANDI");
        },
        child: Icon(
          Icons.access_alarm,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Text("Resim ve Buton Türleri",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.purple.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                            "https://sm.pcmag.com/pcmag_in/news/a/a-wallpape/a-wallpaper-can-crash-some-android-10-phones_hqyw.jpg"),
                        Text("Asset Image"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.purple.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          "https://c4.wallpaperflare.com/wallpaper/972/176/840/abstract-2560x1440-android-wallpaper-preview.jpg",
                        ),
                        Text("Network Image"),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.purple.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://pbs.twimg.com/profile_images/1282263880572571648/Fx8O6UP4.jpg"),
                          radius: 30,
                        ),
                        Text("Circle Image"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(4),
                    color: Colors.purple.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FadeInImage.assetNetwork(
                            placeholder: "assets/images/loading.gif",
                            image:
                                "https://sm.pcmag.com/pcmag_in/news/a/a-wallpape/a-wallpaper-can-crash-some-android-10-phones_hqyw.jpg"),
                        Text("FadeIn Image"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}
