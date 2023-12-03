import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Information extends StatelessWidget {
  Information({super.key, this.title, this.details, this.photo,this.link});

  final String? title;
  final String? details;
  final String? photo;
  final String? link;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(title!),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Image.asset("${photo}.jpg"),
                height: 300,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                child: Text(
                  details!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
                height: 300,
                width: 400,
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    launch(link!);
                  },
                  child: Text("More Details"))
            ],
          ),
        ),
      ),
    );
  }
}
