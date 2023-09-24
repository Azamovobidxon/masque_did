import 'package:dio/dio.dart';
import '../../../model/namoz_model.dart';

import '../constants/config.dart';

class MainController {

  NamozModel? namozModelDushanba;
  NamozModel? namozModelSeshanba;
  NamozModel? namozModelChorshanba;
  NamozModel? namozModelPayshanba;
  NamozModel? namozModelJusm;
  NamozModel? namozModelShanba;
  NamozModel? namozModelYaxshanba;

  Future<void> getPrayDate() async {
    Dio dio = Dio();

    Response? response = await dio
        .get("${AppConfig.nomozBaseUrl}/api/present/week?region=Toshkent");

    namozModelDushanba = NamozModel.fromJson(response.data[0]);
    namozModelSeshanba = NamozModel.fromJson(response.data[1]);
    namozModelChorshanba = NamozModel.fromJson(response.data[2]);
    namozModelPayshanba =  NamozModel.fromJson(response.data[3]);
    namozModelJusm = NamozModel.fromJson(response.data[4]);
    namozModelShanba = NamozModel.fromJson(response.data[5]);
    namozModelYaxshanba = NamozModel.fromJson(response.data[6]);
  }

}