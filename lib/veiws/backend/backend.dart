import 'package:flutter/foundation.dart';

Future<void> main() async {
  final conn = PostgreSQLConnection(
    'hackingkaizen.postgres.database.azure.com',
    5432,
    'Kaizen',
    username: 'froschcrow@hackingkaizen',
    password: '12345678',
    useSSL: true,
  );
  await conn.open();
  if (kDebugMode) {
    print('Connected to PostgreSQL database!');
  }
  await conn.close();
}
