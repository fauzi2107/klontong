import 'package:klontong/ui_export.dart';

class ProductCubit extends Cubit<BaseState> {
  ProductCubit(this._getProductsUseCase) : super(BaseState(isLoading: false, data: dummy));

  final GetProductsUseCase _getProductsUseCase;

  Future getProducts() async {
    emit(state.copyWith(isLoading: true));

    final result = await _getProductsUseCase(NoParams());
    result.when(ok: (data) {
      emit(state.copyWith(
        isLoading: false,
        data: data
      ));
    }, err: (err) {
      emit(state.copyWith(
        isLoading: false,
        errMsg: err.message,
        data: dummy
      ));
    });
  }

  Future getProductByName(String productName) async {
    emit(state.copyWith(isLoading: true));

    emit(state.copyWith(
      isLoading: false,
      data: productName.isNotEmpty ? dummy.where((e) {
        return e.name.toLowerCase().contains(productName.toLowerCase());
      }).toList() : dummy
    ));
  }
}

class BaseState {
  final bool isLoading;
  final List<ProductModel> data;
  final String? errMsg;

  BaseState({required this.isLoading, this.data = const [], this.errMsg});

  BaseState copyWith({
    bool? isLoading,
    List<ProductModel>? data,
    String? errMsg
  }) => BaseState(
    isLoading: isLoading ?? this.isLoading,
    data: data ?? this.data,
    errMsg: errMsg ?? this.errMsg
  );
}