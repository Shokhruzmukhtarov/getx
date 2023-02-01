import 'package:dio/dio.dart';
import 'package:getx/data/api_service/api_client.dart';
import 'package:getx/data/models/company/data_model.dart';
import 'package:getx/data/models/my_responce/response_model.dart';

class ApiService extends ApiClient {
  Future<MyResponse> getAllCompany() async {
    MyResponse myResponse = MyResponse(error: "");
    try {
      Response response = await dio.get(dio.options.baseUrl);
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        myResponse.data = DataModel.fromJson(response.data);
      }
    } catch (err) {
      myResponse.error = err.toString();
    }

    return myResponse;
  }
}
