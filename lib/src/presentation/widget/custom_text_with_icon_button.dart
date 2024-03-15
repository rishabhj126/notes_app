import 'package:flutter/material.dart';

class CustomTextWithIconButton extends StatelessWidget {
  const CustomTextWithIconButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTap,
    this.textColor,
    this.fontSize = 14.0,
    this.enableUnderline = false,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;
  final Color? textColor;
  final double fontSize;
  final bool enableUnderline;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            Text(
              label,
              style: theme.textTheme.headline3?.copyWith(
                color: (textColor == null) ? null : textColor,
                fontSize: fontSize,
                decoration: (enableUnderline == true)
                    ? TextDecoration.underline
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
