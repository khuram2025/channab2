import 'package:channab/constants.dart';
import 'package:channab/responsive.dart';
import 'package:flutter/material.dart';

class MyProducts extends StatelessWidget {
  const MyProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // return Container(
    //
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10),
    //     color: Colors.white
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.all(15.0),
    //     child: Row(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //
    //      children: [
    //        Expanded(
    //          flex: 2,
    //          child: Image.asset("assets/images/01.jpg", height: 147,),),
    //        Expanded(
    //            flex: 5,
    //            child: Padding(
    //          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
    //          child: Column(
    //            crossAxisAlignment: CrossAxisAlignment.start,
    //            mainAxisAlignment: MainAxisAlignment.start,
    //
    //            children: [
    //              Row(
    //                children: [
    //                  Text("Title", style: TextStyle(color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),),
    //                  SizedBox(width: 30,),
    //                  Icon(Icons.verified, color: Colors.green,),
    //                  SizedBox(width: 650,),
    //                  Text("Rs 5400", style: TextStyle(color: Colors.green, fontSize: 24, fontWeight: FontWeight.bold),),
    //
    //
    //                ],
    //              ),
    //              SizedBox(height: 15,),
    //              Row(children: [
    //                Icon(Icons.location_on_outlined),
    //                Text("Lahore", style: TextStyle(fontSize: 18),),
    //              ],),
    //
    //              SizedBox(height: 15,),
    //              Row(
    //                children: [
    //                  Text("Lactation", style: TextStyle(color: Colors.grey, fontSize: 18)),
    //                  Text("  |  "),
    //                  Text("Lactation", style: TextStyle(color: Colors.grey, fontSize: 18)),
    //                  Text("  |  "),
    //                  Text("Lactation", style: TextStyle(color: Colors.grey, fontSize: 18)),
    //                  Text("  |  "),
    //                ],
    //              ),
    //              SizedBox(height: 30,),
    //              Text("Added Less then minute ago this time is facourite ...", style: TextStyle(color: Colors.grey, fontSize: 18)),
    //
    //
    //            ],
    //          ),
    //        ))
    //
    //
    //      ],
    //     ),
    //   ),
    // );

    return ListTile(
        onTap: (){},
        hoverColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaultPadding),
        ),
      leading: _listImage(),
      title: _listTitle(),
      subtitle: _listSubstitle(),
      trailing: _listTrailing(),

    );
  }
}

class _listImage extends StatelessWidget {
  const _listImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/images/01.jpg", height: 147,),
    );
  }
}


class _listTitle extends StatelessWidget {
  const _listTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("IPhone X  Pro"
    );
  }
}


class _listSubstitle extends StatelessWidget {
  const _listSubstitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("IPhone X  Pro"
    );
  }
}


class _listTrailing extends StatelessWidget {
  const _listTrailing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(Icons.verified),
      Text("RS 54000")
    ],);
  }
}
