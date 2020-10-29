import 'dart:io';

String fixture(String name) {
  String json = File('test/fixtures/$name').readAsStringSync();
  return json;
}