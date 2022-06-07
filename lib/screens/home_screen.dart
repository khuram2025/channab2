import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              child: SvgPicture.asset("assets/icons/logo.svg"),
            )
          ],
        )
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 200,
            width:  600,
            decoration: BoxDecoration(
              // color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black12
              )
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/01.jpg"),
                ),
                // SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Title", style: TextStyle(color: Colors.green.shade500,
                              fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Icon(Icons.verified, color: Colors.green,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text("Price"),
                          SizedBox(width: 20,),
                          Text("Min Qty 45/peace"),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue
                        ),
                        child: Center(child: Text("03478796489",style: TextStyle(color: Colors.white),)),
                      ),
                      SizedBox(height: 10,),
                      RatingBar.builder(
                          initialRating: 3,
                          itemBuilder: (context, _ ) => Icon(Icons.star, color: Colors.green.shade500, size: 1,),
                          onRatingUpdate: (rating){})
                    ],
                  ),
                )

              ],
            )
            ,
          ),
        )
      ),
    );
  }
}


