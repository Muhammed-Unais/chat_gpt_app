import 'package:chat_gpt_app/constants/colors.dart';
import 'package:chat_gpt_app/widgets/drop_down_widget.dart';
import 'package:chat_gpt_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Services {
  static Future<void> showModalSheet({required BuildContext context}) async {
    await showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            20,
          ),
        ),
      ),
      backgroundColor: scaffoldBackgroundColor,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Flexible(
                child: TextWidget(
                  label: "Choose Model:",
                  fontsize: 16,
                ),
              ),
              Flexible(
                flex: 2,
                child: DropDownWidget(),
              )
            ],
          ),
        );
      },
    );
  }
}
