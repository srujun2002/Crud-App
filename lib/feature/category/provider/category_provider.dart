import 'package:assesment/repo/category_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_provider.g.dart';

@riverpod
FutureOr<List<String>> category(
  CategoryRef ref,
) async {
  final res = await ref.read(categoryRepoProvider).list();
  return res;
}
