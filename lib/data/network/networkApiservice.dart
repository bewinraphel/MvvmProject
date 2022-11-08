import 'dart:convert';
import 'dart:io';

import 'package:mvvmproject/data/network/baseApiservice.dart';
import 'package:mvvmproject/response/api_excaption.dart';
import 'package:http/http.dart' as http;

class NetWorkApiResponce extends baseApiservice {
  @override
  Future getGetApiResponse(String url) async {
    dynamic reponsejson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      reponsejson = returnreponse(response);
    } on SocketException {
      throw FetchDataException('no internet connection');
    }
    return reponsejson;
  }

  @override
  Future getpostApireponse(String url, dynamic data) async {
    dynamic reponsejson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      reponsejson = returnreponse(response);
      print(reponsejson);
    } on SocketException {
      throw FetchDataException('no internet connection');
    }
    return reponsejson;
  }

  dynamic returnreponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responsejson = jsonDecode(response.body);
        return responsejson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 500:

      case 404:
        throw UnathorisedException(response.body.toString());
      default:
        throw FetchDataException('error while communucation server' +
            'with satatus code' +
            response.statusCode.toString());
    }
  }
}
