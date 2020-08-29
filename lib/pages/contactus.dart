import 'package:flutter/material.dart';
class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Nous',
        style: TextStyle(
            fontSize: 25
        ),
        ),
        centerTitle: true,

      ),
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/alfadl.png'),
            ),
            Text("G.S.ALFADL".toUpperCase()),
            Text("NOVEAU CONCEPT D'EDUCATION".toUpperCase()),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone,
                color: Colors.pink,
                ),
                title: Text("+212 5393-62575"),

              ),

            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.email,
                  color: Colors.pink,
                ),
                title: Text("groupescolairealfadl@gmail.com"),

              ),

            )
          ],
        ),
      ),
    );
  }
}
