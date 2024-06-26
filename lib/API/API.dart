import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:apos/API/server.dart';
import 'package:http/http.dart' as http;

Future<List> ProductData(String id_shop) async{
  final response=await http.get(Uri.parse(getServerName()+Product()+"/"+id_shop));
  print(getServerName()+Product()+"/"+id_shop.toString());
  return json.decode(response.body)['data'];
}

Future<String> ProfitToday(String id_shop) async{
  // Get today's date
  DateTime now = DateTime.now();

  // Format today's date as a string
  String today = DateFormat('yyyy-MM-dd').format(now);
  final url = Uri.parse(getServerName()+Sumtransaction());
  final request = http.MultipartRequest('POST', url);
  request.fields['id_shop'] = id_shop;
  request.fields['start_date'] = today;
  request.fields['end_date'] = today;
  final response = await request.send();
  final respStr = await response.stream.bytesToString();
  print("Zyarga Debugger : "+respStr.toString());
  return json.decode(respStr)['Data'];
}

