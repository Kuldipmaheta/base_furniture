import '../../../export.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text("Cart"),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Column(
              children: [],
            );
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 24.0, bottom: 24),
              child: Divider(
                thickness: 1,
              ),
            );
          },
          itemCount: 2),
    );
  }
}
