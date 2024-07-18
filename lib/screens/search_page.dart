import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'filter_page.dart';
import '../models/internship.dart';
import '../widgets/internship_card.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Internship> internships = [];

  @override
  void initState() {
    super.initState();
    fetchInternships();
  }

  Future<void> fetchInternships() async {
    final response = await http
        .get(Uri.parse('https://internshala.com/flutter_hiring/search'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      // print(
      //     jsonResponse);
      List<dynamic> internshipsJson =
          jsonResponse['internships_meta'].values.toList();
      print(internshipsJson);

      setState(() {
        internships =
            internshipsJson.map((data) => Internship.fromJson(data)).toList();
      });
    } else {
      throw Exception('Failed to load internships');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.menu,
              size: 25,
              color: Colors.black54,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Internships',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.search,
                size: 20,
                color: Colors.black54,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.bookmark_border,
                size: 20,
                color: Colors.black54,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.notifications_none,
                size: 20,
                color: Colors.black54,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.messenger_outline_outlined,
                size: 20,
                color: Colors.black54,
              ),
              SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(4),
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.blue),
                borderRadius: BorderRadius.circular(20)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FilterPage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.blue,
                    size: 18,
                  ),
                  Text("Filters",
                      style: TextStyle(color: Colors.blue, fontSize: 12))
                ],
              ),
            ),
          ),
          Center(child: Text('${internships.length.toString()} total internships', style: TextStyle(color: Colors.grey[500]),)),
          Divider(
            color: Colors.grey[200],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child: ListView.builder(
              itemCount: internships.length,
              itemBuilder: (context, index) {
                return InternshipCard(internship: internships[index]);
              },
            ),
          ),
          Divider(
            color: Colors.grey[200],
          )
        ],
      ),
      
    );
  }
}
