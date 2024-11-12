import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async{
	try {
		String result = await fetchUserData();
	var decodedResult = jsonDecode(result);
	var userId = decodedResult['id'];

	String ordersJson = await fetchUserOrders(userId);
	List<dynamic> orders = jsonDecode(ordersJson);

	double totalSum = 0.0;

	for (var order in orders) {
		String priceJson = await fetchProductPrice(order);
      	double price = double.parse(jsonDecode(priceJson).toString());
      	totalSum += price;
	}

	return(totalSum);

}
	catch (error){
		print('Error: $error');
		return(-1.0);
	}}

