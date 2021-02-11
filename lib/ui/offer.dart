import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.white,
        )),
        title: Text(
          'Предложения мне',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff008EFF),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          child: Center(
                            child: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.blue,
                              size: 40.0,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff43CC8E),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff43CC8E),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff43CC8E),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff43CC8E),
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_half_outlined,
                                    color: Color(0xff43CC8E),
                                    size: 20,
                                  )
                                ],
                              ),
                              Text(
                                'ТОО «Ali Logistics»',
                                style: TextStyle(
                                    fontSize: 17.0, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.5,
                      indent: 50,
                      endIndent: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          child: Center(
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.blue, width: 2)),
                              child: Center(
                                child: Text(
                                  '₸',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Wrap(
                            direction: Axis.vertical,
                            spacing: 5.0,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('200 000 ₸',
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Color(0xff20273D),
                                      fontWeight: FontWeight.w500)),
                              Text(
                                'без НДС, наличными',
                                style:
                                TextStyle(fontSize: 14, color: Color(0xffA2A9B2)),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 320.0,
                      height: 50.0,
                      child: RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        onPressed: () {},
                        elevation: 0.0,
                        color: Colors.blue,
                        textColor: Colors.white,
                        //TODO n
                        child: Text('ПРИНЯТЬ ПРЕДЛОЖЕНИЕ'),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: 320.0,
                      height: 50.0,
                      child: OutlineButton(
                        onPressed: () {},
                        //TODO n
                        child: Text(
                          'Отказать с причиной',
                          style: TextStyle(color: Colors.black),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.grey),
                        highlightedBorderColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0 ,left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Контакты:'.toUpperCase(),
                      style: TextStyle(
                          color: Color(0xff20273D).withOpacity(0.6),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, left: 10),
                width: w,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Image.network(''),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "ТОО «ОУСА Альянс»",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff20273D)),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Айсулу А.Л.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff20273D)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  "Экспедитор",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffA2A9B2)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          child: Icon(
                            Icons.phone,
                            size: 20,
                            color: Color(0xffA2A9B2),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  "+7 702 360 70 20",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff20273D)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  "+7 702 360 70 20",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff20273D)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          child: Icon(
                            Icons.mail_outline,
                            size: 20,
                            color: Color(0xffA2A9B2),
                          ),
                        ),
                        Container(
                          height: 35,
                          margin: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Text(
                              " aisulu@ousa-al.kz",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: w * 0.45,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xff008EFF),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Center(
                              child: Text(
                                'НАПИСАТЬ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: w * 0.45,
                            margin: EdgeInsets.only(right: 10),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xff04CC71),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Center(
                              child: Text(
                                'ПОЗВОНИТЬ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),

    );
  }
}
