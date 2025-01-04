import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AsyncWidget<T> extends StatelessWidget {
  const AsyncWidget(
      {super.key,
      required this.value,
      required this.data,
      this.error,
      this.onRefresh});
  final AsyncValue<T> value;
  final Widget Function(T data) data;
  final Widget? error;
  final VoidCallback? onRefresh;
  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, s) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.error_outline_rounded,
                size: 50,
                color: Colors.amber,
              ),
              const SizedBox(height: 16),
              Text(
                (e is DioException) ? e.toString() : e.toString(),
                textAlign: TextAlign.center,
              ),
              if (onRefresh != null) ...[
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    onRefresh?.call();
                  },
                  child: Text(
                    'Refresh',
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                ),
              ]
            ],
          ),
        );
      },
      loading: () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
