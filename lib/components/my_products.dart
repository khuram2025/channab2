import 'package:channab/responsive.dart';
import 'package:flutter/material.dart';

class MyProducts extends StatelessWidget {
  const MyProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Image.asset("assets/images/01.jpg", height: 147,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,

               children: [
                 Text("Title"),
                 SizedBox(height: 15,),
                 Text("City"),
                 SizedBox(height: 15,),
                 Row(
                   children: [
                     Text("Lactation"),
                     Text("  |  "),
                     Text("Lactation"),
                     Text("  |  "),
                     Text("Lactation"),
                     Text("  |  "),
                   ],
                 ),
                 SizedBox(height: 30,),
                 Text("Added Less then minute ago"),


               ],
             ),
           )
         ],
        ),
      ),
    );
  }
}
