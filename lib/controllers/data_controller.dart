import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_getx/models/detail_data_model.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  RxList<Detail> _dataList = <Detail>[].obs;

  RxBool _isLoading = true.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;
  List<Detail> get data => _dataList;
  Future<void> loadData() async {
    final String result = await rootBundle.loadString('json/detail.json');
    final List<dynamic> decodedData = jsonDecode(result);
    _dataList.value = decodedData.map((item) => Detail.fromJson(item)).toList();
  }

  @override
  void onInit() {
    loadData().then((_) {
      Future.delayed(const Duration(seconds: 1), () {
        isLoading = false;
      });
    });
    super.onInit();
  }
}
