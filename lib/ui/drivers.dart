import 'package:flutter/material.dart';

class Drivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottom: TabBar(
            onTap: (index) {
              // Tab index when user select it, it start from zero
            },
            tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                //TODO n
                child: Text('Сотрудники 4'),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text('Наемные')),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Icon(Icons.arrow_back_ios_rounded),
          ),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text('Выберите водителя'),
          ),
        ),

        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {},
        //   isExtended: true,
        //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //   label: Text('Выбрать водителя'),
        //   elevation: 0.0,
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        //TODO n
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                child: Stack(
                    alignment: Alignment.topCenter,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //TODO n
                                        Text(
                                          'А. Аскаров',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0),
                                        ),
                                        //TODO n
                                        Container(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text('Свободен',
                                              style: TextStyle(
                                                  fontSize: 13.0,
                                                  color: Colors.grey)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue, width: 1.5),
                                    borderRadius: BorderRadius.all(Radius.circular(50.0) //
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.blue,
                                    size: 23.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                          //TODO n
                          Divider(
                            thickness: 1.5,
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20.0,
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        //TODO n
                                        Text(
                                          'А. Аскаров',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0),
                                        ),
                                        //TODO n
                                        Container(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text('Свободен',
                                              style: TextStyle(
                                                  fontSize: 13.0,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    //TODO n
                                    border: Border.all(color: Color(0xffDFE2E5), width: 1.5),
                                    borderRadius: BorderRadius.all(Radius.circular(50.0) //
                                    ),
                                  ),
                                  //TODO n
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                    size: 23.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.01,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //TODO n
                            Container(
                              width: 300.0,
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
                                child: Text('Выбрать водителя'),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            //TODO n
                            Container(
                              width: 300.0,
                              height: 50.0,
                              child: OutlineButton(
                                onPressed: () {},
                                //TODO n
                                child: Text(
                                  'Отменить выбор',
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
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Введите номер телефона",
                        hintStyle: TextStyle(
                          fontSize: 17.0,
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 0.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    //TODO n
                    width: 290.0,
                    child: Text(
                      'Введите номер телефона зарегистрированного водителя на сервисе и отправьте ему заявку на перевозку.',
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE7F6FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 10.0,
                      children: [
                        Icon(
                          Icons.drive_eta_rounded,
                          color: Colors.blue,
                          size: 60.0,
                        ),
                        Text('Пригласите водителя',
                            style: TextStyle(fontSize: 21.0, color: Colors.blue)),
                        Container(
                            //TODO n
                            width: 250.0,
                            child: Text(
                                'Если водителя нет на сервисе,  отправьте ему SMS-приглашение. Регистрация займет 5 минут.',
                                style:
                                    TextStyle(fontSize: 14.0, color: Colors.grey),
                                textAlign: TextAlign.center)),
                        RaisedButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          onPressed: () {},
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Padding(
                            //TODO n
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40.0,
                            ),
                            child: Text('Пригласить водителя'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),

        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        //   child: RaisedButton(
        //     shape: new RoundedRectangleBorder(
        //         borderRadius: new BorderRadius.circular(30.0)),
        //     onPressed: () {},
        //     color: Colors.blue,
        //     textColor: Colors.white,
        //     child: Padding(
        //       padding: const EdgeInsets.all(15.0),
        //       child: Text('Выбрать водителя'),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
