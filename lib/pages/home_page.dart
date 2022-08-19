// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/coffeTypes.dart';
import '../util/coffetile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List coffeType=[
   ['Cappuccino',true], ['Latte',false],['Black',false],['Tea',false],
  ];
  //User Tap On coffe Type

  void coffeTypeSelected(int index){
    setState((){
      for(int i=0;i<coffeType.length;i++){
        coffeType[i][1]=false;
      }
      coffeType[index][1]=true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(Icons.person),
        )],

      ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ],
        ),

        body :Column(
          children: [
            //find the best coffe text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text("Find The Best Coffe For You",
                  style:GoogleFonts.bebasNeue(
                    textStyle: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),

              ),
            ),

            SizedBox(height: 20.5),

            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Find a Caffe',
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                    borderRadius: BorderRadius.circular(50.0),
                  )
                ),
              ),
            ),

            // list of coffe ties

            SizedBox(height: 20.5),

            Container(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeType.length,
                  itemBuilder: (context,index){
                return CoffeTypes(
                    coffetypes: coffeType[index][0],
                    isSelected:coffeType[index][1],
                    onTap: () {
                    coffeTypeSelected(index);
                 });
    }
            ),
            ),

            Expanded(child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Coffetile(coffediscription: 'With Armond Milkr', coffeimagepaath: 'lib/images/Untitled-1.jpg', CoffePrcie: '4.00', CoffeName: 'Cappuccino',),
                Coffetile(coffediscription: 'With Armond Milgk', coffeimagepaath: 'lib/images/Untitled-21.jpg', CoffePrcie: '4.00', CoffeName: 'Latte',),
                Coffetile(coffediscription: 'With Armond Milk', coffeimagepaath: 'lib/images/Untitled-31.jpg', CoffePrcie: '4.00', CoffeName: 'Black',),

              ],
            )
            ),

            

          ],
        )

    );
  }
}
