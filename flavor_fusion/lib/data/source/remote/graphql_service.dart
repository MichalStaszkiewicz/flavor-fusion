import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLService {
  late GraphQLClient _client;

  GraphQLService(String endpoint) {
    final HttpLink httpLink = HttpLink(endpoint);

    _client = GraphQLClient(
      cache: GraphQLCache(),
      link: httpLink,
    );
  }

  Future<Map<String, dynamic>> executeQuery(String query) async {
    final QueryOptions options = QueryOptions(document: gql(query));

    final QueryResult result = await _client.query(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return result.data as Map<String, dynamic>;
  }
}
