part of 'form_screen.dart';

abstract class FormProductState<T extends FormScreen> extends State<T> {
  final categoryController = TextEditingController();
  final nameController = TextEditingController();
  final descController = TextEditingController();
  final priceController = TextEditingController();
  late bool isReadOnly;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    isReadOnly = widget.data != null;

    if (widget.data != null) {
      categoryController.text = widget.data!.categoryName;
      nameController.text = widget.data!.name;
      descController.text = widget.data!.description;
      priceController.text = '${widget.data!.harga}'.idr();
    }
    super.initState();
  }

  bool get isValidate => _formKey.currentState?.validate() ?? false;

  String get title {
    if (widget.data != null) {
      if (isReadOnly) return widget.data!.name;
      return 'Edit Product';
    }
    return 'New Product';
  }

  onSubmit(BuildContext context) async {
    context.read<FormCubit>().onSubmit(ProductModel(
      productId: widget.data?.productId ?? '',
      name: nameController.text,
      categoryName: categoryController.text,
      description: descController.text,
      harga: priceController.text.numberOnly.toInt()
    ), widget.data == null);
  }
}