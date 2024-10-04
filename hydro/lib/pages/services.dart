import 'package:flutter/material.dart';
import 'package:hydro/pages/drop_down.dart';

import 'constants/constants.dart';

class Services {
  static Future<void> showModalSheet({required BuildContext buildcontext}) async {
    await showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      backgroundColor: scaffoldBackgroundColor,
      context: buildcontext, // Use buildcontext instead of context
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child: Text(
                  "Chosen Model:",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              
               Flexible(
                   flex: 2,
                   child: ModelsDrowDownWidget()),
              
            ],
          ),
        );
      },
    );
  }
}
