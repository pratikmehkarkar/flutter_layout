//Code written by Pratik Mehkarkar to work on basic concepts of layout in flutter
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  //The root of flutter application
  @override
  Widget build(BuildContext context)
  {
    Widget title = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text('Sath Blood Help',style: TextStyle(
                    fontWeight: FontWeight.bold,),
                  ),
                ),
                Text('Blood Donation will cost you nothing but it will save a life!',
                  style: TextStyle(
                    color: Colors.grey[500],),
                ),
              ],
            ),
          ),
          Icon(Icons.home,color: Colors.deepPurple[500],),
          Text('11'),
        ],
      ),
    );
    Color color = Theme.of(context).accentColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'Emergency Call'),
          _buildButtonColumn(color, Icons.local_hospital, 'Hospital Help'),
          _buildButtonColumn(color, Icons.person, 'Donor Profile'),
        ],
      ),
    );

    Widget textSelection = Container(

      padding: const EdgeInsets.all(32),
      child: Text(
        'By registering yourself as blood donor using Blood Donor Form in SATH App '
            'you can help a needy and save a precious life.'
            'Application is available on Google Play Store.'
            'To get more information visit my personal portfolio website www.pratikvsm.com',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Sath App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sath App'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/Sath.png',
              width: 600,
              height: 300,
              fit: BoxFit.cover,
            ),
            title,
            buttonSection,
            textSelection
          ],
        ),
      ),
    );
  }
  Column _buildButtonColumn(Color color,IconData icon,String label)
  {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,color: color,),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.deepPurple,
            ),
          ),
        )
      ],
    );
  }
}


