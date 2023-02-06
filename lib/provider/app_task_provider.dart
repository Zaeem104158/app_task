import 'package:app_task/model/app_task_model.dart';
import 'package:app_task/repository/api_requests.dart';
import 'package:bloc/bloc.dart';

class AppTaskCubit extends Cubit<List<AppTaskModel>> {
  AppTaskCubit() : super([]) {
    taskData;
  }
  dynamic get taskData async => emit(await ApiService.fetchData());
}


