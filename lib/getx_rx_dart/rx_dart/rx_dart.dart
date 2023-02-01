import 'package:getx/data/app_repository/company_repo.dart';
import 'package:getx/data/models/company/data_model.dart';
import 'package:getx/data/models/my_responce/response_model.dart';
import 'package:rxdart/rxdart.dart';

class CompanyRxDart {
  final CarRepo carRepo;
  CompanyRxDart({required this.carRepo}) {
    fetchCompany();
  }

  final _carInfo = BehaviorSubject<DataModel>();

  Stream<DataModel> get carData => _carInfo.stream;

  void fetchCompany() async {
    MyResponse myResponse = await carRepo.getCar();
    DataModel dataModel = myResponse.data;
    _carInfo.sink.add(dataModel);
  }
}
