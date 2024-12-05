import 'package:flutter/material.dart';
import 'package:ordering/view/widget/input.dart';
import 'package:ordering/view/widget/label.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textCtrl = TextEditingController();
  void Function()? onTap;
  void Function(String)? onSubmitted;
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
              const SizedBox(height: 24),
              const Label(
                text: 'Welcome to the Ordering!',
                fontFamily: Onest.black,
                fontSize: 16,
              ),
              const Label(
                text: 'Now order what you want by yourself',
              ),
              const SizedBox(height: 16),
              const Label(
                text: 'Find what you want',
                fontFamily: Onest.leght,
                fontSize: 14,
              ),
              const SizedBox(height: 4),
              InputText(controller: textCtrl),
              const SizedBox(height: 16),
              const Label(
                text: 'All Product',
                fontFamily: Onest.leght,
                fontSize: 16,
              ),
              const SizedBox(height: 15),
              GridView.builder(
                itemCount: 20,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 200,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.amber,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
