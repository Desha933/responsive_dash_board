import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_buttom.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuikeInvoiceForm extends StatelessWidget {
  const QuikeInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type Customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type Customer email',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type Customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type Customer name',
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: CustomButtom(
                  backgroundcolor: Colors.transparent,
                  textcolor: Colors.blue,
                ),
              ),
              SizedBox(width: 16),
              Expanded(child: CustomButtom()),
            ],
          ),
        ),
      ],
    );
  }
}
