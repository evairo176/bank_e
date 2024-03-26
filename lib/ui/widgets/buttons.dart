import "package:flutter/material.dart";

import "../../shared/theme.dart";

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: purpleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(56),
            )),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomTextButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Text(
          title,
          style: greyTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class CustomNumberPinButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final bool? isBackIcon;

  const CustomNumberPinButton({
    super.key,
    required this.title,
    this.onTap,
    this.isBackIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: numberBackgroundColor),
        child: Center(
          child: isBackIcon != true
              ? Text(
                  title,
                  style: whiteTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: semiBold,
                  ),
                )
              : Icon(
                  Icons.arrow_back,
                  color: whiteColor,
                  size: 24,
                ),
        ),
      ),
    );
  }
}
