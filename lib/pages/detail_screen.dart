import 'package:flutter/material.dart';
import 'package:flutter_auths/pages/bookscreen.dart';

var MentortList = [
  {'title': 'S.K Joshi', 'desg': 'CEO', 'time': '1:00'},
  {'title': 'Mukesh Yadav', 'desg': 'Manager', 'time': '2:30'},
  {'title': 'Komal Joshi', 'desg': 'H.R', 'time': '4:00' },
  {'title': 'Gaurav pandey', 'desg':'Senior Developer', 'time': '5:00'},
];

class DetailScreen extends StatelessWidget {
  final Member;

 DetailScreen(this.Member);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height /1+ 20,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      'assets/a.jpg',
                      fit: BoxFit.fill,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.purple.withOpacity(0.1),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 30,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(1),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 70,
                        ),
                        Text(
                          'Appointments Available:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ServiceTile(MentortList[0]),
                        ServiceTile(MentortList[1]),
                        ServiceTile(MentortList[2]),
                        ServiceTile(MentortList[3]),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 8,
                         //   color: Color(0xff4E295B),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  )],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 120,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 3 - 20,
                        height: MediaQuery.of(context).size.height / 6 + 20,
                        decoration: BoxDecoration(
                          color: Member['bgColor'],
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Positioned(
                              top: 25,
                              right: 7,
                              child: Image.asset(
                                Member['imgUrl'],
                                scale: 1.6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            Member['CompanyName'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            'Available appointments',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.lightBlue,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              
                              SizedBox(width: 0),
                              Text(
                               ''
                                ,
                                style: TextStyle(
                                  color: Color(0xffFF8573),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: MediaQuery.of(context).size.height / 3 - 55,
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>bookscreen()));


                    /* Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => bookscreen(stylist)));*/},
                //    { Navigator.push(context, MaterialPageRoute(builder: (context)=>bookscreen(stylist)));
    // },
                  padding: EdgeInsets.all(10),
                  shape: CircleBorder(),
                  color: Colors.white,
                  //child: Icon(OMIcons.favoriteBorder),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceTile extends StatelessWidget {
  final Mentor;
  ServiceTile(this.Mentor);

  get stylist => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 40,
                child: Text(
                  Mentor['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '${Mentor['desg']} ',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Text('${Mentor['time']}\pm',
            
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          MaterialButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>bookscreen()));

            }


   // bookscreenState().createData

    ,
                        //    builder: (context) => (stylist)));
              // Dialogs.yesAbortDialog(context, 'oops', 'hello this is dialog');





            color: Color(0xfF007373),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Book',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
  }
