import 'dart:io';
import 'package:http/http.dart' as http;

// APIの処理をまとめたかったファイル(未使用)
class ApiService {
  Future<void> zipApi(String zipcode) async {
    final url =
    Uri.parse('https://zipcloud.ibsnet.co.jp/api/search?zipcode=$zipcode');
    final response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

  Future<void> zipApiPageChange() async {
    final url =
    Uri.parse('https://zipcloud.ibsnet.co.jp/api/search?zipcode=0010000');
    final response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    // await Navigator.push(
    //   context,
    //   MaterialPageRoute<void>(
    //     builder: (context) =>
    //         NextPage('Response status: ${response.statusCode}'),
    //   ),
    // );
  }

  Future<void> localAPITest() async {
    final url = Uri.parse('http://192.168.0.4:30000/api/v1/taste_types');
    final response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
