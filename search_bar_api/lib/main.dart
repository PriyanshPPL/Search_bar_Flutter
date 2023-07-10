import 'package:flutter/material.dart';
import 'user_detaills.dart';
import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchSection(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SearchSection extends StatefulWidget {
  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  TextEditingController controller = new TextEditingController();
  List<UserDetails> _searchResult = [];
  List<UserDetails> _userDetails = [];
  List<UserDetails> listdata = [];

  final String url = 'https://jsonplaceholder.typicode.com/posts/1/comments';

  Future<Null> getUserDetails() async {
    final response = await http.get(url as Uri);
    final responseJson = json.decode(response.body);

    setState(() {
      // for (Map user in responseJson) {
      //   _userDetails.add(UserDetails.fromJson(user));
      // }
      listdata = responseJson['name'];
    });
  }

  @override
  void initState() {
    super.initState();

    getUserDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0.0,
      ),
      body: Column(children: [
        Container(
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.search),
                title: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      hintText: 'Search', border: InputBorder.none),
                  onChanged: onSearchTextChanged,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    controller.clear();
                    onSearchTextChanged('');
                  },
                ),
              ),
            ),
          ),
        ),
        Expanded(
            child: _searchResult.length != 0 || controller.text.isNotEmpty
                ? ListView.builder(
                    itemCount: _searchResult.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(
                            // _searchResult[index]['name'],
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purpleAccent),
                          ),
                          // subtitle: Text(_searchResult[index].body),
                        ),
                      );
                    },
                  )
                : ListView.builder(
                    itemCount: _userDetails.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(
                            // _userDetails[index].name,
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purpleAccent),
                          ),
                          // subtitle: Text(_userDetails[index].body),
                        ),
                      );
                    },
                  ))
      ]),
    );
  }

  onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    // _userDetails.forEach((UserDetails) {
    //   if (UserDetails.name.contains(text) || UserDetails.body.contains(text))
    //     _searchResult.add(UserDetails);
    // });
  }
}
