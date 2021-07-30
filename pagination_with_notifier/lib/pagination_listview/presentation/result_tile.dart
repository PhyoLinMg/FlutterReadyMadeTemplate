import 'package:flutter/material.dart';
import 'package:pagination_with_notifier/pagination_listview/domain/movie_response.dart';

class ResultTile extends StatelessWidget {
  final Result result;

  const ResultTile({
    Key? key,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(result.name),
      subtitle: Text(
        result.originCountry,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () {},
    );
  }
}
