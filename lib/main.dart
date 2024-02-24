import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/firebase_options.dart';
import 'package:logging/logging.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  if (kDebugMode) {
    FirebaseAuth.instance.useAuthEmulator("localhost", 9099);
    FirebaseFirestore.instance.useFirestoreEmulator("localhost", 8080);
    FirebaseStorage.instance.useStorageEmulator("localhost", 9199);
  }

  Logger.root.level = Level.ALL;

  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print("$record ${record.error ?? ""} ${record.stackTrace ?? ""}");
    }
  });

  runApp(
    ProviderScope(
      parent: providerContainer,
      child: DevicePreview(
        enabled: kDebugMode,
        builder: (_) => App(),
      ),
    ),
  );
}
