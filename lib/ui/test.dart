import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff008EFF)),
                child: Center(
                  child: Text(
                    'A',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
              Container(
                height: 65,
                child: VerticalDivider(
                  color: Color(0xff008EFF),
                  thickness: 2,
                  width: 20,
                  indent: 5,
                  endIndent: 5,
                ),
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff008EFF)),
                child: Center(
                  child: Text(
                    'B',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                direction: Axis.vertical,
                spacing: 5.0,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Text(
                    'Казахстан, Акмолинская область',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xffA2A9B2),
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  //TODO n
                  Text(
                    '14 июня',
                    style: TextStyle(
                      fontSize: 15.0, fontWeight: FontWeight.w400, color: Color(0xff20273D),),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Wrap(
                direction: Axis.vertical,
                spacing: 5.0,
                children: [
                  Text(
                    'Алматы',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff20273D),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Казахстан, Алматинская область',
                    style: TextStyle(
                        fontSize: 14.0, color: Color(0xffA2A9B2)),
                  ),
                  //TODO n
                  Text(
                    '~620 км',
                    style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.w500, color: Color(0xff008EFF)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
