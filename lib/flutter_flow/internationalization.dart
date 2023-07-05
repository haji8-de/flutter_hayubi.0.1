import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ko', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? koText = '',
    String? enText = '',
  }) =>
      [koText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Onboarding
  {
    'kwgg39fp': {
      'ko': '누구라도 안전하게!\n신뢰 가능한 취업자리를 찾을 수 있어요.',
      'en': 'Safe for anyone!\nYou can find a reliable job.',
    },
    '0gp3cphd': {
      'ko': '한국에서의 취업을 희망하는 외국인 유저들에게 검증 가능한 일자리만 안내해 드립니다.',
      'en':
          'We will only provide verifiable jobs to foreign users who want to get a job in Korea.',
    },
    'brr3ak41': {
      'ko': 'Explore Now',
      'en': 'Explore Now',
    },
    'pfv0q7m3': {
      'ko': '성실한 근로자 인증마크를\n획득할 수 있어요!',
      'en': 'You need to get \ncertified as a Sincere worker! ',
    },
    'ox1wzonn': {
      'ko': '취업하신 후 일정기간 이상 근무하면 \n인증마크 획득이 되어 이직과 구직활동이 수월해져요!',
      'en':
          'With a certificate of integrity, you can easily change jobs and find jobs.',
    },
    '5e7mwtu3': {
      'ko': 'Explore Now',
      'en': 'Explore Now',
    },
    'xnnvr6aq': {
      'ko': '비자 발급, 외국인 고용 상황에 대한\n정보를 빠르게 알 수 있어요!  ',
      'en': 'You can know \nthe information quickly!',
    },
    'm3d9426m': {
      'ko': '커뮤니티 보드를 통한 질의응답으로 \n취업과 비자에 관한 궁금함을 해소해드립니다.',
      'en':
          'Through the community board, We will solve your questions about mployment and visa.',
    },
    '25z77jfw': {
      'ko': '시작하기',
      'en': 'Start',
    },
  },
  // map2
  {
    'qchez5pr': {
      'ko': 'Hello',
      'en': '',
    },
    'gba6t0kc': {
      'ko': '[Name]',
      'en': '',
    },
    '3dy7cg3n': {
      'ko': 'Browse our listings below.',
      'en': '',
    },
    'ixk8o31c': {
      'ko': '[Some hint text...]',
      'en': '',
    },
  },
  // HomeProject1
  {
    '90vp5d9i': {
      'ko': 'Hayubi',
      'en': '',
    },
    'b5qtkw0q': {
      'ko': 'Search job, company',
      'en': '',
    },
    'tq2jtyb4': {
      'ko': 'Job Category',
      'en': '',
    },
    '7k7qh4cb': {
      'ko': 'Full-time',
      'en': '',
    },
    'ffq8fa6u': {
      'ko': 'Part-time',
      'en': '',
    },
    'o0z2el65': {
      'ko': 'Farm',
      'en': '',
    },
    '2ywpt0f4': {
      'ko': 'Hospital',
      'en': '',
    },
    'blc4k4o8': {
      'ko': 'Factory',
      'en': '',
    },
    '5rfjxu9t': {
      'ko': 'School',
      'en': '',
    },
    '2e5ug9wv': {
      'ko': 'Baby-sitter',
      'en': '',
    },
    'fg2bl10i': {
      'ko': 'Restaurant',
      'en': '',
    },
    'c7rezt34': {
      'ko': 'Please check it',
      'en': '',
    },
    '6gwro684': {
      'ko': 'See All >',
      'en': '',
    },
    'y4i26rd4': {
      'ko': 'Checking the job for',
      'en': '',
    },
    'mv7k6ofi': {
      'ko': 'VISA TYPE',
      'en': '',
    },
    '567888hq': {
      'ko': 'Let\'s find out',
      'en': '',
    },
    'ccmzbfqf': {
      'ko': 'KOREA',
      'en': '',
    },
    'i71e1hh5': {
      'ko': 'Don\'t miss this !',
      'en': '',
    },
    '83y88c16': {
      'ko': 'Region',
      'en': '',
    },
    'hjgt3ckn': {
      'ko': 'Emerging',
      'en': '',
    },
    'ulbi7iu5': {
      'ko': 'Occupation',
      'en': '',
    },
    '7ojz73an': {
      'ko': 'Customized',
      'en': '',
    },
    'j03sbwdb': {
      'ko': 'Intern',
      'en': '',
    },
    'cso5bmm4': {
      'ko': 'Short - term',
      'en': '',
    },
    'ehsvj50e': {
      'ko': 'Logout',
      'en': '',
    },
    '4uc78vcm': {
      'ko': 'My Info',
      'en': '',
    },
    '9gdqfzdx': {
      'ko': 'PC ver.',
      'en': '',
    },
    'm518bcqh': {
      'ko': 'Customer Center\n',
      'en': '',
    },
    'gvwjzmm0': {
      'ko': 'Send E - mail',
      'en': '',
    },
    'ny66tivv': {
      'ko': '© 2023 HAYUVI All Rights Reserved.',
      'en': '',
    },
    '7gcm1l25': {
      'ko': 'Home',
      'en': '',
    },
  },
  // Home
  {
    '1gppzjmc': {
      'ko': 'McRoskey',
      'en': '',
    },
    'wzu85sib': {
      'ko': 'FAMILY VACATION 2023',
      'en': '',
    },
    'dxk02d6m': {
      'ko': 'Test',
      'en': '',
    },
  },
  // login
  {
    'ob27hi3y': {
      'ko': 'HAYUBI',
      'en': '',
    },
    'gr28ode7': {
      'ko': '로그인',
      'en': '',
    },
    'calw1fjw': {
      'ko': 'Guest 로그인을 시도해주세요.',
      'en': '',
    },
    '9xtyns7x': {
      'ko': 'Your email address',
      'en': '',
    },
    'ylfbyndz': {
      'ko': 'Password',
      'en': '',
    },
    '2qg4l55d': {
      'ko': 'Login',
      'en': '',
    },
    'gw7eokon': {
      'ko': 'Continue as Guest',
      'en': '',
    },
    '7sp4y0by': {
      'ko': 'Profile',
      'en': '',
    },
  },
  // Job_main
  {
    'pciqowcl': {
      'ko': 'HAYUBI',
      'en': '',
    },
    's6eqhf2e': {
      'ko': '',
      'en': '',
    },
    '1oeq46sg': {
      'ko': 'Search job, company',
      'en': '',
    },
    'fbcezht9': {
      'ko': 'Full-time',
      'en': '',
    },
    'fks35aez': {
      'ko': 'Part-time',
      'en': '',
    },
    'u1rzs83n': {
      'ko': 'Farm',
      'en': '',
    },
    'arnduquc': {
      'ko': 'Hospital',
      'en': '',
    },
    'ew6x1tpo': {
      'ko': 'Factory',
      'en': '',
    },
    'h5ulbytt': {
      'ko': 'School',
      'en': '',
    },
    '2zpr202j': {
      'ko': 'Baby-sitter',
      'en': '',
    },
    'satdkk1p': {
      'ko': 'Restaurant',
      'en': '',
    },
    'zu80s8do': {
      'ko': '© 2023 HAYUVI All Rights Reserved.',
      'en': '',
    },
    'f6eua5q5': {
      'ko': 'Home',
      'en': '',
    },
  },
  // community
  {
    '83ms7vpo': {
      'ko': 'Community',
      'en': '',
    },
    'qa0jia39': {
      'ko': 'Option 1',
      'en': '',
    },
    '2hdkuxiq': {
      'ko': 'Home',
      'en': '',
    },
  },
  // Home_main
  {
    '5d6vtm7y': {
      'ko': 'HAYUBI',
      'en': '',
    },
    '34g5r4i3': {
      'ko': 'Search job, company',
      'en': '',
    },
    'yoo7vv9q': {
      'ko': 'Full-time',
      'en': '',
    },
    'f5t8ywed': {
      'ko': 'Part-time',
      'en': '',
    },
    'zhvi39xm': {
      'ko': 'Farm',
      'en': '',
    },
    'd1che1my': {
      'ko': 'Hospital',
      'en': '',
    },
    '1zm2152b': {
      'ko': 'Factory',
      'en': '',
    },
    'g4xwrthy': {
      'ko': 'School',
      'en': '',
    },
    'tw928btp': {
      'ko': 'Baby-sitter',
      'en': '',
    },
    'ftv3ueei': {
      'ko': 'Restaurant',
      'en': '',
    },
    '1lgjxcdk': {
      'ko': 'Checking the job for',
      'en': '',
    },
    'cxcgls4c': {
      'ko': 'VISA TYPE',
      'en': '',
    },
    '24fq0052': {
      'ko': 'Let\'s find out',
      'en': '',
    },
    'l4tzjuep': {
      'ko': 'KOREA',
      'en': '',
    },
    'y2amoma7': {
      'ko': 'Region',
      'en': '',
    },
    '9r6cd7y6': {
      'ko': 'Emerging',
      'en': '',
    },
    'zovxp1nc': {
      'ko': 'Occupation',
      'en': '',
    },
    'zi4duh8l': {
      'ko': 'Customized',
      'en': '',
    },
    'njaqlptw': {
      'ko': 'Intern',
      'en': '',
    },
    '317cqhey': {
      'ko': 'Short - term',
      'en': '',
    },
    'ax220xho': {
      'ko': 'Customer Center\n',
      'en': '',
    },
    '6zkoju6r': {
      'ko': 'Send E - mail',
      'en': '',
    },
    'c4uilcst': {
      'ko': '© 2023 HAYUVI All Rights Reserved.',
      'en': '',
    },
    'ad593vlx': {
      'ko': 'Home',
      'en': '',
    },
  },
  // Profile
  {
    '9np7zmdr': {
      'ko': 'My Profile',
      'en': '',
    },
    'nz7bxqgg': {
      'ko': 'Status of VISA',
      'en': '',
    },
    'ivqxcprg': {
      'ko': 'D-8',
      'en': '',
    },
    'gacczciu': {
      'ko': 'Status of VISA',
      'en': '',
    },
    '7r84zof8': {
      'ko': 'RESUME',
      'en': '',
    },
    'uh1nw4f8': {
      'ko': 'VISA',
      'en': '',
    },
    'ix8ks7qo': {
      'ko': 'PASS',
      'en': '',
    },
    'w8r8ngvz': {
      'ko': 'GENERAL',
      'en': '',
    },
    '0j6stumv': {
      'ko': 'Account settings',
      'en': '',
    },
    '1kw6mmkl': {
      'ko': 'Notifications',
      'en': '',
    },
    '9cu5lz5s': {
      'ko': 'Terms of Use',
      'en': '',
    },
    '55y0p42w': {
      'ko': 'Privacy Policy',
      'en': '',
    },
    'gxabmlod': {
      'ko': 'Log Out',
      'en': '',
    },
    'i7dckxgf': {
      'ko': '__',
      'en': '',
    },
  },
  // Ticket
  {
    'ddn1mkwj': {
      'ko': 'DESTINATION',
      'en': '',
    },
  },
  // FlightRow
  {
    'qvg1btly': {
      'ko': 'Boarding Pass',
      'en': '',
    },
    'cfl53iyi': {
      'ko': 'Map',
      'en': '',
    },
  },
  // Travel
  {
    'zysdayqq': {
      'ko': 'FRIDAY JULY 14',
      'en': '',
    },
    '6z5b3wgp': {
      'ko': 'SATURDAY JULY 22',
      'en': '',
    },
  },
  // Accommodations
  {
    '5iro7g63': {
      'ko': 'DETAILS',
      'en': '',
    },
    '7c3k2mmr': {
      'ko': 'Airbnb',
      'en': '',
    },
    'h4z63cqd': {
      'ko': 'Fontaine-de-Vaucluse',
      'en': '',
    },
    'zjcatgv5': {
      'ko': 'July 15-22',
      'en': '',
    },
    '5d82vao9': {
      'ko': '2023',
      'en': '',
    },
    'hysjseyi': {
      'ko': 'Guests',
      'en': '',
    },
    'vu191w81': {
      'ko': '+7',
      'en': '',
    },
    'ehma2rip': {
      'ko': 'Check-in',
      'en': '',
    },
    'm1xzrl3y': {
      'ko': '3:00 pm',
      'en': '',
    },
    'z2cjlamq': {
      'ko': '3:00 pm',
      'en': '',
    },
    'f96t9bei': {
      'ko': 'Check-out',
      'en': '',
    },
    'wz6spmcl': {
      'ko': '11:00 am',
      'en': '',
    },
    'sea98bem': {
      'ko': 'MAP',
      'en': '',
    },
    'toypnv4s': {
      'ko': 'Cannes, France',
      'en': '',
    },
    'vz6t3ugq': {
      'ko': 'GALLERY',
      'en': '',
    },
  },
  // ActivityCard
  {
    '39vexg5n': {
      'ko': '+7',
      'en': '',
    },
  },
  // FoodCard
  {
    'j87iakbi': {
      'ko': 'Sign up to cook',
      'en': '',
    },
    's0did2nh': {
      'ko': 'Your name',
      'en': '',
    },
    'tsfuyb9d': {
      'ko': 'Name is required',
      'en': '',
    },
    'fy7x0c0e': {
      'ko': 'Done!',
      'en': '',
    },
    '9zdy3a4x': {
      'ko': 'will cook',
      'en': '',
    },
  },
  // Food
  {
    'qkz1pwqa': {
      'ko': 'Some meals still need volunteers to cook',
      'en': '',
    },
    'rne6qk6f': {
      'ko': 'HOME-MADE MEALS',
      'en': '',
    },
  },
  // JobCard
  {
    '8zwpg6w7': {
      'ko': 'Apply Now',
      'en': '',
    },
  },
  // CreateContent
  {
    'm3feu96f': {
      'ko': 'Create Post',
      'en': '',
    },
    'a96dx2jh': {
      'ko': 'Option 1',
      'en': '',
    },
    'ddi22kht': {
      'ko': 'Please select...',
      'en': '',
    },
    '3mhpceyq': {
      'ko': 'Search for an item...',
      'en': '',
    },
    'kw44bkrg': {
      'ko': 'Title',
      'en': '',
    },
    'mmenalsa': {
      'ko': 'Enter your note here...',
      'en': '',
    },
    'kiw24ka8': {
      'ko': 'Create Post',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'sunvxptm': {
      'ko': 'Option 1',
      'en': '',
    },
    'w7j8giem': {
      'ko': '',
      'en': '',
    },
    'w0de8ozg': {
      'ko': '',
      'en': '',
    },
    'u2872bwn': {
      'ko': '',
      'en': '',
    },
    '6l4yacw8': {
      'ko': '',
      'en': '',
    },
    'zzju9325': {
      'ko': '',
      'en': '',
    },
    'jre3icc0': {
      'ko': '',
      'en': '',
    },
    'hsv8k048': {
      'ko': '',
      'en': '',
    },
    'c3e2m6cr': {
      'ko': '',
      'en': '',
    },
    'mcqgz4kr': {
      'ko': '',
      'en': '',
    },
    'ekrr5iu7': {
      'ko': '',
      'en': '',
    },
    'k3g9lzf6': {
      'ko': '',
      'en': '',
    },
    'cpk42jma': {
      'ko': '',
      'en': '',
    },
    '3qclwou6': {
      'ko': '',
      'en': '',
    },
    'qc1c9zq1': {
      'ko': '',
      'en': '',
    },
    'k6fdvy25': {
      'ko': '',
      'en': '',
    },
    '3pll7h82': {
      'ko': '',
      'en': '',
    },
    'tmhieuj1': {
      'ko': '',
      'en': '',
    },
    '2i0o74ll': {
      'ko': '',
      'en': '',
    },
    '3pnobyoy': {
      'ko': '',
      'en': '',
    },
    '0xoa4xqf': {
      'ko': '',
      'en': '',
    },
    'y87ndxrh': {
      'ko': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
