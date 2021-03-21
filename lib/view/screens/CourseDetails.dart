import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maslow/view/utils/Constant.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CourseDetails extends StatefulWidget {
  @override
  _CourseDetailsState createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.colorPrimary,
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  pinned: false,
                  elevation: 0,
                  //backgroundColor: Color(0xffFFDCD6),
                  expandedHeight: Constants.headerHeight,
                  automaticallyImplyLeading: false,
                  title: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.keyboard_backspace,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Image.asset(
                        "assets/images/bg2.png",
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                )
              ];
            },
            body: SingleChildScrollView(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: Constants.mainPadding),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25, bottom: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Interior Design",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xff121212)),
                              ),
                              Text(
                                "\$50",
                                style: TextStyle(
                                    fontSize: 30, color: Color(0xff191919)),
                              ),
                            ],
                          ),
                          Text(
                            "University Of Toronto",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff414141)),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(3, 5, 0, 0),
                                child: Text(
                                  "4.5",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffff7c65),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(3, 5, 0, 0),
                                child: Text(
                                  "64 Hours",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffff7c65),
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    CustomTile(
                      title: "Design Basic",
                      duration: "5:35 mins",
                      selected: true,
                    ),
                    CustomTile(
                      title: "What is interior design?",
                      duration: "8:30 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    CustomTile(
                      title: "Design practice",
                      duration: "3:48 mins",
                    ),
                    SizedBox(
                      height: 80,
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: ElevatedButton.icon(
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: Icon(Icons.add, size: 25),
                  label: Text(
                    "Enroll",
                    style: TextStyle(fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0)),
                    ),
                    primary: Color(0xfff56c6b),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  final bool selected;
  final String title;
  final String duration;

  const CustomTile({
    this.selected = false,
    this.title,
    this.duration,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            decoration:
                BoxDecoration(color: Color(0xFFF18C8E), shape: BoxShape.circle),
            child: CircularPercentIndicator(
              backgroundColor: Color(0xFFF18C8E),
              radius: 50.0,
              lineWidth: 5.0,
              animation: true,
              animationDuration: 1200,
              percent: 0.7,
              center: Icon(Icons.play_arrow, color: Colors.white),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.deepPurple,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xff000000),
            ),
          ),
          contentPadding: EdgeInsets.zero,
          subtitle: Text(
            duration,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff777777),
            ),
          ),
        ),
        Divider(
          indent: 80,
          height: 20,
          color: Color(0xffD9D9D9).withOpacity(0.69),
          thickness: 1.5,
        )
      ],
    );
  }
}
