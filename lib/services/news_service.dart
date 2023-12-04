import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:webant_flutter_study_jam_2023/models/news_response.dart';
import 'package:webant_flutter_study_jam_2023/models/pagination_response.dart';

part 'news_service.g.dart';

@RestApi(baseUrl: 'https://api.spaceflightnewsapi.net')
abstract class NewsService {
  factory NewsService(Dio dio) = _NewsService;

  @GET('/v4/articles')
  Future<PaginationResponse<NewsResponse>> fetchArticles();

  @GET('/v4/articles/{id}/')
  Future<NewsResponse> fetchArticleById(
    @Path('id') int id,
  );
}
