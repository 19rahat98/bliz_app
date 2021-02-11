import 'technic_categories.dart';
import 'package:flutter/material.dart';

class Published extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff008EFF),
        centerTitle: true,
        title: Text('Добавить объявление', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        actions: [
          Container(margin: EdgeInsets.only(right: 15),child: Icon(Icons.close)),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Icon(
                  Icons.check_box_outlined,
                  color: Colors.blue,
                  size: 50.0,
                ),
              ),
              Text(
                'Объявление опубликованно!',
                style: TextStyle(fontSize: 21.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Text(
                  ' Теперь, другие участники сервиса видят ваше объявление и ваши контактные данные.',
                  style: TextStyle(fontSize: 13.0, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => TechnicCategories()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 90.0),
                  child: Text(
                    'К ОБЪЯВЛЕНИЮ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.blue),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                textColor: Colors.blue,
                color: Colors.white,
                elevation: 0.0,
                // padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
