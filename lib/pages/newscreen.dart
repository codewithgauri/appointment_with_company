import 'package:flutter/material.dart';
import 'package:flutter_auths/pages/detail_screen.dart';
import 'package:flutter_auths/pages/bookscreen.dart';



const companydata = [
  {
    'CompanyName': 'TCS',
    'tag': 'Experience certainty',


    'imgUrl': 'assets/b.png',
    'bgColor': Color(0xffFFF0EB),
  },
  {
    'CompanyName': 'Reliance',
    'tag': 'Growth is Life',


    'imgUrl': 'assets/b.png',
    'bgColor': Color(0xffEBF6FF),
  },
  {
    'CompanyName': 'Wipro',
    'tag': 'Applying Thought',


    'imgUrl':'assets/b.png',
    'bgColor': Color(0xffFFF3EB),
  },
  {
    'CompanyName': 'Wipro',
    'tag': 'Applying Thought',

    'imgUrl':'assets/a.png',
    'bgColor': Color(0xffFFF3EB),
  }
];

class newscreen extends StatefulWidget {
  @override
   _newscreenState createState() => _newscreenState();}

   class _newscreenState extends State{
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4E295B),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding( 
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'company',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      ListCard(companydata[0]),
                      ListCard(companydata[1]),
                      ListCard(companydata[2]),

                      //ListCard(companydata[3]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  final Member;
  ListCard(this.Member);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height /3- 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Member['bgColor'],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            right: -60,
            child: Image.asset(
              Member['imgUrl']
              ,
              width: MediaQuery.of(context).size.width * 0.60,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Member['CompanyName'],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  Member['tag'],
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                 
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                    '',
                      style: TextStyle(
                        color: Color(0xff4E295B),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed:()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(Member)));
                  },
                  color: Color(0xff4E295B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'View all Appointments',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
