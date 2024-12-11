import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ordering/model/product_model.dart';
import 'package:ordering/view/widget/label.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product, this.onTap});

  final ProductModel product;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color.fromARGB(146, 125, 123, 123),
              width: 2,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignCenter,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                product.image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Label(
                    text: product.name,
                    fontFamily: Onest.semibold,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    fontSize: 15,
                  ),
                  const Gap(4),
                  Label(
                    text: "\$ ${product.price}",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
