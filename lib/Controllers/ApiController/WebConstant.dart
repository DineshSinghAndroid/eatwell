class WebApiConstantAdmin {
  static const String BASE_URL = "https://api.friends-and-food.fr";

  /// Public
  static const String registerUrl = "${BASE_URL}authaccount/registration";
  static const String loginUrl = "${BASE_URL}/user/fr/login";
  static const String recipesUrl = "${BASE_URL}/recipes/fr?max_results=100&page=1";

}
