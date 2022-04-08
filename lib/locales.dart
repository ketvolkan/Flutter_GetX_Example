import 'package:get/get_navigation/get_navigation.dart';

class Locales extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'anasayfayagit': 'Go To Home',
          'Dili İngilizce Yap': 'Convert English',
          'Dili Türkçe Yap': 'Convert Turkish',
          'GetX Süper': "GetX Perfect",
          'Button Örnek': "Button Example"
        },
        'tr_Tr': {
          'anasayfayagit': 'Ana Sayfaya Dön',
          'Dili İngilizce Yap': 'Dili İngilizce Yap',
          'Dili Türkçe Yap': 'Dili Türkçe Yap',
          'GetX Süper': "GetX Süper",
          'Button Örnek': "Button Örnek"
        }
      };
}
