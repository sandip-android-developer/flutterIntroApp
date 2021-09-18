import 'package:flutter/material.dart';
import 'package:intro/calling_constructor.dart';
import 'package:dio/dio.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:intro/user.dart';

class Tiles extends StatefulWidget {
  Tiles({Key? key}) : super(key: key);

  @override
  _TilesState createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  ConstList list = ConstList();
  List<Users>? httpData;
  List<Users>? dioData;
  bool waiting = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getHttpData();
    getDioData();
  }

  Future getHttpData() async {
    try {
      http.Response response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

      if (response.statusCode == 200) {
        final users = usersFromJson(response.body);
        httpData = users;
        setState(() {
          waiting = false;
        });
        //var itemCount = jsonResponse['totalItems'];

        //print('Number of books about http: $itemCount.');
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
      print(response);
    } catch (e) {
      print('message--$e');
    }
  }

  void getDioData() async {
    try {
      Response<String> response =
          await Dio().get('https://jsonplaceholder.typicode.com/users');
      final users = usersFromJson(response.data!);
      dioData = users;
      setState(() {
        waiting = false;
      });
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // getHttpData();
    getDioData();
    return Scaffold(
      body: (waiting)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: dioData?.length,
              itemBuilder: (BuildContext context, index) {
                return Card(
                  elevation: 5,
                  color: Colors.lightGreen,
                  child: Container(
              
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    child: ListTile(
                      title: Text('${dioData?[index].name}'),
                      subtitle: Text(
                        '${dioData?[index].email}',
                      ),
              
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(color: Colors.red,width: 5.0),
                      ),
                    ),
                    height: 100,
                  ),
                );
              }),
    );
  }
}
