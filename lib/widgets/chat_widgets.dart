import 'package:chat_gpt_app/constants/colors.dart';
import 'package:chat_gpt_app/service/asset_manager.dart';
import 'package:chat_gpt_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.currentindex});

  final String msg;
  final int currentindex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: currentindex == 0 ? scaffoldBackgroundColor : cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  currentindex == 0 ? AssetManger.person : AssetManger.chatLogo,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextWidget(
                    label: msg,
                  ),
                ),
                currentindex == 0
                    ? const SizedBox.shrink()
                    : Row(mainAxisAlignment: MainAxisAlignment.end,
                         mainAxisSize: MainAxisSize.min ,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.thumb_up_alt_outlined,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.thumb_down_off_alt_outlined,
                            ),
                          )
                        ],
                      ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
