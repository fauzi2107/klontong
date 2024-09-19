import 'package:klontong/core/ext/string_ext.dart';

import '../../../../ui_export.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({super.key,
    required this.products,
    required this.isLoading,
    required this.onRefresh
  });

  final List<ProductModel> products;
  final bool isLoading;
  final Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            Text('Preparing to load data ...')
          ],
        ),
      );
    }

    return ListView.separated(
      itemCount: products.length,
      separatorBuilder: (ctx, i) => const SizedBox(height: 10),
      padding: const EdgeInsets.symmetric(vertical: 20),
      itemBuilder: (ctx, i) {
        final item = products[i];
        return MaterialButton(
          onPressed: () async {
            await pushNamedTo(context, routeName: FormScreen.routeName,
              arguments: {
                'product': item
              }
            ).then((value) => onRefresh());
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          color: Colors.grey.shade300,
          elevation: 0,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Row(
            children: [
              Expanded(child: Text(item.name,
                style: const TextStyle(
                    fontSize: 18
                ),
              )),
              Text('${item.harga}'.idr(),
                textAlign: TextAlign.right,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
