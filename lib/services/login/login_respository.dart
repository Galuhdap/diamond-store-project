import 'package:diamond_store/services/login/login_data_sources.dart';
import 'package:diamond_store/services/login/model/response/get_login_response.dart';

class LoginRepository {
  final LoginDataSource source;

  LoginRepository(this.source);

  Future<GetLoginResponse> getLogin() async {
    return source.getLogin();
  }

  // Future<DetailNewsResponse> getDetailNews(String newsId) async {
  //   final response = await get(NetworkConstants.GET_NEWS_DETAIL_URL,
  //       queryParameter: {"id": newsId});
  //   return DetailNewsResponse.fromJson(response);
  // }
}
