// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Coffetile extends StatelessWidget {

  final String coffeimagepaath;
  final String CoffeName;
  final String CoffePrcie;
  final String coffediscription;

  Coffetile({
    required  this.coffeimagepaath,
    required this.CoffeName,
    required this.CoffePrcie,
    required this.coffediscription,
  });

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:EdgeInsets.only(left: 20.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.black54,
            boxShadow: [BoxShadow(
                color: Colors.black45,
                blurRadius: 30.0,
                spreadRadius: 0.0,
                offset: Offset(1.0,1.0),
            )]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Coffe Image
           ClipRRect(
             child: Image.asset(coffeimagepaath),
             borderRadius: BorderRadius.circular(12.0),
           ),

            // Coffe Name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 3.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(CoffeName,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),

                  SizedBox(height: 5.0),

                  Text(coffediscription,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ],
              ),
            ),
            //Price tgas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: Text('\$' + CoffePrcie),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                    child: Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
