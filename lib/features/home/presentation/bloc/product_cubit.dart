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

    var items = state.data;
    if (items.isEmpty) items = dummy;
    emit(state.copyWith(
      isLoading: false,
      search: productName.isNotEmpty ? items.where((e) {
        return e.name.toLowerCase().contains(productName.toLowerCase());
      }).toList() : []
    ));
  }
}

class BaseState {
  final bool isLoading;
  final List<ProductModel> data, search;
  final String? errMsg;

  BaseState({
    required this.isLoading,
    this.search = const [],
    this.data = const [],
    this.errMsg
  });

  BaseState copyWith({
    bool? isLoading,
    List<ProductModel>? data,
    List<ProductModel>? search,
    String? errMsg
  }) => BaseState(
    isLoading: isLoading ?? this.isLoading,
    data: data ?? this.data,
    search: search ?? this.search,
    errMsg: errMsg ?? this.errMsg
  );
}