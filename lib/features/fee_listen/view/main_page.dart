import 'package:first_source_assessment/core/resources/app_size.dart';
import 'package:first_source_assessment/core/resources/app_spacing.dart';
import 'package:first_source_assessment/features/fee_listen/models/model_active_symbol.dart';
import 'package:first_source_assessment/features/fee_listen/view/widget/dropdrown.dart';
import 'package:first_source_assessment/features/fee_listen/view/widget/market_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MainPage extends StatelessWidget {
  const MainPage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: AppSpacing.s16All,
            child: Column(
              children:   [

                SizedBox(height: AppSize.s20.r,),

                ///Market places
                const DropDown<String>(),

                SizedBox(height: AppSize.s20.r,),

                ///Active symbols according to market
                const DropDown<ActiveSymbols>(),

                SizedBox(height: AppSize.s55.r,),

                /// Live Price of symbols
                const MarketPriceText()
              ],
            ),
          ),
        ),
    );
  }
}
