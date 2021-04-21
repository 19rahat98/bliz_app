import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xff008EFF),
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.red),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ольга, ТОО «Logistics»',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                Text(
                  'онлайн',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.white.withOpacity(0.5)),
                ),
              ],
            )
          ],
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Bubble(
                radius: Radius.circular(15),
                padding:
                    const BubbleEdges.symmetric(vertical: 10, horizontal: 15),
                margin: BubbleEdges.only(top: 15),
                alignment: Alignment.topLeft,
                color: Colors.white,
                child: Text(
                  '''Салем!''',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Color(0xff20273D)),
                ),
              ),
              Bubble(
                radius: Radius.circular(15),
                padding:
                    const BubbleEdges.symmetric(vertical: 10, horizontal: 15),
                margin: BubbleEdges.only(top: 15),
                alignment: Alignment.topLeft,
                nip: BubbleNip.leftBottom,
                color: Colors.white,
                child: Text(
                  '''Вы работаете в эти выходные?''',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Color(0xff20273D)),
                ),
              ),
              Bubble(
                radius: Radius.circular(15),
                margin: BubbleEdges.only(top: 15),
                padding:
                    const BubbleEdges.symmetric(vertical: 10, horizontal: 15),
                alignment: Alignment.topRight,
                nip: BubbleNip.rightBottom,
                color: Color(0xff0D85FE),
                child: Text(
                  '''Здравствуйте! Да, работаем! Можете позвонить нам после обеда? Было бы удобнее, если по телефону обсудим.''',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 5),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'отправлено',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[500],
                    ),
                  ))
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.5, color: Color(0xffDDDDDD))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 40,
                  height: 40,
                  child: Align(
                    child: SvgPicture.asset('assets/camera.svg'),
                  )),
              Container(
                width: MediaQuery.of(context).size.width * 0.70,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xffFAFAFA),
                  border: Border.all(width: 0.5, color: Color(0xffDDDDDD)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 10),
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Text(
                            'Ваше сообщение',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff20273D).withOpacity(0.3)),
                          )),
                      Container(
                        width: 26,
                        height: 26,
                        child: Align(
                          child: SvgPicture.asset('assets/micro.svg'),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
