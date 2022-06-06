import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(
       title: Text('Never understimate'),
       actions: [
         Icon(Icons.add),
         Icon(Icons.share),
       ],
     ),
     body: Container(
       height: double.infinity,
       color: Colors.blue,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(name),
           Center(
             child: RaisedButton(
               onPressed: () {
                 Navigator.pop(context, 'wellcome to back');
               },
               textColor: Colors.white,
               padding: const EdgeInsets.all(0.0),
               child: Container(
                 decoration: BoxDecoration(
                   gradient: LinearGradient(
                     colors: <Color>[
                       Colors.green.shade200,
                       Colors.green.shade500,
                       Colors.green.shade700
                     ],
                   ),
                 ),
                 padding: const EdgeInsets.all(10.0),
                 child: const Text('Page Back'),
               ),
             ),
           ),
         ],
       ),
     ),
   );
  }
}