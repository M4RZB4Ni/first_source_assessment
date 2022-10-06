
import 'package:first_source_assessment/features/fee_listen/models/model_tick.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tickProvider = StateProvider<AsyncValue<ModelTick>>((final ref) {
  return const AsyncValue.loading();
});
