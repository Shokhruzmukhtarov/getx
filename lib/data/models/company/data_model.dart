import 'package:getx/data/models/company/company_info_model.dart';

class DataModel {
  List<CarModel> data;
  DataModel({required this.data});

  factory DataModel.fromJson(Map<String, dynamic> jsonData) {
    return DataModel(
      data: (jsonData['data'] as List<dynamic>?)
              ?.map((e) => CarModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
}