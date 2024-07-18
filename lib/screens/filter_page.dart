import 'package:flutter/material.dart';

class Month {
  final String id;
  final String day;

  Month(this.id, this.day);
}

class FilterPage extends StatefulWidget {
  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List<Month> months = [
    Month('1', '1'),
    Month('2', '2'),
    Month('3', '3'),
    Month('6', '6'),
    Month('12', '12'),
    Month('24', '24'),
    Month('36', '36'),
  ];

  String? _selectedMonth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PROFILE',
                style: TextStyle(color: Colors.grey[650], fontSize: 12),
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    size: 15,
                    color: Colors.blue[700],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Add profile',
                    style: TextStyle(
                        color: Colors.blue[700], fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'CITY',
                style: TextStyle(color: Colors.grey[650], fontSize: 12),
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    size: 15,
                    color: Colors.blue[700],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Add city',
                    style: TextStyle(
                        color: Colors.blue[700], fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'MAXIMUM DURATION (IN MONTH)',
                style: TextStyle(color: Colors.grey[650], fontSize: 12),
              ),
               SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: DropdownButtonFormField<String>(
                  value: _selectedMonth,
                  items: months
                      .map((month) => (DropdownMenuItem<String>(
                            value: month.id,
                            child: Text(month.day),
                          )))
                      .toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedMonth = newValue;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Choose Duration',
                    labelStyle: TextStyle(color: Colors.grey[500]),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF181818)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
