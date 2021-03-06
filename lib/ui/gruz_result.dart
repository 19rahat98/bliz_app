import 'package:bliz/logic_block/blocs/cargo_list/cargo_bloc.dart';
import 'package:bliz/logic_block/blocs/cargo_list/cargo_event.dart';
import 'package:bliz/logic_block/blocs/cargo_list/cargo_state.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:bliz/ui/application.dart';
import 'package:bliz/ui/find_cargo_filters.dart';
import 'package:bliz/ui/gruz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GruzResult extends StatelessWidget {
  List<Data> _list = [];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    BlocProvider.of<CargoBloc>(context).add(GetCargoFromDb());
    Widget _gruzList(List<Data> listCategoryItems) {
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
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: listCategoryItems[index]
                                              .details
                                              .first
                                              .fromString !=
                                          null
                                      ? '${listCategoryItems[index].details.first.fromString}'
                                      : 'error',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 17.0,
                                  ),
                                ),
                                TextSpan(
                                  text: listCategoryItems[index]
                                              .details
                                              .first
                                              .toCityString !=
                                          null
                                      ? '${listCategoryItems[index].details.first.toCityString}'
                                      : 'error',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                TextSpan(text: '  '),
                                TextSpan(
                                  //text: listCategoryItems[index].details.first.distance != null ? '${listCategoryItems[index].details.first.distance} км' : 'error',
                                  text: listCategoryItems[index].details.first.distance != null
                                      ? '${listCategoryItems[index].details.first.distance}'
                                      : 'error',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Column(
                        children: [
                          Text(
                            listCategoryItems[index].details.first.price != null
                                ? '${listCategoryItems[index].details.first.price}'
                                : 'error',
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.w600),
                          ),
                          Text('без НДС',
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey))
                        ],
                      )
                    ],
                  ),
                  //TODO n
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(direction: Axis.vertical, spacing: 2.0, children: [
                        Text('115 тн, 260 м³, Авто Тент'),
                        listCategoryItems[index].details.first.startDate != null &&
                                listCategoryItems[index].details.first.title != null
                            ? Text(
                                '${listCategoryItems[index].details.first.startDate}, ${listCategoryItems[index].details.first.title}')
                            : Text(''),
                      ]),
                      Container(
                        child: Icon(
                          Icons.star_border_rounded,
                          color: Colors.grey,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          ),
                          Text(
                            //listCategoryItems[index].user.first.companyDetails.first.companyName != null ?'${listCategoryItems[index].user.first.companyDetails.first.companyName}' : 'error',
                            '',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0),
                          ),
                        ],
                      ),
                      Text(
                        'изм. 16:40 ',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 1.0,
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

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 75,
        leading: Row(
          children: [
            Container(
              // color: Colors.red,
              width: 30,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                    size: 20,
                  )),
            ),
            Text('Назад')
          ],
        ),
        title: Text('203 груза'),
        actions: [
          Row(
            children: [
              Text('Фильтр'),
              IconButton(
                icon: Icon(
                  Icons.filter_list,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FindCargoFilters()));
                  print('press');
                },
              ),
            ],
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Нур-Султан',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 17.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Алматы',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  TextSpan(text: '  '),
                                  TextSpan(
                                    text: '620 км',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Column(
                          children: [
                            Text(
                              '165 000 т',
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w600),
                            ),
                            Text('без НДС',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey))
                          ],
                        )
                      ],
                    ),
                    //TODO n
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(direction: Axis.vertical, spacing: 2.0, children: [
                          Text('115 тн, 260 м³, Авто Тент'),
                          Text('14 июн, Хим. продукты, безопасные'),
                        ]),
                        Container(
                          child: Icon(
                            Icons.star_border_rounded,
                            color: Colors.grey,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                            ),
                            Text(
                              'ТОО «ОУСА Альянс»',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12.0),
                            ),
                          ],
                        ),
                        Text(
                          'изм. 16:40 ',
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 1.0,
                    )
                  ],
                ),
              ),
              BlocBuilder<CargoBloc, CargoState>(
                builder: (context, snapshot) {
                  if (snapshot is InitialCargoState ||
                      snapshot is CargoLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot is CargoSuccess) {
                    print(snapshot.cargoList);
                    _list = snapshot.cargoList;
                    if (_list.isEmpty) {
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
                    return _gruzList(snapshot.cargoList);
                  } else {
                    print('CategoryItemsBloc error');
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
