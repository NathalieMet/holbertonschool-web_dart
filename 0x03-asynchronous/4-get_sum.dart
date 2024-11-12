import '4-util.dart';
import 'dart:convert';

Future<num> calculateTotal() async{
	try {
		String result = await fetchUserData();
	var decodedResult = jsonDecode(result);
	var userId = decodedResult['id'];

	String ordersJson = await fetchUserOrders(userId);
	List<dynamic> orders = jsonDecode(ordersJson);

	num totalSum = 0;

	for (var order in orders) {
		String priceJson = await fetchProductPrice(order);
      	num price = jsonDecode(priceJson);
      	totalSum += price;
	}

	return(totalSum);

}
	catch (error){
		return(-1);
	}}

