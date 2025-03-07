import 'package:flutter/material.dart';

String languageFromLocale(Locale locale) {
  switch (locale.languageCode) {
    // Most often used languages
    case "en":
      return "English";
    case "zh":
      return "简体中文";

    // Then in alphabetical order
    case "de":
      return "Deutsch";
    case "es":
      return "Español";
    case "fr":
      switch (locale.countryCode) {
        case "CA" : 
          return "Français (CA)";
        case "FR" :
          return "Français (FR)";
        default : 
          return locale.languageCode;
      }
    case "it":
      return "Italiano";
    case "ru":
      return "русский";

    // If not found then the language code will be displayed
    default:
      return locale.languageCode;
  }
}
