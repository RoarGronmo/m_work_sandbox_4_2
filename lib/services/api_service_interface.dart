abstract class ApiService {
  Future<String> loginSession(String oauthToken); //Login session
  Future<dynamic> listR1s(); //Departments
  Future<dynamic> listR10s(); //Offices
  Future<dynamic> listOrders(); //Orders
}