import 'dart:developer';

import 'package:app_task/model/app_task_model.dart';
import 'package:app_task/provider/app_task_provider.dart';
import 'package:app_task/repository/api_requests.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChargePage extends StatelessWidget {
  const ChargePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppTaskCubit, List<AppTaskModel>>(
        builder: (context, state) {
      List<AppTaskModel> dataItem = state;
      List<ConsignmentChargesRequestParam> consignmentChargesRequestParamList =
          [];
      for (var element in dataItem) {
        consignmentChargesRequestParamList =
            element.consignmentChargesRequestParams;
      }

      return Scaffold(
          body: ListView.builder(
        itemCount: consignmentChargesRequestParamList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    label: Text(
                  stringCheck(
                      checkData: consignmentChargesRequestParamList[index]
                          .collectableAmount),
                )),
              ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text(
                  stringCheck(
                      checkData: consignmentChargesRequestParamList[index]
                          .heightValue),
                )),
              ),
              RadioListTile(
                  title: const Text("Packaging "),
                  value:
                      consignmentChargesRequestParamList[index].isPackaging ==
                              "Yes"
                          ? 1
                          : 0,
                  groupValue: 1,
                  onChanged: (value) {
                    // changing state
                  }),
              RadioListTile(
                  title: const Text("Home Delivery "),
                  value:
                      consignmentChargesRequestParamList[index].homeDelivery ==
                              "Yes"
                          ? 1
                          : 0,
                  groupValue: 1,
                  onChanged: (value) {
                    // changing state
                  }),
              RadioListTile(
                  title: const Text("Dhaka City "),
                  value:
                      consignmentChargesRequestParamList[index].isDhakaCity ==
                              "Yes"
                          ? 1
                          : 0,
                  groupValue: 1,
                  onChanged: (value) {
                    // changing state
                  }),
              RadioListTile(
                  title: const Text("Volumetric Weight "),
                  value: consignmentChargesRequestParamList[index]
                              .isVolumetricWeight ==
                          "Yes"
                      ? 1
                      : 0,
                  groupValue: 1,
                  onChanged: (value) {
                    // changing state
                  }),
              RadioListTile(
                  title: const Text("Check od  "),
                  value: consignmentChargesRequestParamList[index].isCheckCod ==
                          "Yes"
                      ? 1
                      : 0,
                  groupValue: 1,
                  onChanged: (value) {
                    // changing state
                  })
            ],
          );
        },
      ));
    });
  }
}




// Container(
//                         color: Colors.lightGreen,
//                         child: ListView.builder(
//                           shrinkWrap: true,
//                           itemCount: consignmentChargesRequestParamsList.length,
//                           itemBuilder: (context, index) {
//                             return Column(
//                               children: [
//                                 TextFormField(
//                                   decoration: InputDecoration(
//                                       label: Text(
//                                     stringCheck(
//                                         checkData:
//                                             consignmentChargesRequestParamsList[
//                                                     index]
//                                                 .collectableAmount),
//                                   )),
//                                 ),
//                                 TextFormField(
//                                   decoration: InputDecoration(
//                                       label: Text(
//                                     stringCheck(
//                                         checkData:
//                                             consignmentChargesRequestParamsList[
//                                                     index]
//                                                 .heightValue),
//                                   )),
//                                 ),
//                               ],
//                             );
//                           },
//                         ),
//                       )