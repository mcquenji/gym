import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/shared.dart';

@RoutePage()
class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key, this.inviteCode});

  final String? inviteCode;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => RegisterScreenState();
}

class RegisterScreenState extends ConsumerState<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
