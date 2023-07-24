import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
    try {
        String userData = await fetchUserData();
        String userId = jsonDecode(userData)["id"];

        String userOrders = await fetchUserOrders(userId);
        List<dynamic> userProducts = jsonDecode(userOrders);

        double total = 0;
        for (int idx = 0; idx < userProducts.length; idx++) {
            String productPrice = await fetchProductPrice(userProducts[idx]);
            total += jsonDecode(productPrice);
        }

        return total;
    } catch (error) {
        return -1;
    }
}
