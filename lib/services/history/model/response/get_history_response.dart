// To parse this JSON data, do
//
//     final GetHistoryResponse = GetHistoryResponseFromJson(jsonString);

import 'dart:convert';

GetHistoryResponse getHistoryResponseFromJson(String str) => GetHistoryResponse.fromJson(json.decode(str));

String getHistoryResponseToJson(GetHistoryResponse data) => json.encode(data.toJson());

class GetHistoryResponse {
    final String name_game;
    final String diamond;
    final String status;

    GetHistoryResponse({
        required this.name_game,
        required this.diamond,
        required this.status,
    });

    factory GetHistoryResponse.fromJson(Map<String, dynamic> json) => GetHistoryResponse(
        name_game: json["name_game"],
        diamond: json["diamond"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "name_game": name_game,
        "diamond": diamond,
        "status": status,
    };
}
