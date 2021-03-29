import 'package:bliz/logic_block/blocs/bloc.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:bliz/ui/gruz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';

class FavoritesList extends StatefulWidget {
  @override
  _FavoritesListState createState() => _FavoritesListState();
}

class _FavoritesListState extends State<FavoritesList> {
  List<bool> _selections = List.generate(3, (_) => false);

  @override
  void initState() {
    BlocProvider.of<WishListBloc>(context).add(OnLoadWishList());
    // TODO: implement initState
    super.initState();
  }


  Widget _gruzList(List<Data> listCategoryItems) {
    double w = MediaQuery.of(context).size.width;
    if (listCategoryItems != null) {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: listCategoryItems.length,
        itemBuilder: (_, int index) => InkWell(
          onTap: () {
            print(listCategoryItems[index].id);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Gruz(
                      cargoId: listCategoryItems[index].id,
                    )));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: w,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          listCategoryItems[index].details.first.fromString != null
                              ? '${listCategoryItems[index].details.first.fromString}'
                              : 'error',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              size: 18,
                            )),
                        Text(
                          listCategoryItems[index].details.first.toCityString != null
                              ? '${listCategoryItems[index].details.first.toCityString}'
                              : 'error',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                    Text(listCategoryItems[index].details.first.price != null
                        ? '${listCategoryItems[index].details.first.price}'
                        : '165 000 ₸')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 3),
                      child: Text(
                        listCategoryItems[index].details.first.distance != null
                            ? '${listCategoryItems[index].details.first.distance}' : '620 км',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff008EFF),
                        ),
                      ),
                    ),
                    Text('без НДС', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B2)),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            listCategoryItems[index].details.first.net != null &&
                                listCategoryItems[index].details.first.volume != null ?
                            '${listCategoryItems[index].details.first.net} тн*, ${listCategoryItems[index].details.first.volume} м³'
                                : '115 тн, 260 м³, Авто Тент',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff20273D),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 3),
                          child: Text(
                            listCategoryItems[index].details.first.startDate != null &&
                                listCategoryItems[index].details.first.title != null ?
                            '${listCategoryItems[index].details.first.startDate}, ${listCategoryItems[index].details.first.title}'
                                : '14 июн, Фрукты, клубника',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff20273D),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      child: SvgPicture.asset('assets/ShapeFill.svg', color: Colors.blue,),
                    ),
                    //Icon(Icons.star_border_outlined, size: 30,)
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color(0xff43CC8E),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color(0xff43CC8E),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color(0xff43CC8E),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color(0xff43CC8E),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Color(0xff43CC8E),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Text(
                              'ТОО «ОУСА Альянс»*',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffA2A9B2),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: Text(
                          'изм. 16:40',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA2A9B2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
    _selections.first = true;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xff008EFF),
        centerTitle: true,
        title: Text(
          'Избранное',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.blue),
                borderRadius: BorderRadius.circular(5),
              ),
              child: ToggleSwitch(
                inactiveBgColor: Color(0xffF2F2F2),
                inactiveFgColor: Colors.blue,
                minHeight: 30,
                minWidth: w * 0.7,
                cornerRadius: 5.0,
                initialLabelIndex: 0,
                labels: ['Грузы 3', 'Транспорт 2', 'Другое 11'],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    BlocBuilder<WishListBloc, WishListState>(
                      builder: (context, snapshot) {
                        if (snapshot is WishListLoading ||
                            snapshot is InitialWishListState) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot is WishListSuccess) {
                          if (snapshot.wishList.isEmpty) {
                            return Container(
                              height: h * 0.5,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.sentiment_satisfied),
                                    Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Text(
                                        'пусто',
                                        style: Theme.of(context).textTheme.bodyText1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                          return _gruzList(snapshot.wishList);
                        } else {
                          print('CategoryItemsBloc error');
                        }
                        return Container();
                      },
                    ),
                    /*Container(
                      margin: EdgeInsets.only(top: 1),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      width: w,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Нур-Султан',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  Container(
                                      margin: EdgeInsets.symmetric(horizontal: 3),
                                      child: Icon(
                                        Icons.arrow_forward_rounded,
                                        size: 18,
                                      )),
                                  Text(
                                    'Алматы',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ],
                              ),
                              Text('165 000 ₸')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '620 км',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff008EFF),
                                  ),
                                ),
                              ),
                              Text('без НДС', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B2)),)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      '115 тн, 260 м³, Авто Тент',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff20273D),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      '14 июн, Фрукты, клубника',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff20273D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                child: SvgPicture.asset('assets/ShapeFill.svg', color: Colors.blue,),
                              ),
                              //Icon(Icons.star_border_outlined, size: 30,)
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        'ТОО «ОУСА Альянс»',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffA2A9B2),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    'изм. 16:40',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffA2A9B2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 1),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      width: w,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Нур-Султан',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  Container(
                                      margin: EdgeInsets.symmetric(horizontal: 3),
                                      child: Icon(
                                        Icons.arrow_forward_rounded,
                                        size: 18,
                                      )),
                                  Text(
                                    'Алматы',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ],
                              ),
                              Text('165 000 ₸')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '620 км',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff008EFF),
                                  ),
                                ),
                              ),
                              Text('без НДС', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B2)),)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      '115 тн, 260 м³, Авто Тент',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff20273D),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      '14 июн, Фрукты, клубника',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff20273D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                child: SvgPicture.asset('assets/ShapeFill.svg', color: Colors.blue,),
                              ),
                              //Icon(Icons.star_border_outlined, size: 30,)
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        'ТОО «ОУСА Альянс»',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffA2A9B2),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    'изм. 16:40',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffA2A9B2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 1),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      width: w,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Нур-Султан',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  Container(
                                      margin: EdgeInsets.symmetric(horizontal: 3),
                                      child: Icon(
                                        Icons.arrow_forward_rounded,
                                        size: 18,
                                      )),
                                  Text(
                                    'Алматы',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ],
                              ),
                              Text('165 000 ₸')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                child: Text(
                                  '620 км',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff008EFF),
                                  ),
                                ),
                              ),
                              Text('без НДС', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFFA2A9B2)),)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      '115 тн, 260 м³, Авто Тент',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff20273D),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 3),
                                    child: Text(
                                      '14 июн, Фрукты, клубника',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff20273D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                child: SvgPicture.asset('assets/ShapeFill.svg', color: Colors.blue,),
                              ),
                              //Icon(Icons.star_border_outlined, size: 30,)
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff43CC8E),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        'ТОО «ОУСА Альянс»',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffA2A9B2),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    'изм. 16:40',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffA2A9B2),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),*/
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
