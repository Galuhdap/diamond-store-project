import 'package:diamond_store/services/lib/api_services.dart';
import 'package:diamond_store/services/lib/network_constants.dart';
import 'package:diamond_store/services/login/model/response/get_login_response.dart';

class LoginDataSource extends ApiService {
  Future<GetLoginResponse> getLogin() async {
    final response = await get(NetworkConstants.GET_LOGIN_URL);
    return GetLoginResponse.fromJson(response);
  }
}