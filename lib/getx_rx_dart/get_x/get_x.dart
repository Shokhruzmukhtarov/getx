import 'package:get/get.dart';
import 'package:getx/data/app_repository/company_repo.dart';
import 'package:getx/data/models/company/data_model.dart';
import 'package:getx/data/models/my_responce/response_model.dart';

class CompanyGetX extends GetxController {
  final CarRepo carRepo;
  CompanyGetX({required this.carRepo}) {
    fetchCompany();
  }

  RxBool isLoading = true.obs;
  RxString error = ''.obs;
  Rx<DataModel> carData = DataModel(data: []).obs;

  fetchCompany() async {
    isLoading(true);
    MyResponse myResponse = await carRepo.getCar();
    if (myResponse.error.isEmpty) {
      carData.value = myResponse.data;
    } else {
      error.value = myResponse.error;
    }
    isLoading(false);
  }
}
