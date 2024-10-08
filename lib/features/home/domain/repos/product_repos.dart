import '../../../../ui_export.dart';

abstract class ProductRepos {
  Future<List<ProductModel>> getProducts();
  Future addProduct(ProductModel model, bool isNew);
}

class ProductReposImpl implements ProductRepos {
  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await Dio().get(ApiUrl.PRODUCTS);
      return (response.data as List?)?.map((e) {
        return ProductModel.fromJson(e);
      }).toList() ?? [];
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future addProduct(ProductModel model, bool isNew) async {
    try {
      if (isNew) {
        await Dio().post(ApiUrl.PRODUCTS, data: model.toJson);
      } else {
        await Dio().put('${ApiUrl.PRODUCTS}/${model.productId}',
          data: model.toJson
        );
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}