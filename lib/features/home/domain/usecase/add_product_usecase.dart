import 'package:klontong/ui_export.dart';

class AddProductUsecase extends ResultUseCase<bool, AddProductParams> {
  final ProductRepos repos;

  AddProductUsecase(this.repos);

  @override
  Future<Result<bool, Failure>> processCall(AddProductParams params) async {
    try {
      await repos.addProduct(params.data, params.isNew);
      return Ok(true);
    } catch (err) {
      return Err(await errorCatcher(e: err));
    }
  }
}

class AddProductParams {
  final bool isNew;
  final ProductModel data;

  AddProductParams({required this.isNew, required this.data});
}