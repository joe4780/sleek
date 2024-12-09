import 'package:repository/utils/api_endpoint.dart';

class PropertyEndpoints {
  static String property = "${APIBASEEndpoints.baserurl}/property";
  static String create = "${APIBASEEndpoints.baserurl}/property";
  static String edit(int id)=> "${APIBASEEndpoints.baserurl}/property/$id";
  static String delete(int id)=> "${APIBASEEndpoints.baserurl}/property/$id";
  
}
