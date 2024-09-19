import 'package:klontong/ui_export.dart';

class AddProductUsecase extends ResultUseCase<bool, ProductModel> {
  final ProductRepos repos;

  AddProductUsecase(this.repos);

  @override
  Future<Result<bool, Failure>> processCall(ProductModel params) async {
    try {
      await repos.addProduct(params);
      return Ok(true);
    } catch (err) {
      return Err(await errorCatcher(e: err));
    }
  }
}