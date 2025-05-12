import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_background_widget.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(
            height: 24,
          ),
          const LatestTransaction(),
          const Divider(
            thickness: 1,
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          const Row(
            children: [
              Expanded(
                child: CustomTextField(
                  title: "Customer name",
                  hint: "Type customer name",
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: CustomTextField(
                  title: "Customer email",
                  hint: "Type customer email",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Expanded(
                child: CustomTextField(
                  title: "Item name",
                  hint: "Type item name",
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: CustomTextField(
                  title: "Item amount",
                  hint: "USD",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kwhite,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Add more details",
                    style: AppStyles.styleSemiBold18,
                  ),
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ksecondaryColor,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Send Money",
                    style: AppStyles.styleSemiBold18.copyWith(color: kwhite),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
