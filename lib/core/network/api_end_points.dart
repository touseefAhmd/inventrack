class ApiEndpoints {
  // Base URL
  static const String baseUrl = "https://your-api-domain.com/api";

  // Auth Endpoints
  static const String login = "$baseUrl/auth/login";
  static const String logout = "$baseUrl/auth/logout";
  static const String refreshToken = "$baseUrl/auth/refresh-token";

  // Warehouse Endpoints
  static const String getWarehouses = "$baseUrl/warehouse";
  static const String addWarehouse = "$baseUrl/warehouse/add";
  static const String deleteWarehouse = "$baseUrl/warehouse/delete";

  // Inventory Endpoints
  static const String getItems = "$baseUrl/items";
  static const String addItem = "$baseUrl/items/add";
  static const String moveItem = "$baseUrl/items/move";
  static const String deleteItem = "$baseUrl/items/delete";
}
