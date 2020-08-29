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
      backgroundColor: Colors.white24,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 80,
                backgroundImage: AssetImage('assets/images/alfadl.png'),
              ),
            ),
            SizedBox(height: 20,),
            Text("G.S.ALFADL",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20,width: 200,),
            Divider(color: Colors.pink,),
            Text("NOVEAU CONCEPT D'EDUCATION",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),),
            SizedBox(height: 20,),
            
            Card(
              margin: EdgeInsets.symmetric(horizontal: 8) ,
              child: ListTile(
                leading: Icon(Icons.phone,
                color: Colors.pink,
                ),
                title: Text("+212 5393-62575 primaire",

                ),

              ),

            ),
            SizedBox(height: 20,),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 8) ,
              child: ListTile(
                leading: Icon(Icons.email,
                  color: Colors.pink,
                ),
                title: Text("groupescolairealfadl@gmail.com",
                ),

              ),

            )
          ],
        ),
      ),
    );
  }
}
