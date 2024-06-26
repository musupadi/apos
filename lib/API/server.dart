String getServerName(){
  return 'http://192.168.1.22:8080/';
}
String BaseURL(){
  return 'http://192.168.1.22:8080/';
}
String FileBaseURL(){
  return 'http://192.168.1.22/apos/img/product/';
}

Map<String,String> headerBuilder(String token) {
  return headers = {
    'Content-type': 'application/json',
    "Accept": "application/json",
    "Access-Control-Allow-Origin": getServerName(),
    "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
    "Access-Control-Allow-Headers": " Origin, Content-Type, Accept, Authorization, X-Request-With",
    "X-API-KEY": token
  };
}
Map<String,String> headerBuilderWT() {
  return headers = {
    'Content-type': 'application/json',
    "Accept": "application/json",
    "Access-Control-Allow-Origin": getServerName(),
    "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
    "Access-Control-Allow-Headers": "Origin, Content-Type, Accept, Authorization, X-Request-With",
  };
}
var headers = {
  'Content-type': 'application/json',
  "Accept": "application/json",
  "Access-Control-Allow-Origin": getServerName(),
  "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
  "Access-Control-Allow-Headers": " Origin, Content-Type, Accept, Authorization, X-Request-With",
};
String Login(){
  return 'Login';
}
String Product(){
  return 'Product';
}
String Sumtransaction(){
  return 'Sumtransaction';
}
String Transaction(){
  return 'Transaction';
}