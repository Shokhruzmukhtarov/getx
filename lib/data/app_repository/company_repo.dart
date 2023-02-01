
import 'package:getx/data/api_service/api_service.dart';
import 'package:getx/data/models/my_responce/response_model.dart';

class CarRepo {
  CarRepo({required this.apiService});

  final ApiService apiService;

  Future<MyResponse> getCar() => apiService.getAllCompany();


}