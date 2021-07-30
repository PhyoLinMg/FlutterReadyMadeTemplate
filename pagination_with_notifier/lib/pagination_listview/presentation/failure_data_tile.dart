import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pagination_with_notifier/pagination_listview/presentation/paginated_data_list_view.dart';

class FailureDataTile extends ConsumerWidget {
  final Exception exception;
  const FailureDataTile({
    Key? key,
    required this.exception,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileTheme(
      textColor: Theme.of(context).colorScheme.onError,
      iconColor: Theme.of(context).colorScheme.onError,
      child: Card(
        color: Theme.of(context).errorColor,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: Text('An error occured, please, retry'),
          subtitle: Text(
            exception.toString(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          leading: SizedBox(
            height: double.infinity,
            child: Icon(Icons.warning),
          ),
          trailing: IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              context
                  .findAncestorWidgetOfExactType<PaginatedDataListView>()
                  ?.getNextPage(/*ref*/ context);
            },
          ),
        ),
      ),
    );
  }
}
