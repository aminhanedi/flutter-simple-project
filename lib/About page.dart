import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("About me"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 40),
                child: CircleAvatar(
              foregroundImage: AssetImage('assets/king3.jpg'),
              radius: 55,
            )),
          ),
          SizedBox(height:60),

          Text("JAWEED",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          ),
          Text("SADIQI",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(40, 30, 40, 20),
            child: ListTile(
              leading: Icon(Icons.phone, color: Colors.blue,),
              title: Text("Phone Number"),
              subtitle: Text("0729034586"),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(40, 30, 40, 20),
            child: ListTile(
              leading: Icon(Icons.email_outlined, color: Colors.blue,),
              title: Text("E-Mail"),
              subtitle: Text("jaweedsadiqi21@gmail.com", ),
            ),
          ),
        ],
      ),
    );
  }
}
