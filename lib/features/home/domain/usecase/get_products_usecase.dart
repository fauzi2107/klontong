import 'package:klontong/core/handler/response_handler/failure.dart';
import 'package:klontong/core/handler/response_handler/result/result.dart';
import 'package:klontong/core/handler/response_handler/result_use_case.dart';
import 'package:klontong/features/home/data/model/product_model.dart';
import 'package:klontong/features/home/domain/repos/product_repos.dart';

class GetProductsUseCase extends ResultUseCase<List<ProductModel>, NoParams> {

  final ProductRepos repos;

  GetProductsUseCase(this.repos);

  @override
  Future<Result<List<ProductModel>, Failure>> processCall(NoParams params) async {
    try {
      final result = await repos.getProducts();
      return Ok(result);
    } catch (e) {
      return Err(await errorCatcher(e: e));
    }
  }
}