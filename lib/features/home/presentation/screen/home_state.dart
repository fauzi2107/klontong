part of 'home_screen.dart';

abstract class HomeState<T extends HomeScreen> extends State<T> {
  final searchController = TextEditingController();

  onSearch(BuildContext context) {
    context.read<ProductCubit>().getProductByName(searchController.text);
  }

  onRefresh(BuildContext context) {
    context.read<ProductCubit>().getProducts();
  }
}