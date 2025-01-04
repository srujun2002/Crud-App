import 'package:assesment/models/auth_model.dart';
import 'package:assesment/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = useTextEditingController();
    final userName = useTextEditingController();
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: (value) {
                userName.text = value;
              },
              decoration: const InputDecoration(
                  labelText: 'your_username', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value) {
                password.text = value;
              },
              decoration: const InputDecoration(
                  labelText: 'your_password', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(authRepoProvider).create(
                      User(username: userName.text, password: password.text));
                },
                child: const Text('Login'))
          ],
        ),
      ),
    ));
  }
}
