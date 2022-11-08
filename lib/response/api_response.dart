import 'package:mvvmproject/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? messange;
  ApiResponse({this.data, this.messange, this.status});
  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed() : status = Status.COMPLETED;
  ApiResponse.error() : status = Status.ERROR;

  @override
  String toString() {
    return 'status:$status\n messange=$messange\n status:$data';
  }
}
