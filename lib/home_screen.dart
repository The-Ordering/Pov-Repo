import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ordering/cotroller/product_controller.dart';
import 'package:ordering/view/detailscreen.dart';
import 'package:ordering/view/widget/input.dart';
import 'package:ordering/view/widget/label.dart';
import 'package:ordering/view/widget/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textCtrl = TextEditingController();
  void Function()? onTap;
  void Function(String)? onSubmitted;

  final controller = ProductController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("The Ordering"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(24),
              const Label(
                text: 'Welcome to the Ordering!',
                fontFamily: Onest.semibold,
                fontSize: 16,
              ),
              const Label(
                text: 'Now order what you want by yourself',
              ),
              const Gap(16),
              const Label(
                text: 'Find what you want',
                fontFamily: Onest.leght,
                fontSize: 13,
              ),
              const Gap(4),
              InputText(controller: textCtrl),
              const Gap(32),
              const Label(
                text: 'All Products',
                fontFamily: Onest.leght,
                fontSize: 13,
              ),
              const Gap(16),
              GridView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 260,
                  mainAxisSpacing: 32,
                  crossAxisSpacing: 24,
                ),
                itemBuilder: (context, index) => ProductCard(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                        Detailscreen(product: controller.products[index]),
                    ),
                  ),
                  product: controller.products[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
