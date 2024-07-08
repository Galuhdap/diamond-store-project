import 'package:diamond_store/services/history/model/response/get_history_response.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  final List<GetHistoryResponse> historyCard = [
    GetHistoryResponse(
      name_game: "Mobile Legend",
      diamond: "200",
      status: "Pending",
    ),
    GetHistoryResponse(
      name_game: "Mobile Legend",
      diamond: "500",
      status: "Completed",
    ),
    GetHistoryResponse(
      name_game: "Free Fire",
      diamond: "200",
      status: "Completed",
    ),
    GetHistoryResponse(
      name_game: "Free Fire",
      diamond: "200",
      status: "Completed",
    ),
    GetHistoryResponse(
      name_game: "Free Fire",
      diamond: "200",
      status: "Completed",
    ),
  ];
}
