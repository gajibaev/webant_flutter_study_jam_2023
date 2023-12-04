import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:webant_flutter_study_jam_2023/models/news.dart';

part 'news_response.freezed.dart';
part 'news_response.g.dart';

@freezed
class NewsResponse with _$NewsResponse {
  const NewsResponse._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory NewsResponse({
    required int id,
    required String title,
    String? url,
    String? imageUrl,
    String? newsSite,
    required String summary,
    DateTime? publishedAt,
    DateTime? updatedAt,
    bool? featured,
    List<Launch>? launches,
    List<Event>? events,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) => _$NewsResponseFromJson(json);

  News toNewsModel() => News(
        id: id,
        title: title,
        description: summary,
        imageUrl: imageUrl,
        sourceUrl: url,
      );
}

@freezed
class Event with _$Event {
  const factory Event({
    int? eventId,
    String? provider,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
class Launch with _$Launch {
  const factory Launch({
    String? launchId,
    String? provider,
  }) = _Launch;

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);
}
