import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:trendy_closet/core/utils/cashed_data_shared_preferences.dart';


class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en')) {
    _loadSavedLanguage();
  }



  void changeLanguage(String languageCode) async {
    emit(Locale(languageCode));
    await CacheService.setData(
        key: CacheConstants.defaultLanguage, value: languageCode);
  }

  String changeFontFamily() {
    return state.languageCode == 'ar' ? 'NotoSansArabic' : 'Roboto';
  }

  void _loadSavedLanguage() {
    final savedLanguage =
        CacheService.getData(key: CacheConstants.defaultLanguage) ?? 'en';
    emit(Locale(savedLanguage));
  }
}
