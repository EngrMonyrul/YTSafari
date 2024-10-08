import 'package:flutter/material.dart';
import 'package:yt_safari/core/constants/assets_consts.dart';
import 'package:yt_safari/core/extensions/context_ext.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, this.errorText});

  final String? errorText;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /* <<--------->> error image <<---------->> */
          Center(
            child: Image.asset(
              AssetsConsts.icServer,
              fit: BoxFit.cover,
              opacity: const AlwaysStoppedAnimation(0.2),
              height: 200,
              width: 200,
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          /* <<--------->> error text <<---------->> */
          Text(
            errorText ?? "",
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.tertiary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
