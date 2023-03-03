import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:my_bus_user_panel/common/configs.dart';

class ApiService {
  final String url;
  final Object? data;

  ApiService({required this.url, this.data});

  final _dio = Dio(BaseOptions(baseUrl: AppConfigs.baseUrl));

  Future<void> get(
      {required Function(Map<String, dynamic> result) onSuccess,
      required Function(String error) onError}) async {
    await _dio.get(url).then((value) {
      if (value.statusCode == 200 || value.statusCode == 201) {
        onSuccess(value.data);
      } else {
        onError('Server error');
      }
    });
  }

  Future<void> post(
      {required Function(Map<String, dynamic> result) onSuccess,
      required Function(String error) onError}) async {
    print(data);
    print(url);
    await _dio
        .post(
      url,
      data: data,
      options: Options(
        validateStatus: (status) => true,
        headers: {
          HttpHeaders.acceptHeader: "json/application/json",
          HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded"
        },
      ),
    )
        .then(
      (value) {
        if (value.statusCode == 200 || value.statusCode == 201) {
          onSuccess(value.data);
        } else {
          onError('Server error');
        }
      },
    );
  }

  Future<void> put(
      {required Function(Map<String, dynamic> result) onSuccess,
      required Function(String error) onError}) async {
    await _dio
        .put(
      url,
      data: data,
      options: Options(validateStatus: (status) => true, headers: {
        HttpHeaders.acceptHeader: "json/application/json",
        HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded"
      }),
    )
        .then((value) {
      if (value.statusCode == 200 || value.statusCode == 201) {
        onSuccess(value.data);
      } else {
        onError('Server error');
      }
    });
  }

  Future<void> delete(
      {required Function(Map<String, dynamic> result) onSuccess,
      required Function(String error) onError}) async {
    await _dio.delete(url).then((value) {
      if (value.statusCode == 200 || value.statusCode == 201) {
        onSuccess(value.data);
      } else {
        onError('Server error');
      }
    });
  }
}
