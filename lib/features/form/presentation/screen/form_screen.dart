import 'package:klontong/core/ext/string_ext.dart';
import 'package:klontong/features/form/presentation/bloc/form_cubit.dart';

import '../../../../ui_export.dart';

part 'form_state.dart';

class FormScreen extends StatefulWidget {
  static const routeName = '/form_screen';

  const FormScreen({super.key, this.data});

  final ProductModel? data;

  @override
  FormProductState<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends FormProductState<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            popBack(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded)
        ),
        actions: [
          if (widget.data != null)
            IconButton(
              onPressed: () {
                setState(() {
                  isReadOnly = false;
                });
              },
              icon: const Icon(Icons.edit_rounded),
            )

        ],
      ),
      body: BlocProvider(
        create: (_) => FormCubit(),
        child: BlocBuilder<FormCubit, bool>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Expanded(
                    child: Form(
                      key: _formKey,
                      child: ListView(
                        padding: const EdgeInsets.only(bottom: 20),
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.height * 0.2,
                            child: Image.network(widget.data?.image??'',
                              errorBuilder: (ctx, data, stackTrace) {
                                return Icon(Icons.image,
                                  size: MediaQuery.of(context).size.height * 0.2,
                                  color: Colors.grey.shade300,
                                );
                              },
                              fit: BoxFit.fitHeight,
                              loadingBuilder: (ctx, child, event) {
                                return event != null
                                    ? const Center(child: CircularProgressIndicator())
                                    : child;
                              },
                            ),
                          ),
                          MyField(
                            label: 'Name',
                            controller: nameController,
                            readOnly: isReadOnly,
                            margin: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          MyField(
                            label: 'Price',
                            controller: priceController,
                            readOnly: isReadOnly,
                            margin: const EdgeInsets.only(bottom: 12),
                          ),
                          MyField(
                            label: 'Description',
                            controller: descController,
                            readOnly: isReadOnly,
                            maxLines: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (!isReadOnly)
                    MaterialButton(
                      onPressed: isValidate ? () {

                      } : null,
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 0,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      disabledColor: Colors.grey.shade400,
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        alignment: Alignment.center,
                        child: const Text('Save',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    )

                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
