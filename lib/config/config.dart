import 'package:canton_design_system/canton_design_system.dart';

class Config {
  //Production base url
  static String baseUrl =
      'http://vichakshan.com/vichakshan_ek_nai_soch/index.php/api/API/';

//Staging base url
  static String baseUrlStaging =
      'http://vichakshan.com/vichakshan_ek_nai_soch_staging/index.php/api/API/';

  static const bool _isProductionUse = true;

  static String getBaseUrl({required String url}) {
    // debugPrint("parshu link "+(_isProductionUse ? baseUrl + url : baseUrlStaging + url));
    return _isProductionUse ? baseUrl + url : baseUrlStaging + url;
  }
}
