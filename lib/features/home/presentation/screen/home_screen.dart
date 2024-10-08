import '../../../../ui_export.dart';

part 'home_state.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';

  const HomeScreen({super.key});

  @override
  HomeState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends HomeState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductCubit(
          GetProductsUseCase(ProductReposImpl())
      )..getProducts(),
      child: BlocBuilder<ProductCubit, BaseState>(
          builder: (context, productState) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Home'),
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () async {
                      await pushNamedTo(context, routeName: FormScreen.routeName).whenComplete(() {
                        onRefresh(context);
                      });
                    },
                    icon: const Icon(Icons.edit_rounded),
                  )
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(20).copyWith(top: 0),
                child: Column(
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: MyField(
                              controller: searchController,
                              hint: 'Search',
                              onSubmit: (val) => onSearch(context),
                              onChanged: (val) => onSearch(context),
                              isRequired: false,
                              inputAction: TextInputAction.search,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 50,
                            child: MaterialButton(
                              onPressed: () => onSearch(context),
                              padding: EdgeInsets.zero,
                              elevation: 0,
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              color: Colors.blue,
                              child: const Icon(Icons.search,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: RefreshIndicator(
                        onRefresh: () async => onRefresh(context),
                        child: ListItemWidget(
                          isLoading: productState.isLoading,
                          products: productState.search.isEmpty && searchController.text.isEmpty
                              ? productState.data
                              : productState.search,
                          onRefresh: () => onRefresh(context),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
