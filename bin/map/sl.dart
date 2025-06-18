import 'dart:convert';

import 'package:http/http.dart';

Future<void> main ()async{
Uri uri=Uri.parse('https://transport.integration.sl.se/v1/sites/5873/departures');
await get(uri);

}