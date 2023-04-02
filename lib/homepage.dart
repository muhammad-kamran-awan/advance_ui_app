import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var FirstText = 'This is First Container \n Please Click Here';
  var FirstColor = Colors.lightBlue;
  var SecondText = 'This is Second Container \n Please Click Here';
  var SecondColor = Colors.lightBlue;
  var ThirdText = 'This is Third Container \n Please Click Here';
  var ThirdColor = Colors.lightBlue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text("Silver AppBar"),
            expandedHeight: 200,
            floating: true,
          ),

          // For First Container
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  FirstText = "This is Tapped";
                  FirstColor = Colors.lightGreen;
                  ;
                });
              },
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: FirstColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 4)),
                child: Center(child: Text(FirstText)),
              ),
            ),
          )),

          //For Second Container
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  SecondText = "This is Tapped";
                  SecondColor = Colors.lightGreen;
                  ;
                });
              },
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: SecondColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 4)),
                child: Center(child: Text(SecondText)),
              ),
            ),
          )),

          //For Third Container
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  ThirdText = "This is Tapped";
                  ThirdColor = Colors.lightGreen;
                  ;
                });
              },
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: ThirdColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 4)),
                child: Center(child: Text(ThirdText)),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
