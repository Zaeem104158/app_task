import 'dart:convert';
import 'dart:developer';

import 'package:app_task/model/app_task_model.dart';
import 'package:app_task/pages/charge_page.dart';
import 'package:app_task/provider/app_task_provider.dart';
import 'package:app_task/repository/api_requests.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as flutter_service;
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppTaskCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<AppTaskCubit, List<AppTaskModel>>(
        builder: (context, state) {
          if (state.isNotEmpty) {
            List<AppTaskModel> dataItem = state;
            return ListView.builder(
              itemCount: dataItem.length,
              itemBuilder: (context, index) {
                List<ConsignmentChargesRequestParam>
                    consignmentChargesRequestParamsList = [];
                dataItem[index].consignmentChargesRequestParams.forEach(
                  (element) {
                    consignmentChargesRequestParamsList.add(element);
                  },
                );
                return Container(
                  color: Colors.green,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData:
                                  dataItem[index].senderInfo.senderNameEn),
                        )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData:
                                  dataItem[index].senderInfo.senderNameBn),
                        )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData:
                                  dataItem[index].senderInfo.senderEmail),
                        )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData:
                                  dataItem[index].senderInfo.senderAddress),
                        )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData:
                                  dataItem[index].senderInfo.senderDistrictOid),
                        )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData:
                                  dataItem[index].senderInfo.senderDivisionOid),
                        )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData:
                                  dataItem[index].senderInfo.senderHubOid),
                        )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData: dataItem[index].senderInfo.senderNid),
                        )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData:
                                  dataItem[index].senderInfo.senderPhone),
                        )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData: dataItem[index]
                                  .senderInfo
                                  .senderPostOfficeOid),
                        )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData:
                                  dataItem[index].senderInfo.senderThanaOid),
                        )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                          stringCheck(
                              checkData: dataItem[index].senderInfo.senderType),
                        )),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ChargePage()));
                          },
                          child: const Text("Charge Page"))
                    ],
                  ),
                );
              },
            );
          }
          return Container(
            height: 50,
            color: Colors.red,
          );
        },
      ),
    );
  }
}

// String stringCheck({String? checkData}) {
//   if (checkData == null) {
//     return "Null data found";
//   } else if (checkData == "") {
//     return "Empty data found";
//   } else {
//     return checkData;
//   }
// }
