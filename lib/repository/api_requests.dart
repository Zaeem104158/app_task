import 'dart:convert';
import 'package:app_task/model/app_task_model.dart';
import 'package:flutter/services.dart';

List<AppTaskModel> appTaskResposeList = [];
// List<ConsignmentChargesRequestParam> consignmentChargesRequestParamList = [];

class ApiService {
  static Future<List<AppTaskModel>> fetchData() async {
    try {
      final response =
          await rootBundle.loadString('assets/json_data/data.json');
      final Map<String, dynamic> dataResponse = await json.decode(response);
      final dataModel = AppTaskModel.fromJson(dataResponse);
      appTaskResposeList.add(dataModel);
      return appTaskResposeList;
    } catch (e) {
      return [];
    }
  }
}

// Future<List<AppTaskModel>> readDataFromJsaon() async {
//   final response =
//       await flutter_service.rootBundle.loadString('assets/json_data/data.json');
//   List<AppTaskModel> appTaskResposeList = [];
//   final Map<String, dynamic> dataResponse = await json.decode(response);
//   final dataModel = AppTaskModel.fromJson(dataResponse);
//   appTaskResposeList.add(dataModel);
//   return appTaskResposeList;
// }

String stringCheck({String? checkData}) {
  if (checkData == null) {
    return "Null data found";
  } else if (checkData == "") {
    return "Empty data found";
  } else {
    return checkData;
  }
}
