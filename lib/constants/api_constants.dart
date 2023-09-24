class ApiConstants{
  ApiConstants._();
  static String nomozParth(String city) => "/api/present/week?region=$city";

  static Map<String,String> nomozPathms(String region) => {
      "region": region,
  };

  static const geoPath = "ipgeo";

  static Map<String, String> gepPathms(String apiKey) => {
    "apiKey" : apiKey,
  };

}