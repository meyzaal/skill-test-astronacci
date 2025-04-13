import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:user_app_mobile/l10n/l10n.dart';

class LanguageCubit extends HydratedCubit<Locale> {
  LanguageCubit() : super(AppLocalizations.supportedLocales.first);

  void changeLanguage(Locale locale) {
    emit(locale);
  }

  @override
  Locale? fromJson(Map<String, dynamic> json) {
    return AppLocalizations.supportedLocales
        .firstWhere((element) => element.toLanguageTag() == json['locale']);
  }

  @override
  Map<String, dynamic>? toJson(Locale state) {
    return {'locale': state.toLanguageTag()};
  }
}
