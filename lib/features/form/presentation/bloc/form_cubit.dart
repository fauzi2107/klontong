import 'package:klontong/features/home/domain/usecase/add_product_usecase.dart';
import 'package:klontong/ui_export.dart';

class FormCubit extends Cubit<BaseState> {
  FormCubit(this._addProductUsecase) : super(BaseState(isLoading: false));

  final AddProductUsecase _addProductUsecase;

  Future onSubmit(ProductModel model, bool isNew) async {
    emit(state.copyWith(isLoading: true));

    final result = await _addProductUsecase(AddProductParams(
      data: model,
      isNew: isNew
    ));
    result.when(ok: (data) {
      emit(BaseState(isLoading: false));
    }, err: (err) {
      emit(BaseState(isLoading: false, errMsg: err.message));
    });
  }
}