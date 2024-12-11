import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ordering/model/product_model.dart';
import 'package:ordering/view/widget/label.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.adaptive.arrow_back,
            color: AppColor.light,
          ),
        ),
        title: Text(product.name),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              product.image,
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Label(
                    text: "\$ ${product.price}",
                    fontSize: 20,
                    fontFamily: Onest.semibold,
                  ),
                  const Gap(8),
                  Label(
                    text: product.description,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
