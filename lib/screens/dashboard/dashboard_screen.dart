import 'package:channab/screens/dashboard/header.dart';
import 'package:flutter/material.dart';

import '../../components/my_products.dart';
import '../../constants.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          primary: false,
          child: Column(
            children: [
              Header(),
              SizedBox(height: defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                      child: Column(
                        children: [
                         MyProducts()

                        ],
                  )),
                  SizedBox(height: defaultPadding),
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.green,
                        height: 300,
                      ))

                ],
              )

            ],
          ),

        ));
  }
}

