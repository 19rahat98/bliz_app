import 'package:bliz/logic_block/blocs/bloc.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class Gruz extends StatefulWidget {
  final int cargoId;

  const Gruz({Key key, this.cargoId}) : super(key: key);

  @override
  _GruzState createState() => _GruzState();
}

class _GruzState extends State<Gruz> {
  bool _favorite = false;

  @override
  void initState() {
    BlocProvider.of<CargoInfoBloc>(context).add(GetCargoById(cargoId: widget.cargoId));
    // TODO: implement initState
    super.initState();
  }

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
    // double h = MediaQuery.of(context).size.height;
    return BlocListener<CargoInfoBloc, CargoInfoState>(
      listener: (context, state) {
        if (state is CargoInfo && state.cargoInfo.isFavorite != null) {
          setState(() {
            _favorite = state.cargoInfo.isFavorite;
          });
        }
      },
      child:Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 75,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Container(
                  // color: Colors.red,
                  width: 30,
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Text('Назад')
              ],
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  _favorite ? Icons.star : Icons.star_border_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: (){
                  if (_favorite) {
                    BlocProvider.of<WishListBloc>(context).add(OnRemoveWishList(id: widget.cargoId));
                    BlocProvider.of<WishListBloc>(context).add(OnLoadWishList());
                  } else {
                    BlocProvider.of<WishListBloc>(context).add(OnAddWishList(id: widget.cargoId));
                    BlocProvider.of<WishListBloc>(context).add(OnLoadWishList());
                  }
                  setState(() {
                    _favorite = !_favorite;
                  });
                }),
            IconButton(
                icon: Icon(
                  Icons.ios_share,
                  color: Colors.white,
                ),
                onPressed: null)
          ],
        ),
        body: SingleChildScrollView(
          child: BlocBuilder<CargoInfoBloc, CargoInfoState>(builder: (context, state) {
            if (state is CargoInfoLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is CargoInfo) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10, right: 10.0),
                    margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.cargoInfo.details.first.title != null && state.cargoInfo.details.first.net != null && state.cargoInfo.details.first.volume != null ? "${state.cargoInfo.details.first.title} ${state.cargoInfo.details.first.net} / ${state.cargoInfo.details.first.volume} м³" :'Фрукты, клубника 22 тн / 86 м³',
                                style: TextStyle(
                                    fontSize: 21.0, fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(state.cargoInfo.details.first.toCityString != null && state.cargoInfo.details.first.fromString != null && state.cargoInfo.details.first.startDate != null ? "${state.cargoInfo.details.first.fromString} - ${state.cargoInfo.details.first.toCityString}, ${state.cargoInfo.details.first.endDate}" : 'Нур-Султан - Алматы, 14 июня',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                              ),
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
                                state.cargoInfo.details.first.toCityString != null ? state.cargoInfo.details.first.toCityString :'Нур-Султан',
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
                                    state.cargoInfo.details.first.startDate != null ? state.cargoInfo.details.first.startDate :'14 июня',
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
                                state.cargoInfo.details.first.fromString != null ? state.cargoInfo.details.first.fromString :'Алматы',
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
                                  Text(
                                    state.cargoInfo.details.first.distance != null && state.cargoInfo.details.first.duration != null ? "~${state.cargoInfo.details.first.distance}, ${state.cargoInfo.details.first.duration} в пути" :'~620 км',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff008EFF)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        /*OutlineButton(
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
                        ),*/
                        Divider(
                          thickness: 1.5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 15.0,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20.0),
                              child: Icon(Icons.inbox_rounded,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.cargoInfo.details.first.net != null && state.cargoInfo.details.first.volume != null ? "${state.cargoInfo.details.first.net} / ${state.cargoInfo.details.first.volume} м³" : '22 тн / 86 м³',
                                  style: TextStyle(
                                      color: Color(0xff20273D),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  state.cargoInfo.details.first.title != null ?  state.cargoInfo.details.first.title :'Фрукты, клубника',
                                  style: TextStyle(
                                      color: Color(0xffA2A9B2), fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20.0),
                              child: Icon(
                                Icons.directions_car_rounded,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Авто Тентовка',
                                  style: TextStyle(
                                      color: Color(0xff20273D),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Загрузка, выгрузка: боковая',
                                  style: TextStyle(
                                      color: Color(0xffA2A9B2), fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20.0),
                              child: Icon(Icons.inbox_rounded,
                                  color: Theme.of(context).primaryColor),
                            ),
                            Container(
                              width: w * 0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Погрузка груза должна выполняться аккуратно. Коробки закрепить надежно. Оплата на месте получения.',
                                    style: TextStyle(
                                        color: Color(0xffA2A9B2), fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          thickness: 1.5,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.topCenter,
                                    width: 25,
                                    height: 25,
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
                                    margin: EdgeInsets.only(left: 20.0),
                                    child: Wrap(
                                      direction: Axis.vertical,
                                      spacing: 5.0,
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(state.cargoInfo.price.first.price != null ? '${state.cargoInfo.price.first.price}' : 'Договорная цена',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff20273D))),
                                        Text(
                                          state.cargoInfo.price.first.paymentType != null ? 'без НДС, ${state.cargoInfo.price.first.paymentType}' :'без НДС, наличными',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffA2A9B2)),
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
                                                } else if (state is FirstStepRequestCargoSuccess) {
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
                                              child:  Container(
                                                margin: EdgeInsets.only(top: 10),
                                                width: w * 0.6,
                                                height: 40.0,
                                                child: OutlineButton(
                                                  onPressed: () {
                                                    print(state.cargoInfo.id);
                                                    BlocProvider.of<RequestCargoBloc>(context).add(SendRequest(postId: state.cargoInfo.id, price: "3000", currency: 1));
                                                    BlocProvider.of<InProgressApplicationBloc>(context).add(GetInProgressApplicationList());
                                                  },
                                                  child: Text(
                                                    'Сделать предложение',
                                                    style: TextStyle(
                                                        color: Theme.of(context)
                                                            .primaryColor),
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(30.0),
                                                  ),
                                                  borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                                  highlightedBorderColor:
                                                  Theme.of(context).primaryColor,
                                                ),
                                              ),
                                            );
                                          },
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
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
                                      "ТОО «ОУСА Альянс»",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff20273D)),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      state.cargoInfo.user.first.fullName != null ? "${state.cargoInfo.user.first.fullName} " : "Айсулу А.Л.",
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
                                      state.cargoInfo.user.first.phone != null ? "${state.cargoInfo.user.first.phone} " :"+7 702 360 70 20",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff20273D)),
                                    ),
                                  ),
                                  /*Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "+7 702 360 70 20",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff20273D)),
                                    ),
                                  ),*/
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
                                  state.cargoInfo.user.first.email != null ? "${state.cargoInfo.user.first.email} " :" aisulu@ousa-al.kz",
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
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    'НАПИСАТЬ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Container(
                                width: w * 0.45,
                                margin: EdgeInsets.only(right: 10),
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xff04CC71),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    'ПОЗВОНИТЬ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
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
              );
            } else if (state is CargoInfoFail) {
              print(state.code);
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
        ),
      ),
    );
  }
}
