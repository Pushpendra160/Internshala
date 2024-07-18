import 'package:flutter/material.dart';
import '../models/internship.dart';

class InternshipCard extends StatelessWidget {
  final Internship internship;

  InternshipCard({required this.internship});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
       child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(internship.title, style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          SizedBox(height: 10,),
          Text('${internship.companyName.substring(0,6)}',style: TextStyle(fontSize:16 , fontWeight: FontWeight.w400, color: Colors.grey),),
          SizedBox(height: 10,),
          Row(
            
            children: [
             Icon(
              
             Icons.location_on_outlined, size: 15,),
             SizedBox(width: 8,),
             Text('location')

          ],),
          SizedBox(height: 10,),
          Row(children: [
             Icon(Icons.money, size: 15,),
             SizedBox(width: 8,),
             Text(internship.stipend, style: TextStyle(fontSize: 12),)

          ],)
          ,
          SizedBox(height: 10,),
          Row(children: [
             Icon(Icons.cases_outlined, size: 15,),
             SizedBox(width: 8,),
             Text(internship.jobExperience==null?'fresher': internship.jobExperience!, style: TextStyle(fontSize: 12),)

          ],),
           SizedBox(height: 10,),
          
            
             Container(
              padding: EdgeInsets.all(2),
               color: Colors.grey[200],
              child: Text(internship.employmentType, style: TextStyle(fontSize: 12,)),),
              SizedBox(height: 10,),
              Divider(color: Colors.grey[200],),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Text("View details", style: TextStyle(fontSize: 14, color: Colors.blue[300], fontWeight: FontWeight.w600),),
                    
                  ),
                  Container(
                    color: Colors.blue ,
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Text("Apply Now", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),),
                  )
                ],
              )
         


        ],
       ),
      ),
      // child: ListTile(
      //   style: ,
      //   title: Text(internship.title),
      //   subtitle: Text('${internship.companyName} • location'),
      //   trailing: Text('${internship.stipend}'),
      // ),
    );
  }
}