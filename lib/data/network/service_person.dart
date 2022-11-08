import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:suitmedia_intern/data/model/response_person.dart';

import '../../utils/constans.dart';

class ServicePerson {
  static Future<ResponsePerson?> getPerson(int page) async {
    ResponsePerson? responsePerson;
    try {
      var response = await Dio()
          .get('${Constans.baseUrl}${Constans.personUrl}${page.toString()}');
      responsePerson = ResponsePerson.fromMap(response.data);
    } on DioError catch (e) {
      debugPrint(e.error);
    }
    return responsePerson;
  }
}
