import 'package:bliz/logic_block/blocs/bloc.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bliz/logic_block/models/application_model.dart';

class MyOffer extends StatelessWidget {
  final Application infoAboutOrder;

  const MyOffer({Key key, this.infoAboutOrder}) : super(key: key);

  Future<void> _showMessage(BuildContext context, String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'sign_up',
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  message,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'close',
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            )),
        title: Text(
          'Предложения мне',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 10.0, bottom: 10, right: 10.0),
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      color: infoAboutOrder.status == "Ожидает"
                          ? Color(0xffFFF389)
                          : infoAboutOrder.status == "Отказ"
                          ? Color(0xffDFE2E5)
                          : infoAboutOrder.status == "Принято"
                          ? Color(0xffD9EEFF)
                          : Color(0xffDFE2E5),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: Text(
                      infoAboutOrder.status !=null ? infoAboutOrder.status.toUpperCase() :'2 предложения'.toUpperCase(),
                      style: TextStyle(
                          color: Color(0xff20273D).withOpacity(0.6),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          infoAboutOrder.details.first.info.first.net != null &&
                          infoAboutOrder.details.first.info.first.volume != null &&
                          infoAboutOrder.details.first.info.first.title != null
                              ? "${infoAboutOrder.details.first.info.first.title} "
                              "${infoAboutOrder.details.first.info.first.net} тн / "
                              "${infoAboutOrder.details.first.info.first.volume} м³, "
                              : 'Фрукты, клубника 22 тн / 86 м³',
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.w600),
                        ),
                        Text(infoAboutOrder.details.first.info.first.toCityString != null &&
                            infoAboutOrder.details.first.info.first.startDate != null &&
                            infoAboutOrder.details.first.info.first.fromString != null
                            ? " ${infoAboutOrder.details.first.info.first.toCityString} - "
                            " ${infoAboutOrder.details.first.info.first.toCityString}, "
                            "${infoAboutOrder.details.first.info.first.startDate}"
                            : 'Нур-Султан - Алматы, 14 июня',
                            style: TextStyle(
                              fontSize: 15.0,
                            ))
                      ],
                    ),
                  ),
                  Row(
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
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          infoAboutOrder.details.first.info.first.fromString != null ? infoAboutOrder.details.first.info.first.fromString  :'Нур-Султан',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff20273D),
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 25,
                        child: VerticalDivider(
                          color: Color(0xff008EFF),
                          thickness: 2,
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Казахстан, Акмолинская область*',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xffA2A9B2),
                                  fontWeight: FontWeight.w400),
                            ),
                            //TODO n
                            Text(
                              infoAboutOrder.details.first.info.first.startDate != null ? infoAboutOrder.details.first.info.first.startDate  : '14 июня',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff20273D),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
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
                            'B',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          infoAboutOrder.details.first.info.first.toCityString != null ? infoAboutOrder.details.first.info.first.toCityString  : 'Алматы',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff20273D),
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 25,
                        child: VerticalDivider(
                          color: Colors.white,
                          thickness: 2,
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Казахстан, Алматинская область*',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xffA2A9B2),
                                  fontWeight: FontWeight.w400),
                            ),
                            //TODO n
                            Row(
                              children: [
                                Text(
                                  infoAboutOrder.details.first.info.first.distance != null ? "~" + infoAboutOrder.details.first.info.first.distance + ','  : '~620 км',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff008EFF)),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  infoAboutOrder.details.first.info.first.duration != null ? infoAboutOrder.details.first.info.first.duration + " в пути"  : '620 мин в пути',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffDFE2E6)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  OutlineButton(
                    onPressed: () {},
                    child: Text(
                      'Подробно о грузе',
                      style: TextStyle(color: Colors.blue),
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    borderSide: BorderSide(color: Colors.blue),
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                  ),
                  Divider(
                    thickness: 1.5,
                  )
                ],
              ),
            ),

            if(infoAboutOrder.status == "Ожидает")
              Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              width: 45,
                              height: 45,
                              child: Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: Colors.blue, width: 2)),
                                child: Center(
                                  child: Text(
                                    '₸',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
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
                                  Text(
                                    'Мое предложение:',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xffA2A9B2)),
                                  ),
                                  Text( infoAboutOrder.price.price != null ? '${infoAboutOrder.price.price} ₸*' :'200 000 ₸',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff20273D),
                                          fontWeight: FontWeight.w500,
                                      ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Color(0xffFFF389),
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          child: Text(
                            'ожидает'.toUpperCase(),
                            style: TextStyle(
                                color: Color(0xff20273D).withOpacity(0.6),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 10.0, bottom: 10.0, right: 85.0),
                    margin: EdgeInsets.only(top: 5.0, bottom: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xffFFF389),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: Text(
                      'Ваше предложение отправлено заказчику и находится на рассмотрении.',
                      style: TextStyle(
                          color: Color(0xff20273D).withOpacity(0.6),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  BlocBuilder<RequestCargoBloc, RequestCargoState>(
                    builder: (context, request) {
                      return BlocListener<RequestCargoBloc, RequestCargoState>(
                          listener: (context, state) {
                            if (state is InitialRequestCargoState) {
                               Center(
                                child: CircularProgressIndicator(),
                              );
                            } else if (state is RequestCargoLoadFail) {
                              _showMessage(
                                context,
                                state.message,
                              );
                            } else if (state is OrderCanceledSuccess) {
                              final snackBar = SnackBar(
                                content: Text(
                                  'OrderCanceledSuccess',
                                ),
                                action: SnackBarAction(
                                  label: 'ok',
                                  onPressed: () {
                                    //Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                              return Navigator.pop(context);
                            }
                          },
                          child:Container(
                            width: 250.0,
                            height: 40.0,
                            child: OutlineButton(
                              onPressed: () {
                                BlocProvider.of<RequestCargoBloc>(context).add(CancelOrder(orderId: infoAboutOrder.orderId));
                                BlocProvider.of<InProgressApplicationBloc>(context)
                                    .add(GetInProgressApplicationList());
                              },
                              child: Text(
                                'Отменить мое предложение',
                                style: TextStyle(color: Colors.black),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              borderSide: BorderSide(color: Colors.grey),
                              highlightedBorderColor: Colors.grey,
                            ),
                          ),
                      );
                    },
                  ),

                  SizedBox(height: 15.0,),
                  Divider(
                    thickness: 1.5,
                  )
                ],
              ),
            ),
            if(infoAboutOrder.status == "Отказ")
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                width: 45,
                                height: 45,
                                child: Container(
                                  width: 18,
                                  height: 18,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.blue, width: 2)),
                                  child: Center(
                                    child: Text(
                                      '₸',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
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
                                    Text(
                                      'Мое предложение:',
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xffA2A9B2)),
                                    ),
                                    Text('200 000 ₸',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff20273D),
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                            decoration: BoxDecoration(
                              color: Color(0xffDFE2E5),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: Text(
                              'отказ заказчика'.toUpperCase(),
                              style: TextStyle(
                                  color: Color(0xff3E455B),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Bubble(
                      radius: Radius.circular(20),
                      color: Color(0xffDFE2E6),
                      padding: const BubbleEdges.only(top: 5.0,bottom: 5.0, left: 15, right: 40.0),
                      margin: BubbleEdges.only(top: 10.0, right: 20),
                      alignment: Alignment.topRight,
                      nip: BubbleNip.rightTop,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '''Причина отказа:''',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Color(0xff20273D).withOpacity(0.3), fontSize: 12),
                          ),
                          SizedBox(height: 3),
                          Text(
                            '''Слишком дорого, давайте дешевле''',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Color(0xff20273D).withOpacity(0.8), fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15.0),
                      width: w*0.9,
                      height: 50.0,
                      child: OutlineButton(
                        onPressed: () {},
                        //TODO n
                        child: Text(
                          'Сделать новое предложение',
                          style: TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Theme.of(context).primaryColor),
                        highlightedBorderColor: Theme.of(context).primaryColor,
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                    )
                  ],
                ),
              ),
            if(infoAboutOrder.status == "Принято")
              Container(
                // color: Colors.red,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                width: 45,
                                height: 45,
                                child: Container(
                                  width: 18,
                                  height: 18,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.blue, width: 2)),
                                  child: Center(
                                    child: Text(
                                      '₸',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
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
                                    Text(
                                      'Мое предложение:',
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xffA2A9B2)),
                                    ),
                                    Text('200 000 ₸',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff20273D),
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: Text(
                              'принято'.toUpperCase(),
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: w*0.9,
                      padding: EdgeInsets.only(
                          left: 10.0, top: 10.0, bottom: 10.0, right: 85.0),
                      margin: EdgeInsets.only(top: 5.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: Text(
                        'Предложение принято заказчиком! Подтвердите заявку, чтобы взять  груз в работу.',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14.0,),
                      ),
                    ),
                    Container(
                      width: w*0.9,
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
                        child: Text('ПОДТВЕРДИТЬ ЗАЯВКУ'),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    //TODO n
                    Container(
                      width: w*0.9,
                      height: 50.0,
                      child: OutlineButton(
                        onPressed: () {},
                        //TODO n
                        child: Text(
                          'Отменить мое предложение',
                          style: TextStyle(color: Colors.black),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        borderSide: BorderSide(color: Colors.grey),
                        highlightedBorderColor: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Divider(
                      thickness: 1.5,
                    )
                  ],
                ),
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
                                infoAboutOrder.user.first.fullName != null ? infoAboutOrder.user.first.fullName : "ТОО «ОУСА Альянс»",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff20273D)),
                              ),
                            ),
                            Container(
                              child: Text(
                                infoAboutOrder.user.first.fullName != null ? infoAboutOrder.user.first.fullName : "Айсулу А.Л.",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff20273D)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                "Экспедитор*",
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
                                "+7 702 360 70 20*",
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
                            " aisulu@ousa-al.kz*",
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
          ],
        ),
      ),
    );
  }
}
