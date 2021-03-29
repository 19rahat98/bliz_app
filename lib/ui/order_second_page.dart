import 'package:bliz/logic_block/blocs/bloc.dart';
import 'package:bliz/logic_block/models/application_model.dart';
import 'package:bliz/ui/gruz.dart';
import 'package:bliz/ui/my_offer.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderSecond extends StatelessWidget {
  List<Application> _customerOrdersList = [];
  List<Application> _applicationOrdersList = [];

  Widget _gruzList(BuildContext context,
      List<Application> listApplicationItems) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    if (listApplicationItems != null) {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: listApplicationItems.length,
        itemBuilder: (_, int index) =>
            InkWell(
              onTap: () {
                print(listApplicationItems[index].details.first.id);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MyOffer(
                          infoAboutOrder: listApplicationItems[index],
                        ),
                  ),
                );
              },
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 1),
                padding: EdgeInsets.only(top: 10.0, right: 15.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: w * 0.65,
                          margin: EdgeInsets.only(left: 5, top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: BoxDecoration(
                                      color: listApplicationItems[index]
                                          .status == "Ожидает"
                                          ? Color(0xffFFF389)
                                          : listApplicationItems[index]
                                          .status == "Отказ"
                                          ? Color(0xffDFE2E5)
                                          : listApplicationItems[index]
                                          .status == "Принято" ? Color(
                                          0xffD9EEFF) : Color(0xffDFE2E5),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Row(
                                          // textBaseline: TextBaseline.alphabetic,
                                          // mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            //TODO n
                                            Text(
                                              listApplicationItems[index]
                                                  .details
                                                  .first
                                                  .info
                                                  .first
                                                  .fromString !=
                                                  null
                                                  ? listApplicationItems[index]
                                                  .details
                                                  .first
                                                  .info
                                                  .first
                                                  .fromString
                                                  : 'Нур-Султан',
                                              style: TextStyle(
                                                  color: Color(0xff20273D),
                                                  fontSize: 17.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              size: 17.0,
                                              color: Color(0xff20273D),
                                            ),
                                            //TODO n
                                            Text(
                                              listApplicationItems[index]
                                                  .details
                                                  .first
                                                  .info
                                                  .first
                                                  .toCityString !=
                                                  null
                                                  ? listApplicationItems[index]
                                                  .details
                                                  .first
                                                  .info
                                                  .first
                                                  .toCityString
                                                  : 'Алматы',
                                              style: TextStyle(
                                                  color: Color(0xff20273D),
                                                  fontSize: 17.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, left: 20),
                                child: Wrap(
                                  clipBehavior: Clip.hardEdge,
                                  direction: Axis.vertical,
                                  spacing: 5.0,
                                  children: [
                                    Text(listApplicationItems[index]
                                        .details
                                        .first
                                        .info
                                        .first
                                        .net !=
                                        null &&
                                        listApplicationItems[index]
                                            .details
                                            .first
                                            .info
                                            .first
                                            .volume !=
                                            null &&
                                        listApplicationItems[index]
                                            .details
                                            .first
                                            .info
                                            .first
                                            .typeTransport !=
                                            null
                                        ? "${listApplicationItems[index].details
                                        .first.info.first
                                        .net} тн, ${listApplicationItems[index]
                                        .details.first.info.first
                                        .volume} м³, ${listApplicationItems[index]
                                        .details.first.info.first
                                        .typeTransport}"
                                        : '115 тн, 260 м³, Авто Тент'),
                                    Text(listApplicationItems[index]
                                        .details
                                        .first
                                        .info
                                        .first
                                        .startDate != null &&
                                        listApplicationItems[index]
                                            .details
                                            .first
                                            .info
                                            .first
                                            .title != null
                                        ? "${listApplicationItems[index].details
                                        .first.info.first
                                        .startDate}, ${listApplicationItems[index]
                                        .details.first.info.first.title}"
                                        : '14 июн, Овощи и фрукты'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: w * 0.25,
                              height: 70,
                              decoration: BoxDecoration(
                                border:
                                Border.all(width: 1, color: Color(0xffDFE2E6)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 25,
                                    width: w * 0.25,
                                    decoration: BoxDecoration(
                                      color: listApplicationItems[index]
                                          .status == "Ожидает"
                                          ? Color(0xffFFF389)
                                          : listApplicationItems[index]
                                          .status == "Отказ"
                                          ? Color(0xffDFE2E5)
                                          : listApplicationItems[index]
                                          .status == "Принято" ? Color(
                                          0xffD9EEFF) : Color(0xffDFE2E5),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(5),
                                          topLeft: Radius.circular(5)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        listApplicationItems[index].status !=
                                            null
                                            ? listApplicationItems[index]
                                            .status
                                            .toUpperCase()
                                            : 'ОЖИДАЕТ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff20273D).withOpacity(
                                              0.6),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      'ВАША ЦЕНА:',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color:
                                          Color(0xff20273D).withOpacity(0.6)),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      listApplicationItems[index].price.price !=
                                          null
                                          ? listApplicationItems[index]
                                          .price.price.toString() + '₸*'
                                          : '200 000 ₸',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff20273D)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 25),
                          child: Text(
                            listApplicationItems[index].user.first.fullName !=
                                null ? listApplicationItems[index].user.first
                                .fullName : 'ТОО «ОУСА Альянс»',
                            style: TextStyle(
                                color: Colors.grey, fontSize: 12.0),
                          ),
                        ),
                        Container(
                          child: Text(
                            listApplicationItems[index].details.first
                                .updatedAt != null ? listApplicationItems[index]
                                .details.first.updatedAt : 'вчера 15:30',
                            style:
                            TextStyle(fontSize: 12, color: Color(0xffA2A9B2)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<InProgressApplicationBloc>(context).add(GetInProgressApplicationList());
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return BlocBuilder<InProgressApplicationBloc, InProgressApplicationState>(
      builder: (context, snapshot) {
        if (snapshot is InitialInProgressApplicationListState ||
            snapshot is InProgressApplicationListLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot is InProgressApplicationListSuccess) {
          _customerOrdersList = snapshot.customerOrdersInHoldList;
          _applicationOrdersList = snapshot.applicationInHoldList;
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_customerOrdersList.isEmpty)
                  Container(
                    width: w,
                    height: 30,
                  ),
                if (_customerOrdersList.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20.0, left: 16, bottom: 8),
                        child: Text(
                          'Я ИСПОЛНИТЕЛЬ (${_customerOrdersList.length})'
                              .toUpperCase(),
                          style: TextStyle(
                              color: Color(0xff20273D).withOpacity(0.6),
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      _gruzList(context, snapshot.customerOrdersInHoldList),
                      Container(
                        margin: EdgeInsets.only(top: 1),
                        color: Colors.white,
                        padding: EdgeInsets.only(top: 10.0, right: 15.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: w * 0.65,
                                  margin: EdgeInsets.only(left: 5, top: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 10.0,
                                            width: 10.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xffDFE2E5),
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  // textBaseline: TextBaseline.alphabetic,
                                                  // mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    //TODO n
                                                    Text(
                                                      'Нур-Султан',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff20273D),
                                                          fontSize: 17.0,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Icon(
                                                      Icons.arrow_forward,
                                                      size: 17.0,
                                                      color: Color(0xff20273D),
                                                    ),
                                                    //TODO n
                                                    Text(
                                                      'Алматы',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff20273D),
                                                          fontSize: 17.0,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 10, left: 20),
                                        child: Wrap(
                                            clipBehavior: Clip.hardEdge,
                                            direction: Axis.vertical,
                                            spacing: 5.0,
                                            children: [
                                              Text('115 тн, 260 м³, Авто Тент'),
                                              Text('14 июн, Овощи и фрукты'),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: w * 0.25,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xffDFE2E6)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 25,
                                            width: w * 0.25,
                                            decoration: BoxDecoration(
                                              color: Color(0xffDFE2E5),
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(5),
                                                  topLeft: Radius.circular(5)),
                                            ),
                                            child: Center(
                                                child: Text(
                                              'ОЖИДАЕТ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff20273D)
                                                      .withOpacity(0.6)),
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 3),
                                            child: Text(
                                              'ВАША ЦЕНА:',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff20273D)
                                                      .withOpacity(0.6)),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5),
                                            child: Text(
                                              '200 000 ₸',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff20273D)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10, left: 25),
                                  child: Text(
                                    'ТОО «ОУСА Альянс»',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12.0),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'вчера 15:30',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffA2A9B2)),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              child: Bubble(
                                radius: Radius.circular(20),
                                color: Color(0xffDFE2E6),
                                padding: const BubbleEdges.symmetric(
                                    vertical: 10, horizontal: 15),
                                margin: BubbleEdges.only(top: 15),
                                alignment: Alignment.centerLeft,
                                nip: BubbleNip.rightTop,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '''Причина отказа:''',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color(0xff20273D).withOpacity(0.3),
                                          fontSize: 12),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      '''Клиент выбрал другое предложение''',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color(0xff20273D).withOpacity(0.8),
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1),
                        color: Colors.white,
                        padding: EdgeInsets.only(top: 10.0, right: 15.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: w * 0.65,
                                  margin: EdgeInsets.only(left: 5, top: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 10.0,
                                            width: 10.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xffDFE2E5),
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  // textBaseline: TextBaseline.alphabetic,
                                                  // mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    //TODO n
                                                    Text(
                                                      'Нур-Султан',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff20273D),
                                                          fontSize: 17.0,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Icon(
                                                      Icons.arrow_forward,
                                                      size: 17.0,
                                                      color: Color(0xff20273D),
                                                    ),
                                                    //TODO n
                                                    Text(
                                                      'Алматы',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff20273D),
                                                          fontSize: 17.0,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 10, left: 20),
                                        child: Wrap(
                                            clipBehavior: Clip.hardEdge,
                                            direction: Axis.vertical,
                                            spacing: 5.0,
                                            children: [
                                              Text('115 тн, 260 м³, Авто Тент'),
                                              Text('14 июн, Овощи и фрукты'),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: w * 0.25,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Color(0xffDFE2E6)),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 25,
                                            width: w * 0.25,
                                            decoration: BoxDecoration(
                                              color: Color(0xffDFE2E5),
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(5),
                                                  topLeft: Radius.circular(5)),
                                            ),
                                            child: Center(
                                                child: Text(
                                              'ОЖИДАЕТ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff20273D)
                                                      .withOpacity(0.6)),
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 3),
                                            child: Text(
                                              'ВАША ЦЕНА:',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff20273D)
                                                      .withOpacity(0.6)),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5),
                                            child: Text(
                                              '200 000 ₸',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff20273D)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10, left: 25),
                                  child: Text(
                                    'ТОО «ОУСА Альянс»',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12.0),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'вчера 15:30',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffA2A9B2)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                if (_applicationOrdersList.isEmpty)
                  Container(
                    width: w,
                    height: 30,
                  ),
                if (_applicationOrdersList.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20.0, left: 16, bottom: 8),
                        child: Text(
                          'Я заказчик (${_applicationOrdersList.length})'
                              .toUpperCase(),
                          style: TextStyle(
                              color: Color(0xff20273D).withOpacity(0.6),
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      _gruzList(context, snapshot.applicationInHoldList),
                      Container(
                        color: Colors.white,
                        //TODO n
                        padding: EdgeInsets.only(top: 10.0, right: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 8.0, right: 5.0, left: 5.0),
                              height: 10.0,
                              width: 10.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        // textBaseline: TextBaseline.alphabetic,
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          //TODO n
                                          Text(
                                            'Нур-Султан',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            size: 17.0,
                                            color: Colors.blue,
                                          ),
                                          //TODO n
                                          Text(
                                            'Алматы',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          color:
                                              Color(0xff008EFF).withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(2.0),
                                        ),
                                        child: Text(
                                          'ЖДЕТ ПОГРУЗКИ'.toUpperCase(),
                                          style: TextStyle(
                                              color: Color(0xff008EFF),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      //TODO n
                                      Text(
                                        'Водитель: А. Аскаров',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            '165 000 т',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text('без НДС',
                                              style:
                                                  TextStyle(color: Colors.grey))
                                        ],
                                      )
                                    ],
                                  ),
                                  //TODO n
                                  Wrap(
                                      direction: Axis.vertical,
                                      spacing: 5.0,
                                      children: [
                                        Text('115 тн, 260 м³, Авто Тент'),
                                        Text('14 июн, Хим. продукты, безопасные'),
                                        Text(
                                          'ТОО «ОУСА Альянс»',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12.0),
                                        ),
                                      ]),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  //TODO n
                                  Container(
                                    width: 350.0,
                                    height: 40.0,
                                    child: OutlineButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Указать адрес погрузки',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                      color: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      borderSide: BorderSide(color: Colors.blue),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 25.0),
                                    ),
                                  ),

                                  Divider(
                                    thickness: 1.5,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          );

          if (_customerOrdersList.isEmpty) {
            return Container(
              width: w,
              height: 30,
            );
          }
          if(_customerOrdersList.isNotEmpty){
            return SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 16, bottom: 8),
                    child: Text(
                      'Я ИСПОЛНИТЕЛЬ (${_customerOrdersList.length})'.toUpperCase(),
                      style: TextStyle(
                          color: Color(0xff20273D).withOpacity(0.6),
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  _gruzList(context, snapshot.customerOrdersInHoldList),
                  Container(
                    margin: EdgeInsets.only(top: 1),
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10.0, right: 15.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: w * 0.65,
                              margin: EdgeInsets.only(left: 5, top: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 10.0,
                                        width: 10.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xffDFE2E5),
                                          borderRadius: BorderRadius.circular(50.0),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              // textBaseline: TextBaseline.alphabetic,
                                              // mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                //TODO n
                                                Text(
                                                  'Нур-Султан',
                                                  style: TextStyle(
                                                      color: Color(0xff20273D),
                                                      fontSize: 17.0,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  size: 17.0,
                                                  color: Color(0xff20273D),
                                                ),
                                                //TODO n
                                                Text(
                                                  'Алматы',
                                                  style: TextStyle(
                                                      color: Color(0xff20273D),
                                                      fontSize: 17.0,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 20),
                                    child: Wrap(
                                        clipBehavior: Clip.hardEdge,
                                        direction: Axis.vertical,
                                        spacing: 5.0,
                                        children: [
                                          Text('115 тн, 260 м³, Авто Тент'),
                                          Text('14 июн, Овощи и фрукты'),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  width: w * 0.25,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    border:
                                    Border.all(width: 1, color: Color(0xffDFE2E6)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 25,
                                        width: w * 0.25,
                                        decoration: BoxDecoration(
                                          color: Color(0xffDFE2E5),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(5),
                                              topLeft: Radius.circular(5)),
                                        ),
                                        child: Center(
                                            child: Text(
                                              'ОЖИДАЕТ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                  Color(0xff20273D).withOpacity(0.6)),
                                            )),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 3),
                                        child: Text(
                                          'ВАША ЦЕНА:',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color:
                                              Color(0xff20273D).withOpacity(0.6)),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '200 000 ₸',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff20273D)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 25),
                              child: Text(
                                'ТОО «ОУСА Альянс»',
                                style: TextStyle(color: Colors.grey, fontSize: 12.0),
                              ),
                            ),
                            Container(
                              child: Text(
                                'вчера 15:30',
                                style:
                                TextStyle(fontSize: 12, color: Color(0xffA2A9B2)),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Bubble(
                            radius: Radius.circular(20),
                            color: Color(0xffDFE2E6),
                            padding: const BubbleEdges.symmetric(
                                vertical: 10, horizontal: 15),
                            margin: BubbleEdges.only(top: 15),
                            alignment: Alignment.centerLeft,
                            nip: BubbleNip.rightTop,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '''Причина отказа:''',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xff20273D).withOpacity(0.3),
                                      fontSize: 12),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  '''Клиент выбрал другое предложение''',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xff20273D).withOpacity(0.8),
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1),
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10.0, right: 15.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: w * 0.65,
                              margin: EdgeInsets.only(left: 5, top: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 10.0,
                                        width: 10.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xffDFE2E5),
                                          borderRadius: BorderRadius.circular(50.0),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              // textBaseline: TextBaseline.alphabetic,
                                              // mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                //TODO n
                                                Text(
                                                  'Нур-Султан',
                                                  style: TextStyle(
                                                      color: Color(0xff20273D),
                                                      fontSize: 17.0,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  size: 17.0,
                                                  color: Color(0xff20273D),
                                                ),
                                                //TODO n
                                                Text(
                                                  'Алматы',
                                                  style: TextStyle(
                                                      color: Color(0xff20273D),
                                                      fontSize: 17.0,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 20),
                                    child: Wrap(
                                        clipBehavior: Clip.hardEdge,
                                        direction: Axis.vertical,
                                        spacing: 5.0,
                                        children: [
                                          Text('115 тн, 260 м³, Авто Тент'),
                                          Text('14 июн, Овощи и фрукты'),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  width: w * 0.25,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    border:
                                    Border.all(width: 1, color: Color(0xffDFE2E6)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 25,
                                        width: w * 0.25,
                                        decoration: BoxDecoration(
                                          color: Color(0xffDFE2E5),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(5),
                                              topLeft: Radius.circular(5)),
                                        ),
                                        child: Center(
                                            child: Text(
                                              'ОЖИДАЕТ',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                  Color(0xff20273D).withOpacity(0.6)),
                                            )),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 3),
                                        child: Text(
                                          'ВАША ЦЕНА:',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color:
                                              Color(0xff20273D).withOpacity(0.6)),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          '200 000 ₸',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff20273D)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 25),
                              child: Text(
                                'ТОО «ОУСА Альянс»',
                                style: TextStyle(color: Colors.grey, fontSize: 12.0),
                              ),
                            ),
                            Container(
                              child: Text(
                                'вчера 15:30',
                                style:
                                TextStyle(fontSize: 12, color: Color(0xffA2A9B2)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }

          if (_applicationOrdersList.isNotEmpty) {
            return Container(
              width: w,
              height: 30,
            );
          }
          if(_applicationOrdersList.isNotEmpty){
            return SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.0, left: 16, bottom: 8),
                    child: Text(
                      'Я заказчик (${_applicationOrdersList.length})'.toUpperCase(),
                      style: TextStyle(
                          color: Color(0xff20273D).withOpacity(0.6),
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  _gruzList(context, snapshot.applicationInHoldList),
                  Container(
                    color: Colors.white,
                    //TODO n
                    padding: EdgeInsets.only(top: 10.0, right: 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8.0, right: 5.0, left: 5.0),
                          height: 10.0,
                          width: 10.0,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    // textBaseline: TextBaseline.alphabetic,
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //TODO n
                                      Text(
                                        'Нур-Султан',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 17.0,
                                        color: Colors.blue,
                                      ),
                                      //TODO n
                                      Text(
                                        'Алматы',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xff008EFF).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(2.0),
                                    ),
                                    child: Text(
                                      'ЖДЕТ ПОГРУЗКИ'.toUpperCase(),
                                      style: TextStyle(
                                          color: Color(0xff008EFF),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //TODO n
                                  Text(
                                    'Водитель: А. Аскаров',
                                    style: TextStyle(
                                        fontSize: 14.0, fontWeight: FontWeight.w500),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '165 000 т',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text('без НДС',
                                          style: TextStyle(color: Colors.grey))
                                    ],
                                  )
                                ],
                              ),
                              //TODO n
                              Wrap(direction: Axis.vertical, spacing: 5.0, children: [
                                Text('115 тн, 260 м³, Авто Тент'),
                                Text('14 июн, Хим. продукты, безопасные'),
                                Text(
                                  'ТОО «ОУСА Альянс»',
                                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                                ),
                              ]),
                              SizedBox(
                                height: 5.0,
                              ),
                              //TODO n
                              Container(
                                width: 350.0,
                                height: 40.0,
                                child: OutlineButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Указать адрес погрузки',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  color: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  borderSide: BorderSide(color: Colors.blue),
                                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                                ),
                              ),

                              Divider(
                                thickness: 1.5,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          else {
            return Container();
          }
        }
        else {
          return Container(
            width: w,
            height: h,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
