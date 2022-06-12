import 'package:channab/screens/dashboard/header.dart';
import 'package:flutter/material.dart';

import '../../components/my_products.dart';
import '../../constants.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    RangeValues _currentRangeValues = const RangeValues(40, 80);
    bool isChecked = false;
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
                        decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        height: 650,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Filters", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                              Divider(
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text("Category", style: TextStyle(color: Colors.white, fontSize: 18, ),),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color:Colors.green.shade500,
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      border: Border.all(color: Colors.green.shade900)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Computer & Software", style: TextStyle(color: Colors.white),),

                                        Icon(Icons.arrow_drop_down_outlined, size: 20, color: Colors.white,)
                                      ],
                                    ),
                                  ),

                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text("Price", style: TextStyle(color: Colors.white, fontSize: 18, ),),

                              RangeSlider(
                                activeColor: Colors.white,
                                inactiveColor: Colors.white,
                                values: _currentRangeValues,
                                max: 100,
                                divisions: 5,
                                labels: RangeLabels(
                                  _currentRangeValues.start.round().toString(),
                                  _currentRangeValues.end.round().toString(),
                                ),
                                onChanged: (RangeValues values){
                                setState((){
                                  _currentRangeValues = values;
                                });
                              },),
                              SizedBox(
                                height: 40,
                              ),
                              Text("Price", style: TextStyle(color: Colors.white, fontSize: 18, ),),

                              CheckboxListTile(
                                  value: isChecked,
                                onChanged: (bool? value ){
                                    setState((){
                                      isChecked = value!;
                                    });
                                },

                              )
                            ],
                          ),
                        ),
                      ))

                ],
              )

            ],
          ),

        ));
  }
}

