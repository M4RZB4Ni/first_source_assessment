import 'package:first_source_assessment/core/messages/app_messages.dart';
import 'package:first_source_assessment/core/resources/app_color_extension.dart';
import 'package:first_source_assessment/core/resources/app_text_style.dart';
import 'package:first_source_assessment/features/fee_listen/notifier/market_notifier.dart';
import 'package:first_source_assessment/features/fee_listen/notifier/trade_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class MarketPriceText extends ConsumerWidget {
  const MarketPriceText({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final tickNotifier = ref.watch(tickProvider);
    final defaultValue = ref.read(socketProvider).defaultPrice;

    /// Price displaying widget
    return tickNotifier.maybeWhen(
      data:(final data){
        final currentValue = data.tick!.quote!;

        ///Set color base on value
        final color = currentValue > defaultValue? AppColors.green : currentValue < defaultValue ? AppColors.error : AppColors.success;

        return Text(data.tick?.quote.toString()??'',
          style: AppTextStyles.body1.copyWith(color: color),);
      },
      orElse: () =>  Center(
        child: Text(AppMessage.Loading,style: AppTextStyles.b02),
      ),);
  }
}
