import 'package:dio/dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLService {
  late GraphQLClient _client;

  GraphQLService(String endpoint, String token) {
    final HttpLink httpLink = HttpLink(endpoint);

    final AuthLink authLink = AuthLink(getToken: () async => 'Token $token');

    final Link link = authLink.concat(httpLink);

    _client = GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
  }

  Future<Map<String, dynamic>> executeQuery(String query) async {
    final QueryOptions options =
        QueryOptions(fetchPolicy: FetchPolicy.noCache, document: gql(query));

    final QueryResult result = await _client.query(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return result.data as Map<String, dynamic>;
  }
}
