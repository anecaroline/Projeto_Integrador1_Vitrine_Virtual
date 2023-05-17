import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/loading_widget.dart';
import '../../domain/entities/product_category_entity.dart';
import '../controllers/product_category_dropdown_controller.dart';

class ProductCategoryDropdownWidget extends StatelessWidget {
  final String? labelText;
  final bool isRequired;
  final ProductCategoryEntity? initialValue;
  final void Function(ProductCategoryEntity? value)? onSaved;
  final void Function(ProductCategoryEntity? value)? onChanged;

  ProductCategoryDropdownWidget({
    Key? key,
    this.labelText,
    this.isRequired = true,
    this.initialValue,
    this.onSaved,
    this.onChanged,
  }) : super(key: key);

  final _controller = Get.put(ProductCategoryDropdownController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _controller.isLoading.value
          ? Column(
              children: const [
                LoadingWidget(),
                Text('Buscando categorias...'),
              ],
            )
          : _controller.productCategories.isEmpty
              ? const Text('Cadastrar categoria antes do Produto')
              : DropdownButtonFormField<ProductCategoryEntity>(
                  items: _controller.productCategories
                      .map(
                        (res) => DropdownMenuItem<ProductCategoryEntity>(
                          value: res,
                          child: FittedBox(fit: BoxFit.fitWidth, child: Text(res.name)),
                        ),
                      )
                      .toList(),
                  value: initialValue,
                  onSaved: onSaved,
                  onChanged: onChanged,
                  validator: (value) {
                    if (isRequired) {
                      if (value != null) return null;
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    // suffixIcon: suffixIcon,
                    // border: isBorder ? const OutlineInputBorder() : InputBorder.none,
                    labelText: labelText == null ? null : '${isRequired ? '* ' : ''}$labelText',
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
      // : FormDropdownFieldWidget<StoreEssentialEntity>(
      //     labelText: labelText,
      //     isRequired: isRequired,
      //     initialValue: initialValue == null ? null : storeDropdownController.getStoreSelected(initialValue!),
      //     items: storeDropdownController.stores
      //         .map(
      //           (res) => DropdownMenuItem<StoreEssentialEntity>(
      //             value: res,
      //             child: FittedBox(fit: BoxFit.fitWidth, child: Text(res.name)),
      //           ),
      //         )
      //         .toList(),
      //     onChanged: onChanged,
      //     onSaved: onSaved,
      //   ),
    );
  }
}