
/*
 * Generated file. Do not edit.
 *
 * Locales: 5
 * Strings: 3650 (730.0 per locale)
 *
 * Built on 2023-08-18 at 03:21 UTC
 */

import 'package:flutter/widgets.dart';

const AppLocale _baseLocale = AppLocale.en;
AppLocale _currLocale = _baseLocale;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale {
	en, // 'en' (base locale, fallback)
	ja, // 'ja'
	ko, // 'ko'
	zhHans, // 'zh-Hans'
	zhHant, // 'zh-Hant'
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn _t = _currLocale.translations;
_StringsEn get t => _t;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget.translations;
	}
}

class LocaleSettings {
	LocaleSettings._(); // no constructor

	/// Uses locale of the device, fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale useDeviceLocale() {
		final locale = AppLocaleUtils.findDeviceLocale();
		return setLocale(locale);
	}

	/// Sets locale
	/// Returns the locale which has been set.
	static AppLocale setLocale(AppLocale locale) {
		_currLocale = locale;
		_t = _currLocale.translations;

		// force rebuild if TranslationProvider is used
		_translationProviderKey.currentState?.setLocale(_currLocale);

		return _currLocale;
	}

	/// Sets locale using string tag (e.g. en_US, de-DE, fr)
	/// Fallbacks to base locale.
	/// Returns the locale which has been set.
	static AppLocale setLocaleRaw(String rawLocale) {
		final locale = AppLocaleUtils.parse(rawLocale);
		return setLocale(locale);
	}

	/// Gets current locale.
	static AppLocale get currentLocale {
		return _currLocale;
	}

	/// Gets base locale.
	static AppLocale get baseLocale {
		return _baseLocale;
	}

	/// Gets supported locales in string format.
	static List<String> get supportedLocalesRaw {
		return AppLocale.values
			.map((locale) => locale.languageTag)
			.toList();
	}

	/// Gets supported locales (as Locale objects) with base locale sorted first.
	static List<Locale> get supportedLocales {
		return AppLocale.values
			.map((locale) => locale.flutterLocale)
			.toList();
	}
}

/// Provides utility functions without any side effects.
class AppLocaleUtils {
	AppLocaleUtils._(); // no constructor

	/// Returns the locale of the device as the enum type.
	/// Fallbacks to base locale.
	static AppLocale findDeviceLocale() {
		final String? deviceLocale = WidgetsBinding.instance.window.locale.toLanguageTag();
		if (deviceLocale != null) {
			final typedLocale = _selectLocale(deviceLocale);
			if (typedLocale != null) {
				return typedLocale;
			}
		}
		return _baseLocale;
	}

	/// Returns the enum type of the raw locale.
	/// Fallbacks to base locale.
	static AppLocale parse(String rawLocale) {
		return _selectLocale(rawLocale) ?? _baseLocale;
	}
}

// context enums

// interfaces generated as mixins

// translation instances

late _StringsEn _translationsEn = _StringsEn.build();
late _StringsJa _translationsJa = _StringsJa.build();
late _StringsKo _translationsKo = _StringsKo.build();
late _StringsZhHans _translationsZhHans = _StringsZhHans.build();
late _StringsZhHant _translationsZhHant = _StringsZhHant.build();

// extensions for AppLocale

extension AppLocaleExtensions on AppLocale {

	/// Gets the translation instance managed by this library.
	/// [TranslationProvider] is using this instance.
	/// The plural resolvers are set via [LocaleSettings].
	_StringsEn get translations {
		switch (this) {
			case AppLocale.en: return _translationsEn;
			case AppLocale.ja: return _translationsJa;
			case AppLocale.ko: return _translationsKo;
			case AppLocale.zhHans: return _translationsZhHans;
			case AppLocale.zhHant: return _translationsZhHant;
		}
	}

	/// Gets a new translation instance.
	/// [LocaleSettings] has no effect here.
	/// Suitable for dependency injection and unit tests.
	///
	/// Usage:
	/// final t = AppLocale.en.build(); // build
	/// String a = t.my.path; // access
	_StringsEn build() {
		switch (this) {
			case AppLocale.en: return _StringsEn.build();
			case AppLocale.ja: return _StringsJa.build();
			case AppLocale.ko: return _StringsKo.build();
			case AppLocale.zhHans: return _StringsZhHans.build();
			case AppLocale.zhHant: return _StringsZhHant.build();
		}
	}

	String get languageTag {
		switch (this) {
			case AppLocale.en: return 'en';
			case AppLocale.ja: return 'ja';
			case AppLocale.ko: return 'ko';
			case AppLocale.zhHans: return 'zh-Hans';
			case AppLocale.zhHant: return 'zh-Hant';
		}
	}

	Locale get flutterLocale {
		switch (this) {
			case AppLocale.en: return const Locale.fromSubtags(languageCode: 'en');
			case AppLocale.ja: return const Locale.fromSubtags(languageCode: 'ja');
			case AppLocale.ko: return const Locale.fromSubtags(languageCode: 'ko');
			case AppLocale.zhHans: return const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans', );
			case AppLocale.zhHant: return const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', );
		}
	}
}

extension StringAppLocaleExtensions on String {
	AppLocale? toAppLocale() {
		switch (this) {
			case 'en': return AppLocale.en;
			case 'ja': return AppLocale.ja;
			case 'ko': return AppLocale.ko;
			case 'zh-Hans': return AppLocale.zhHans;
			case 'zh-Hant': return AppLocale.zhHant;
			default: return null;
		}
	}
}

// wrappers

GlobalKey<_TranslationProviderState> _translationProviderKey = GlobalKey<_TranslationProviderState>();

class TranslationProvider extends StatefulWidget {
	TranslationProvider({required this.child}) : super(key: _translationProviderKey);

	final Widget child;

	@override
	_TranslationProviderState createState() => _TranslationProviderState();

	static _InheritedLocaleData of(BuildContext context) {
		final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
		if (inheritedWidget == null) {
			throw 'Please wrap your app with "TranslationProvider".';
		}
		return inheritedWidget;
	}
}

class _TranslationProviderState extends State<TranslationProvider> {
	AppLocale locale = _currLocale;

	void setLocale(AppLocale newLocale) {
		setState(() {
			locale = newLocale;
		});
	}

	@override
	Widget build(BuildContext context) {
		return _InheritedLocaleData(
			locale: locale,
			child: widget.child,
		);
	}
}

class _InheritedLocaleData extends InheritedWidget {
	final AppLocale locale;
	Locale get flutterLocale => locale.flutterLocale; // shortcut
	final _StringsEn translations; // store translations to avoid switch call

	_InheritedLocaleData({required this.locale, required Widget child})
		: translations = locale.translations, super(child: child);

	@override
	bool updateShouldNotify(_InheritedLocaleData oldWidget) {
		return oldWidget.locale != locale;
	}
}

// pluralization feature not used

// helpers

final _localeRegex = RegExp(r'^([a-z]{2,8})?([_-]([A-Za-z]{4}))?([_-]?([A-Z]{2}|[0-9]{3}))?$');
AppLocale? _selectLocale(String localeRaw) {
	final match = _localeRegex.firstMatch(localeRaw);
	AppLocale? selected;
	if (match != null) {
		final language = match.group(1);
		final country = match.group(5);

		// match exactly
		selected = AppLocale.values
			.cast<AppLocale?>()
			.firstWhere((supported) => supported?.languageTag == localeRaw.replaceAll('_', '-'), orElse: () => null);

		if (selected == null && language != null) {
			// match language
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.startsWith(language) == true, orElse: () => null);
		}

		if (selected == null && country != null) {
			// match country
			selected = AppLocale.values
				.cast<AppLocale?>()
				.firstWhere((supported) => supported?.languageTag.contains(country) == true, orElse: () => null);
		}
	}
	return selected;
}

// translations

// Path: <root>
class _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build();

	/// Access flat map
	dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	late final Map<String, dynamic> _flatMap = _buildFlatMap();

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	String get k_1fdhj9g => 'This version does not support the message';
	String get k_06pujtm => 'Accept all contact requests';
	String get k_05nspni => 'Custom field';
	String get k_03fchyy => 'Group profile photo';
	String get k_03i9mfe => 'Group introduction';
	String get k_03agq58 => 'Group name';
	String get k_039xqny => 'Group notification';
	String get k_003tr0a => 'Group owner';
	String get k_002wddw => 'Mute';
	String get k_0got6f7 => 'Unmute';
	String get k_1uaqed6 => '[Custom]';
	String get k_0z2z7rx => '[Voice]';
	String get k_0y39ngu => '[Emoji]';
	String get k_0y1a2my => '[Image]';
	String get k_0z4fib8 => '[Video]';
	String get k_0y24mcg => '[Location]';
	String get k_0pewpd1 => '[Chat history]';
	String get k_13s8d9p => 'Unknown message';
	String get k_003qkx2 => 'Calendar';
	String get k_003n2pz => 'Camera';
	String get k_03idjo0 => 'Contacts';
	String get k_02k3k86 => 'Mic';
	String get k_003pm7l => 'Album';
	String get k_15ao57x => 'Album write';
	String get k_164m3jd => 'Local storage';
	String get k_03r6qyx => 'We need your approval to get information.';
	String get k_02noktt => 'Reject';
	String get k_00043x4 => 'Agree';
	String get k_003qzac => 'Yesterday';
	String get k_003r39d => '2 days ago';
	String get k_03fqp9o => 'Sun';
	String get k_003q7ba => 'Afternoon';
	String get k_003q7bb => 'Morning';
	String get k_003pu3h => 'Now';
	String get k_002rflt => 'Delete';
	String get k_1don84v => 'Failed to locate the original message';
	String get k_003q5fi => 'Copy';
	String get k_003prq0 => 'Forward';
	String get k_002r1h2 => 'Select';
	String get k_003j708 => 'Quote';
	String get k_003pqpr => 'Recall';
	String get k_03ezhho => 'Copied';
	String get k_11ctfsz => 'Not implemented';
	String get k_1hbjg5g => '[Group system message]';
	String get k_03tvswb => '[Unknown message]';
	String get k_155cj23 => 'You\'ve recalled a message.';
	String get k_0gapun3 => 'Edit it again';
	String get k_0003z7x => 'You';
	String get k_002wfe4 => 'Read';
	String get k_002wjlg => 'Unread';
	String get k_001nmhu => 'Open with another app';
	String get k_105682d => 'Failed to load the image';
	String get k_0pytyeu => 'Image saved successfully';
	String get k_0akceel => 'Failed to save the image';
	String get k_003rk1s => 'Save';
	String get k_04a0awq => '[Voice message]';
	String get k_105c3y3 => 'Failed to load the video';
	String get k_176rzr7 => 'Chat history';
	String get k_002r305 => 'Send';
	String get k_003n8b0 => 'Shoot';
	String get k_003tnp0 => 'File';
	String get k_0ylosxn => 'Custom message';
	String get k_0jhdhtp => 'Sending failed. The video cannot exceed 100 MB.';
	String get k_0am7r68 => 'Slide up to cancel';
	String get k_13dsw4l => 'Release to cancel';
	String get k_15jl6qw => 'Too short';
	String get k_0gx7vl6 => 'Press and hold to talk';
	String get k_15dlafd => 'One-by-one forward';
	String get k_15dryxy => 'Combine and forward';
	String get k_1eyhieh => 'Are you sure you want to delete the selected message?';
	String get k_118prbn => 'Search globally';
	String get k_003ll77 => 'Draft';
	String get k_13dq4an => 'Automatic approval';
	String get k_0l13cde => 'Admin approval';
	String get k_11y8c6a => 'Disallow group joining';
	String get k_16payqf => 'Group joining mode';
	String get k_0vzvn8r => 'Modify group name';
	String get k_038lh6u => 'Group management';
	String get k_0k5wyiy => 'Set admin';
	String get k_0goiuwk => 'Mute all';
	String get k_1g889xx => 'If you mute all, only the group owner and admin can speak.';
	String get k_0wlrefq => 'Add group members to mute';
	String get k_0goox5g => 'Mute';
	String get k_08daijh => 'Admin role canceled successfully';
	String get k_0k5u935 => 'Add admin';
	String get k_003ngex => 'Complete';
	String get k_03enyx5 => 'Group member';
	String get k_03erpei => 'Admin';
	String get k_0qi9tno => 'Group owner and admin';
	String get k_0uj7208 => 'Failed to view the group members due to network disconnection';
	String get k_0ef2a12 => 'Modify my nickname in group';
	String get k_1aajych => '2–20 characters, including digits, letters, and underscores';
	String get k_137pab5 => 'My nickname in group';
	String get k_0ivim6d => 'No group notice';
	String get k_03eq6cn => 'Group notice';
	String get k_002vxya => 'Modify';
	String get k_03gu05e => 'Chat room';
	String get k_03b4f3p => 'Meeting group';
	String get k_03avj1p => 'Public group';
	String get k_03asq2g => 'Work group';
	String get k_03b3hbi => 'Unknown group';
	String get k_03es1ox => 'Group type';
	String get k_003mz1i => 'Agree';
	String get k_003lpre => 'Reject';
	String get k_003qk66 => 'Profile photo';
	String get k_003lhvk => 'Nickname';
	String get k_003ps50 => 'Account';
	String get k_15lx52z => 'Status';
	String get k_003qgkp => 'Gender';
	String get k_003m6hr => 'Date of birth';
	String get k_0003v6a => 'Male';
	String get k_00043x2 => 'Female';
	String get k_03bcjkv => 'Not set';
	String get k_11s0gdz => 'Modify nickname';
	String get k_0p3j4sd => 'Allows only letters, digits, and underscores';
	String get k_15lyvdt => 'Modify status';
	String get k_0vylzjp => 'None';
	String get k_1hs7ese => 'Modify it later';
	String get k_03exjk7 => 'Remarks';
	String get k_0s3skfd => 'Block user';
	String get k_17fpl3y => 'Pin chat to top';
	String get k_0p3b31s => 'Modify remarks';
	String get k_11zgnfs => 'Profile';
	String get k_1tez2xl => 'No status';
	String get k_0vjj2kp => 'Group chat history';
	String get k_003n2rp => 'Select';
	String get k_1m9exwh => 'Recent contacts';
	String get k_119nwqr => 'The input cannot be empty';
	String get k_0pzwbmg => 'Video saved successfully';
	String get k_0aktupv => 'Failed to save the video';
	String get k_1yemzyd => 'Received a message';
	String get k_13sajrj => 'Emoji message';
	String get k_13sjeb7 => 'File message';
	String get k_0yd2ft8 => 'Group notification';
	String get k_13s7mxn => 'Image message';
	String get k_13satlt => 'Location message';
	String get k_00bbtsx => 'Combined message';
	String get k_13sqwu4 => 'Voice message';
	String get k_13sqjjp => 'Video message';
	String get k_1c3us5n => 'The current group does not support @all';
	String get k_11k579v => 'Invalid statements detected';
	String get k_0n9pyxz => 'The user does not exist';
	String get k_1bjwemh => 'Search by user ID';
	String get k_0i553x0 => 'Enter verification information';
	String get k_031ocwx => 'Enter remarks and list';
	String get k_003ojje => 'Remarks';
	String get k_003lsav => 'List';
	String get k_167bdvq => 'My contacts';
	String get k_156b4ut => 'Contact request sent';
	String get k_1lqbsib => 'The group chat does not exist';
	String get k_03h153m => 'Search by group ID';
	String get k_0oxak3r => 'Group request sent';
	String get k_1aszp2k => 'Are you sure you want to send the message again?';
	String get k_0h1ygf8 => 'Call initiated';
	String get k_0h169j0 => 'Call canceled';
	String get k_0h13jjk => 'Call accepted';
	String get k_0h19hfx => 'Call rejected';
	String get k_0obi9lh => 'No answer';
	String get k_1ht1b80 => 'Receiving';
	String get k_0d5z4m5 => 'Select reminder receiver';
	String get k_1665ltg => 'Initiate call';
	String get k_003kthh => 'Photo';
	String get k_119ucng => 'The image cannot be empty';
	String get k_0h1svv1 => 'Delete group member';
	String get k_0h1g636 => 'Add group member';
	String get k_0hpukyx => 'View more group members';
	String get k_0qtsar0 => 'Mute notifications';
	String get k_1m9dftc => 'All contacts';
	String get k_0em4gyz => 'All group chats';
	String get k_09kga0d => 'More chat history';
	String get k_09khmso => 'Related chat records';
	String get k_03ignw6 => 'All';
	String get k_03icaxo => 'Custom';
	String k_1qbg9xc({required Object option8}) => '$option8 to ';
	String k_1wq5ubm({required Object option7}) => '$option7 changed ';
	String k_0y5pu80({required Object option6}) => '$option6 quit group chat';
	String k_0nl7cmd({required Object option5}) => 'Invite $option5 to the group';
	String k_1ju5iqw({required Object option4}) => 'Remove $option4 from the group';
	String k_1ovt677({required Object option3}) => 'User $option3 joined the group';
	String k_0k05b8b({required Object option2}) => '$option2 was ';
	String k_0wm4xeb({required Object option2}) => 'System message: $option2';
	String k_0nbq9v3({required Object option2}) => 'Call duration: $option2';
	String k_0i1kf53({required Object option2}) => '[File] $option2';
	String k_1gnnby6({required Object option2}) => ' attempted to access your $option2';
	String k_1wh4atg({required Object option2}) => '$option2 minutes ago';
	String k_07sh7g1({required Object option2}) => '$option2, yesterday';
	String k_1pj8xzh({required Object option2}) => 'My user ID: $option2';
	String k_0py1evo({required Object option2}) => 'Status: $option2';
	String k_1kvj4i2({required Object option2}) => '$option2 recalled a message';
	String k_1v0lbpp({required Object option2}) => '$option2 currently does not support this file type. You can use another app to open and preview the file.';
	String k_0torwfz({required Object option2}) => 'Selected successfully: $option2';
	String k_0i1bjah({required Object option1}) => '$option1 recalled a message';
	String k_1qzxh9q({required Object option3}) => 'Call duration: $option3';
	String k_0wrgmom({required Object option1}) => '[Voice Call]：$option1';
	String k_06ix2f0({required Object option2}) => '[Video Call]：$option2';
	String k_08o3z5w({required Object option1}) => '[File] $option1';
	String k_0ezbepg({required Object option2}) => '$option2[Someone@me]';
	String k_1ccnht1({required Object option2}) => '$option2[@all]';
	String k_1k3arsw({required Object option2}) => 'Admin ($option2/10)';
	String k_1d4golg({required Object option1}) => 'Group members ($option1 members)';
	String k_1bg69nt({required Object option1}) => '$option1 members';
	String k_00gjqxj({required Object option1}) => 'Status: $option1';
	String k_0c29cxr({required Object option1}) => '$option1 messages are found';
	String k_1twk5rz({required Object option1}) => 'Chat history with $option1';
	String get k_18o68ro => 'Allow ';
	String get k_1onpf8u => ' to access your camera to take photos, record videos, and make video calls.';
	String get k_17irga5 => ' to access your microphone to send voice messages, record videos, and make voice/video calls.';
	String get k_0572kc4 => ' to access your photos to send images and videos.';
	String get k_0slykws => ' to access your album to save images and videos.';
	String get k_119pkcd => ' to access your files to view, select and send files in a chat.';
	String get k_03c49qt => 'Authorize now';
	String get k_0nt2uyg => 'Back to the bottom';
	String k_04l16at({required Object option1}) => '$option1 new messages';
	String get k_13p3w93 => 'Someone @ me';
	String get k_18w5uk6 => '@ all';
	String get k_0jmujgh => 'You are receiving other files';
	String get k_12s5ept => 'Message details';
	String k_0mxa4f4({required Object option1}) => '$option1 read';
	String k_061tue3({required Object option2}) => '$option2 unread';
	String k_1vn4xq1({required Object adminMember}) => 'remove $adminMember from admin';
	String get k_0e35hsw => 'Please allow us to use your camera to capture photos and videos sending to your contacts and make video calls.';
	String get k_0dj6yr7 => 'Please allow us to use your microphone for sending voice message, make video/audio calls.';
	String get k_003qnsl => 'Save';
	String get k_0s3rtpw => 'Please allow us to access the media and files on your devices, in order to select and send to your contact, or save from them.';
	String k_0tezv85({required Object option2}) => ' Would like to access $option2';
	String get k_002rety => ' permission. ';
	String get k_0gqewd3 => 'Later';
	String get k_03eq4s1 => 'Authorize Now';
	String k_0on1aj2({required Object option2}) => '$option2 messages @ me';
	String get k_09j4izl => '[You were mentioned] ';
	String get k_1oqtjw0 => '[@All] ';
	String k_1x5a9vb({required Object option1}) => 'This is: $option1';
	String get k_14n31e7 => 'Add Group';
	String k_08nc5j1({required Object option1}) => 'Group type: $option1';
	String k_1josu12({required Object option1}) => '$option1 group joining request(s)';
	String k_0n2x5s0({required Object option2}) => 'Verification message: $option2';
	String get k_03c1nx0 => 'Agreed';
	String get k_03aw9w8 => 'Rejected';
	String get k_038ryos => 'Handle now';
	String get k_0gw8pum => 'Add Group';
	String get k_1gcvfrj => 'Please fill in the remarks';
	String get k_002v9zj => 'Confirm';
	String get k_10oqrki => 'Tap to take photo.';
	String get k_0f8b3ws => 'Load failed';
	String get k_11cm5lm => 'focus manually';
	String get k_002uzrd => 'preview';
	String get k_003qkn3 => 'record';
	String get k_003k6a7 => 'take picture';
	String get k_0bqpqco => 'shooting button';
	String get k_1626ozl => 'stop recording';
	String get k_003lvmu => 'Front';
	String get k_003lued => 'Rear';
	String get k_003lwzh => 'External';
	String get k_002qzi3 => 'off';
	String get k_003pufb => 'auto';
	String get k_0apm0ze => 'flash when taking photos';
	String get k_157zog5 => 'always flash';
	String k_0cfyqhy({required Object option1}) => '$option1 camera preview';
	String k_0phctlz({required Object option2}) => 'Flash mode: $option2';
	String k_02vfqe0({required Object option3}) => 'Switch to the $option3 camera';
	String get k_0f0y9ex => 'Message too short';
	String get k_0ln70tk => 'Unable to launch URL';
	String get k_11a3jdv => 'Tap to take photo. Long press to record video.';
	String get k_1k18miv => 'Please provide a life cycle hook navigating back to home or other pages.';
	String get k_0gmwbnd => 'All muted';
	String get k_0got2zr => 'You are muted';
	String get k_0y9jck8 => 'You have to deal with navigating for search bar';
	String get k_0yum3tv => 'Please provide according custom widgets if you tends to you use it.';
	String get k_125ru1w => 'Disband the group';
	String get k_0jtzmqa => 'You will not receive message from this group after disbanding.';
	String get k_129uzfn => 'Deleted failed';
	String get k_0h18bbi => 'Hang up the call';
	String get k_154q2hn => 'Calling timed out';
	String get k_1mnjtnc => 'Call declined by user';
	String get k_0l0mysn => 'Error: ';
	String get k_03fn6rg => 'No response';
	String get k_003luo3 => 'Busy';
	String get k_154jvfi => 'You have been kicked offline';
	String get k_1sp7jp6 => 'canceled the call';
	String get k_1045haa => 'Awaiting Response';
	String get k_1gq7jv7 => 'Invite you to call';
	String get k_003m7ey => 'Hang up';
	String get k_03ectox => 'Speaker';
	String get k_003q2a4 => 'Answer';
	String get k_03ftugq => 'Camera';
	String get k_10setgr => 'Switch to voice call';
	String get k_1g7i9jz => 'Switch the camera';
	String get k_15ml1ls => 'Awaiting Response';
	String get k_0nj9x9s => 'Invite you to a multi-person call.';
	String get k_1vtto3l => 'The other person participating:';
	String get k_0h147mx => 'In call';
	String k_0j6aylo({required Object option1}) => 'Duration: $option1';
	String get k_1fu9ahv => 'All Mute Status';
	String get k_1ualc52 => 'Check the data from others.';
	String get k_0szluvp => 'Set the online status of others';
	String get k_0f4rnf8 => 'This user is your contact.';
	String get k_1tdkom4 => 'You are already in this group';
	String get k_1p2lyuz => 'Typing...';
	String k_1g8wfpy({required Object option1}) => '...total $option1';
	String get k_12rv9vw => 'Reaction Detail';
	String get k_0n9p7g8 => 'Group not exists';
	String get k_1tdh5vn => 'Not a member';
	String get k_0h1q57v => 'No member';
	String k_0y5drq1({required Object option1}) => '[Details >>]($option1)';
	String get k_03pjp61 => '[Sticker]';
	String get k_1jpvzul => '[Custom message]';
	String get k_03u3bh1 => '[File]';
	String get k_1odsnsw => '[Group message]';
	String get k_03sel4t => '[Image]';
	String get k_03sfw3r => '[Location]';
	String get k_03xpuwq => '[Multiple messages]';
	String get k_07ycxwo => '[No element]';
	String get k_03rc9vz => '[Text]';
	String get k_046uopf => '[Video]';
	String get k_0ehmsun => 'Insufficient disk storage space, it is recommended to clean up to obtain a better experience';
	String get k_003kmos => 'Image';
	String get k_002s86q => 'Video';
	String get k_06bk5ei => 'Video is available with .mp4 only';
	String get k_13opfxf => 'Search is not available in WEB';
	String get k_1i0o0y2 => 'Only available on Android/iOS temporarily';
	String k_045dtzl({required Object option1}) => 'Chat History for $option1';
	String get k_0t0131u => 'group profile data';
	String get k_18ok8xz => 'message receiving options';
	String get k_03ax3ks => 'Group Profile';
	String k_0sqvoqo({required Object option1}) => 'grant $option1 as administrator';
	String k_1gbg1v8({required Object option1}) => 'remove $option1 from administrator';
	String get k_17k64g4 => 'Group created.';
	String get k_05mn217 => 'Please integrate the sticker plugin before using it, see https://cloud.tencent.com/document/product/269/70746.';
	String get k_14j17nz => 'No stickers yet.';
	String get k_1tmlcf0 => 'New call coming, answering failed due to lack of permission, please make sure camera/microphone permission is granted.';
	String get k_0fvjexh => 'Downloading';
	String get k_1cdagzz => 'Added to download queue and waiting';
	String get k_0g4vojc => 'Start downloading';
	String get k_026hiq5 => 'Loading messages';
	String get k_0b9q00i => 'Tencent Building/////No. 10000 Shennan road, Nanshan district, Shenzhen';
	String get k_03fw6h1 => 'Shenzhen City';
	String get k_0f7mdn7 => 'Search Failed';
	String get k_158cssa => 'Tencent Map';
	String get k_157htdw => 'AMap';
	String get k_157im4z => 'Baidu Map';
	String get k_157m20e => 'Apple Map';
	String get k_1bqk7kl => 'Amap not detected';
	String get k_12ba1nv => 'Tencent Map not detected';
	String get k_1dz8sci => 'Baidu Map not detected';
	String get k_0f7fvky => 'Opening failed';
	String get k_1l2v0we => 'In Tencent Building, 18 meters near the China Merchants Bank';
	String get k_10o8gk2 => 'Search for location';
	String get k_10o86v7 => 'Unknown location';
	String get k_03f15qk => 'Blocked Users';
	String get k_0uc5cnb => 'Beta test in progress. Channel creation is not supported now.';
	String get k_003nevv => 'Cancel';
	String get k_003rzap => 'OK';
	String get k_0s5ey0o => 'TRTC';
	String get k_03gpl3d => 'Hello';
	String get k_0352fjr => 'Failed to enter the channel due to network disconnection';
	String get k_0d7n018 => 'End topic';
	String get k_0d826hk => 'Pin topic to top';
	String get k_15wcgna => 'Ended successfully';
	String get k_15wo7xu => 'Pinned to top successfully';
	String get k_002s934 => 'Topic';
	String get k_18g3zdo => 'Tencent Cloud · Chat';
	String get k_1m8vyp0 => 'New contacts';
	String get k_0elz70e => 'Group chats';
	String get k_18tb4mo => 'No contact';
	String get k_18nuh87 => 'Contact us';
	String get k_1uf134v => 'To provide feedback or suggestions, join our QQ group at 788910197.';
	String get k_0xlhhrn => 'Online time: 10 AM to 8 PM, Mon through Fri';
	String get k_17fmlyf => 'Clear chat';
	String get k_0dhesoz => 'Unpin from top';
	String get k_002sk7x => 'Pin to top';
	String get k_0gmpgcg => 'No conversation';
	String get k_002tu9r => 'Performance';
	String get k_1tmcw5c => 'Complete your topic title';
	String get k_1cnmslk => 'A tag must be selected';
	String get k_0z3ytji => 'Topic created successfully';
	String get k_1a8vem3 => 'Creator exception';
	String get k_0eskkr1 => 'Select a discussion forum';
	String get k_0d7plb5 => 'Create topic';
	String get k_144t0ho => '---- Related discussions ----';
	String get k_0pnz619 => 'Enter the topic title';
	String get k_136v279 => '+ Tag (add at least one tag)';
	String get k_04hjhvp => 'Discussion forum parameter exception';
	String get k_002r79h => 'All';
	String get k_03ejkb6 => 'Joined';
	String get k_172tngw => 'Topic (disconnected)';
	String get k_0rnmfc4 => 'No topic in the discussion forum';
	String get k_1pq0ybn => 'You haven\'t joined any topic yet';
	String get k_0bh95w0 => 'Failed to join the topic due to network disconnection';
	String get k_002twmj => 'Group chat';
	String get k_09kalj0 => 'Clear chat history';
	String get k_18qjstb => 'Transfer group owner';
	String get k_14j5iul => 'Delete and exit';
	String get k_0jtutmw => 'You will not be able to receive messages from this group chat after you exit';
	String get k_08k00l9 => 'Loading…';
	String get k_197r4f7 => 'Tencent service connected successfully';
	String get k_1s5xnir => 'Failed to initialize the Chat SDK';
	String get k_15bxnkw => 'Network connection lost';
	String get k_002r09z => 'Channels';
	String get k_003nvk2 => 'Chats';
	String get k_1jwxwgt => 'Connecting…';
	String get k_03gm52d => 'Contacts';
	String get k_003k7dc => 'Me';
	String get k_14yh35u => 'Log in';
	String get k_0st7i3e => 'Try our features such as group chat and voice/video call';
	String get k_0cr1atw => 'Chinese mainland';
	String get k_0jsvmjm => 'Enter your mobile number';
	String get k_1lg8qh2 => 'Incorrect mobile number format';
	String get k_03jia4z => 'No network connection';
	String get k_007jqt2 => 'Verification code sent successfully';
	String get k_1t2zg6h => 'Image verification failed';
	String get k_1a55aib => 'Verification code exception';
	String get k_16r3sej => 'Country/Region';
	String get k_15hlgzr => 'Select your country code';
	String get k_1bnmt3h => 'Please search in English';
	String get k_003kv3v => 'Search';
	String get k_03fei8z => 'Mobile number';
	String get k_03aj66h => 'Verification code';
	String get k_1m9jtmw => 'Enter the verification code';
	String get k_0y1wbxk => 'Send';
	String get k_0orhtx0 => ' Privacy Agreement ';
	String get k_00041m1 => 'and';
	String get k_0opnzp6 => ' User Agreement ';
	String get k_161ecly => 'Network unavailable';
	String get k_11uz2i8 => 'Reconnect network';
	String get k_1vhzltr => 'Tencent Cloud Chat';
	String get k_0j433ys => 'Tencent Cloud TRTC';
	String get k_12u8g8l => 'Disclaimer';
	String get k_1p0j8i3 => 'This is a test product provided by Tencent Cloud. It is for trying out features, but not for commercial use. To follow regulatory requirements of the authority, voice and video-based interactions performed via Tencent will be recorded and archived throughout the whole process. It is strictly prohibited to disseminate via Tencent any pornographic, abusive, violent, political and other noncompliant content.';
	String get k_0k7qoht => 'Accept all friend requests';
	String get k_0gyhkp5 => 'Require approval for friend requests';
	String get k_121ruco => 'Reject all friend requests';
	String get k_003kfai => 'Unknown';
	String get k_1kvyskd => 'Modification failed due to network disconnection';
	String get k_1wmkneq => 'Require approval';
	String get k_1eitsd0 => 'About Tencent Cloud Chat';
	String get k_1919d6m => 'Privacy Policy';
	String get k_16kts8h => 'Log out';
	String get k_129scag => 'Friend deleted successfully';
	String get k_094phq4 => 'Failed to add the friend';
	String get k_13spdki => 'Send message';
	String get k_0h22snw => 'Voice call';
	String get k_0h20hg5 => 'Video call';
	String get k_1666isy => 'Delete friend';
	String get k_0r8fi93 => 'Friend added successfully';
	String get k_02qw14e => 'Friend request sent';
	String get k_0n3md5x => 'The current user has been blocked';
	String get k_14c600t => 'Modify remarks';
	String get k_1f811a4 => 'Allows only digits, letters and underscores';
	String get k_11z7ml4 => 'Profile';
	String get k_0003y9x => 'None';
	String get k_1679vrd => 'Add as friend';
	String get k_03ibg5h => 'Mon';
	String get k_03i7hu1 => 'Tue';
	String get k_03iaiks => 'Wed';
	String get k_03el9pa => 'Thu';
	String get k_03i7ok1 => 'Fri';
	String get k_03efxyg => 'Sat';
	String get k_03ibfd2 => 'Sun';
	String get k_003ltgm => 'Location';
	String get k_04dqh36 => 'No new contact';
	String get k_0mnxjg7 => 'Welcome to Tencent Cloud Chat. To protect the security of your personal information, we have updated the Privacy Policy, mainly improving the specific content and purpose for user information collection and adding the use of third-party SDKs.';
	String get k_1545beg => 'Please tap ';
	String get k_11x8pvm => 'and read them carefully. If you agree to the content, tap "Accept and continue" to start using our product and service.';
	String get k_17nw8gq => 'Accept and continue';
	String get k_1nynslj => 'Reject and quit';
	String get k_1j91bvz => 'Let TUIKit pick a profile photo for you?';
	String get k_0wqhgor => 'Personal information collection list';
	String get k_12rfxml => 'Third-party information sharing list';
	String get k_131g7q4 => 'Deregister account';
	String get k_03fel2u => 'Version';
	String get k_1ajt0b1 => 'Failed to get the current location';
	String get k_0lhm9xq => 'Search initiated successfully';
	String get k_0fdeled => 'Failed to initiate the search';
	String get k_1yh0a50 => 'mapDidLoad - The map has been loaded';
	String get k_16758qw => 'Add friend';
	String get k_0elt0kw => 'Add group chat';
	String get k_0s3p3ji => 'No blocked users';
	String k_02slfpm({required Object errorMessage}) => 'Error: $errorMessage';
	String get k_1m8zuj4 => 'Select contact';
	String k_0vwtop2({required Object getMsg}) => 'Message obtained: $getMsg';
	String k_0upijvs({required Object message}) => 'Failed to get the discussion forum list: $message';
	String k_0v5hlay({required Object message}) => 'Failed to create the topic: $message';
	String get k_0em28sp => 'No group chat';
	String k_0owk5ss({required Object failedReason}) => 'Login failed: $failedReason';
	String get k_0glj9us => 'New Chat';
	String get k_1631kyh => 'Create work group';
	String get k_1644yii => 'Create public group';
	String get k_1fxfx04 => 'Create meeting group';
	String get k_1cnkqc9 => 'Create voice-video group';
	String k_1mw45lz({required Object errorReason}) => 'Login failed: $errorReason';
	String get k_0epvs61 => 'Change skin';
	String get k_002ri2g => 'Log in';
	String k_1o7lf2y({required Object errorMessage}) => 'Server error: $errorMessage';
	String k_118l7sq({required Object requestErrorMessage}) => 'Request error: $requestErrorMessage';
	String get k_003nfx9 => 'Deep';
	String get k_003rvjp => 'Light';
	String get k_003rtht => 'Bright';
	String get k_003qxiw => 'Fantasy';
	String k_0s5zoi3({required Object option1}) => 'Error: $option1';
	String k_0i8egqa({required Object option8}) => 'Message obtained: $option8';
	String k_0pokyns({required Object option8}) => 'Failed to get the discussion forum list: $option8';
	String k_1y03m8a({required Object option8}) => 'Failed to create the topic: $option8';
	String k_1v6uh9c({required Object option8}) => 'Login failed: $option8';
	String k_0t5a9hl({required Object option1}) => 'Login failed: $option1';
	String k_0k3uv02({required Object option8}) => 'Server error: $option8';
	String k_1g9o3kz({required Object option8}) => 'Request error: $option8';
	String get k_10s6v2i => ' Information Collection Statement ';
	String get k_0pasxq8 => ' Information Sharing Statement ';
	String get k_14cahuz => 'About Tencent Cloud · Chat';
	String get k_0llnalm => 'SDK Version';
	String get k_13dyfii => 'APP Version';
	String get k_12h52zh => 'Privacy Policy';
	String get k_0fxhhwb => 'User Agreement';
	String get k_18z2e6q => 'APP Tencent Cloud · Chat(\'this product\') is a test product provided by Tencent Cloud and Tencent Cloud enjoys the copyright and ownership of this product. This product is only used for functional experience and must not be used for any commercial purposes.In order to comply with the regulatory requirements of relevant departments the voice and video interactions of this product are archived throughout the entire voice and video interactions. Any pornography,abusive,violent and politically related content is strictly prohibited during use.';
	String get k_0zu7dd7 => 'Personal Information Collected';
	String get k_0mcqhgh => 'Information Shared with Third Parties';
	String get k_12eqaty => 'Confirm to deregister account';
	String get k_0ziqsr6 => 'Account deregistered successfully';
	String get k_002qtgt => 'Deregister Account';
	String k_0rvdu91({required Object option1}) => 'After deregister this account, you will be unable to use it, and the related data will be permanently deleted. Current account: $option1';
	String get k_15d22qk => 'Deregister Account';
	String get k_036uv3f => 'Tencent Cloud · Chat';
	String get k_167916k => 'WeChat contacts';
	String get k_03euwr1 => 'Moments';
	String get k_0cxccci => 'invites you to a video call';
	String get k_06lhh4b => 'invites you to a voice call';
	String get k_1ywo9ut => 'Tencent Cloud · Chat is developed based on QQ messaging module. Chat, conversation, group, data management and LVB on-screen comments can be easily implemented by Chat SDK. Also, connecting with other products such as whiteboards through signaling messages is supported. We can fully covering your business scenarios. Our Chat SDK can support major platforms and Mini Program, to meet communication needs.';
	String get k_0ios26v => 'WeChat is not detected';
	String get k_1jg6d5x => ' Summary of Privacy Policy ';
	String get k_0selni4 => ' Privacy Policy ';
	String get k_003r6vf => 'Log in';
	String get k_03f2zbs => 'Share to ';
	String get k_0cfkcaz => 'Chat Message';
	String get k_1rmkb2w => 'New Chat Message';
	String get k_1lg375c => 'New Chat Message Remind';
	String k_1t0akzp({required Object option1}) => 'After deregister this account, you will be unable to use it, and the related data will be permanently deleted. Current account: $option1';
	String get k_1699p6d => 'Tencent Building';
	String get k_1ngd60h => 'No. 10000 Shennan avenue, Shenzhen';
	String get k_1na29vg => 'Location messages is not supported in DEMO temporarily';
	String get k_1xmms9t => 'Request to Join Group';
	String get k_0dla4vp => 'To provide feedback or suggestions,\n please join our QQ group at';
	String get k_1odrjd1 => 'Online time: 10 AM to 8 PM, Mon through Fri';
	String get k_1bh903m => 'Copied successfully';
	String get k_16264lp => 'Copy group number';
	String get k_18ger86 => 'Tencent Cloud Chat';
	String get k_1vd70l1 => 'Chat SDK serving hundreds of millions of QQ users';
	String get k_036phup => 'Tencent Cloud Chat';
	String get k_0gfsln9 => 'Information modified';
	String get k_0ow4akh => 'Please configure Baidu AK according to the README guidelines of Demo to experience the location messaging capability of DEMO.';
	String get k_1kzh3lo => 'Please follow the guidelines of this document to https://docs.qq.com/doc/DSVliWE9acURta2dL to quickly experience location messaging capabilities.';
	String get k_161zzkm => 'Please enter a User ID';
	String get k_1veosyv => 'Please config the secret KEY in the environment variable';
	String get k_03exdnb => 'User ID';
	String get k_16kquu8 => 'Current path';
	String get k_0fbvuqs => 'Copy';
	String get k_16j153h => 'Tencent Cloud Chat APP ("this APP") is a product provided by Tencent Cloud aims of demonstration, which enjoys the copyright and ownership of this APP. This APP is for functional experience only and must not be used for any commercial purpose. It is strictly forbidden to spread any illegal content such as pornography, abuse, violence and terrorism, politics and so on.';
	String get k_13ghyf8 => '[Security Reminder] This APP is only for experiencing the features of Tencent Cloud Chat, and cannot be used for any other purposes.';
	String get k_0gt6cro => 'Complain here';
	String k_03595fk({required Object option1}) => ' and $option1 more';
	String k_1gpzgni({required Object option2}) => 'group with $option2 people';
	String get k_02lfg57 => 'New Group Chat';
	String get k_17ifd8i => 'Welcome to Tencent Cloud Chat SDK and TUIKit on Flutter';
	String get k_1f0ms23 => 'Message read status';
	String get k_1c0x9ha => 'Determines if the reading status shows for your messages and whether others can know about if you read.';
	String get k_1dzhdr5 => 'Online status';
	String get k_0mwsniq => 'Determines if the online status shows for you contacts or friends.';
	String get k_0f7h6ay => 'Connection failed';
	String get k_0wreawq => 'Map picker is not currently available on Web, please try it by the mobile app.';
	String get k_03c56co => 'Not provide';
	String get k_1klqdh1 => 'Letters, numbers, underscores only';
	String get k_03el5lp => 'Not Specified';
	String get k_0554lam => 'Work Group';
	String get k_1hyz1ua => 'Public Group';
	String get k_1s8hjin => 'Meeting Croup';
	String get k_16ejs8f => 'AVChatRoom';
	String get k_1rqdzbh => 'Community';
	String get k_1aue1b6 => 'Users can join the group only after being invited by group members. The invitation does not need to be accepted by the invitee or approved by the group owner.';
	String get k_0uldek7 => 'The group owner can designate group admins. To join the group, a user needs to search for the group ID and send a request, and the request needs to be approved by the group owner or an admin before the user can join the group.';
	String get k_1nv4w25 => 'Allows users to join and leave freely and view historical messages sent before they join the group. Meeting groups are ideal for scenarios such as voice/video conferencing and online education.';
	String get k_1wbmoof => 'Allows users to join and exit freely, supports an unlimited number of members, and does not store message history. AVChatRoom can be used with Cloud Streaming Services to support on-screen comment chat scenarios.';
	String get k_11mlyaa => 'A community group allows users to join and exit freely, supports up to 100,000 members, and stores message history. To join the group, a user needs to search for the group ID and send an application, and the application does not need to be approved by an admin before the user can join the group.';
	String get k_0ylgdrb => 'The Demo of Community is under construction, and will be available later';
	String get k_0elsjm2 => 'Create Group';
	String get k_1iw4gdk => 'Allows all';
	String get k_0i5ffqf => 'Need verification';
	String get k_111mgqj => 'Forbid all requests';
	String get k_03go2lu => 'Not specified';
	String get k_15zb99m => 'Methods for adding me';
	String get k_1llp7tu => 'User not found';
	String get k_0tbyqyb => 'Loading…';
	String get k_0td1p3f => 'Saving…';
	String get k_1ui0gai => 'Search for those contents';
	String k_1loix7s({required Object groupType}) => 'Group Type: $groupType';
	String get k_1uaov41 => 'Search Chat History';
	String get k_03agld7 => 'Group Tips';
	String get k_002wkr3 => 'Translate';
	String get k_13g4hxv => 'Translate successfully';
	String get k_003mmoz => 'Rocket';
	String get k_003nogx => 'Airplane';
	String get k_003pjj6 => 'Crown';
	String get k_000340k => 'Flower';
	String k_0cv8ngo({required Object option1}) => 'send out $option1';
	String get k_03a2zjl => 'send gifts';
	String get k_0003yq8 => '';
	String get k_13k5228 => 'liked the live room';
	String get k_1k0rrvn => 'Say something...';
	String get k_13jzi5y => 'enter the live room';
	String get k_14asoqo => 'Unsubscribe';
	String get k_003ohwe => 'Subscribe';
	String k_1h33pzv({required Object option1}) => '$option1 Fans |';
	String k_07skbgr({required Object option2}) => ' $option2  Subscribe';
	String k_1c99nb3({required Object option1}) => '$option1 W+';
	String get k_19mfrrb => 'Online audience';
	String get k_13m65um => 'Audience information';
	String k_19kj6te({required Object option1}) => '$option1 likes';
	String k_1qqgjra({required Object option3}) => '$option3 new messages';
	String get k_0uubyjr => 'New Messages';
	String get k_0kg1wsx => 'Choose Group Type';
	String get k_003m6xh => 'Settings';
	String get k_18nszwl => 'About Us';
	String get k_003txiw => 'About';
	String get k_12fp4oc => 'Official Website';
	String get k_1391sy5 => 'Code once, deploy to all platforms';
	String get k_002vu95 => 'Welcome';
	String get k_0o6nt4d => 'Read and agree ';
	String get k_12l2415 => 'all the terms and conditions';
	String get k_0rcqou9 => 'Copyright © 2013-2023 Tencent Cloud. All Rights Reserved.';
	String get k_003lmhx => 'Groups';
	String get k_1s251fa => 'Contacts & Groups';
	String get k_0cjp3hx => 'Please choose contacts or groups';
	String get k_12veoax => 'Channel: ';
	String get k_002rfh9 => 'International';
	String get k_0864lq3 => 'If there\'s anything unclear or you have more ideas, feel free to contact us!';
	String get k_12625cy => 'Enter Group';
	String get k_131lvxd => 'My Account';
	String get k_002qep7 => 'Interface';
	String get k_002vbyp => 'Appearance';
	String get k_16owrwc => 'Light';
	String get k_01zair9 => 'Dark (Coming soon)';
	String get k_002skx2 => 'Theme';
	String get k_002wzvs => 'Language';
	String get k_002woft => 'English';
	String get k_129eldp => 'Chinese, Traditional';
	String get k_129ekqk => 'Chinese, Simplified';
	String get k_002whil => 'Japanese';
	String get k_002wqld => 'Korean';
	String get k_003is6v => 'General';
	String get k_12s2mfc => 'Details';
	String get k_12fsjye => 'Websites';
	String get k_16uejmj => 'Me';
	String get k_0dtyory => 'Feedback';
	String get k_03oy6z4 => 'All SDKs';
	String get k_03bh54n => 'Source Code';
	String get k_0s3sgel => 'Unblocked';
	String get k_16as7eq => 'Message Reaction';
	String get k_003s12u => 'Reply';
	String get k_003s38r => 'More';
	String get k_003molk => 'Sticker';
	String get k_165bbw6 => 'Message History';
	String get k_13sqc0z => 'Clear Messages';
	String get k_0glns86 => 'Delete Conversation';
	String get k_13s99rx => 'Clear Messages';
	String get k_11vsa3j => 'Leave';
	String get k_11vvszp => 'Disband';
	String get k_15i9w72 => 'Administrator';
	String get k_0p3espj => 'Ser Remark';
	String get k_118sw9v => 'Search';
	String get k_1xn4cn2 => 'Runtime detection';
	String get k_0sy25ey => 'Please install Microsoft Edge WebView2 runtime environment before using this sample app.';
	String get k_0g4tlsb => 'Download';
	String get k_13ozr8k => 'Not available';
	String get k_16yiku8 => 'Local search is not available on Web. Please use Mobile App or Desktop.';
	String get k_003lz6t => 'conversation';
	String k_1xf4yre({required Object option1}) => 'Send to $option1';
	String get k_003por5 => 'Screenshot';
	String get k_0c67rdb => 'Allow multiple selections';
	String get k_11lav8q => 'Anonymous poll';
	String get k_137cjfq => 'Show the results';
	String get k_0e3jces => 'Enter options';
	String get k_0dcbhiz => 'Add option';
	String get k_003r4qf => 'Publish';
	String get k_1xa5q8q => 'Enter poll topic';
	String get k_003nv7m => '';
	String get k_002ym5d => ' polled, ';
	String get k_003pfxt => '';
	String get k_0fxdch1 => 'Poll plugin not initialized, please initialize first.';
	String get k_1lzoopr => 'Not a poll message, please check.';
	String get k_03ahybu => 'Polled';
	String get k_11lamu8 => 'Poll now';
	String get k_0b9h7nq => 'Poll ended';
	String get k_0c7zem1 => 'Send again';
	String get k_11l1qvo => 'End poll';
	String get k_0z314c0 => '[Multiple choice]';
	String get k_0z2zcm7 => '[Single choice]';
	String get k_0y8ap8v => '[Public]';
	String get k_0y4cs5n => '[Private]';
	String get k_0y6agtt => '[Anonymous]';
	String get k_0y68wmo => '[Real name]';
	String k_1pssgjf({required Object option1}) => 'Expected: $option1';
	String k_0x9zkqf({required Object option2}) => 'Polled: $option2';
	String get k_09ikyqj => 'View all options';
	String k_0h2jp2z({required Object option1}) => '$option1 polled';
	String get k_0y2zr3y => '[Poll]';
	String get k_11lci1l => 'Create poll';
	String get k_003l988 => 'Poll';
	String get k_1rw7s82 => ' to access your album to send videos.';
	String get k_003rcwm => 'Open';
	String get k_1698c42 => 'Show in Finder';
	String get k_066fxsz => 'Show in Folder';
	String get k_0k432y2 => 'Unable to send, contains folders.';
	String get k_002wb4y => 'Conversation';
	String get k_0od4qyh => 'Video Error';
	String get k_1cdzld5 => 'Product information';
	String get k_19qt9y2 => 'Service evaluation';
	String get k_13s7ltw => 'Card message';
	String get k_13ajr25 => 'Online customer service';
	String get k_0ti5mfz => 'No online customer service available';
	String get k_1bfkxg9 => 'Transfer of 0KB files is not supported';
	String get k_0vvsw7g => 'File processing exception';
	String get k_06e224q => '[Message recalled by administrator]';
	String get k_1u1mjcl => '[Message recalled]';
	String get k_1qcqxea => 'Select Multiple Chats';
	String get k_1qgmc20 => 'Select a Chat';
	String get k_1d8nx6f => 'Open in New Window';
	String get k_1hz05ax => 'Downloading original resources, please wait...';
	String get k_1fszgep => 'Chat with us on';
	String get k_1xtvvs9 => 'Professional Official Technical Support';
	String get k_0cdljc3 => 'Join';
	String get k_167dvo3 => 'Choose Contact';
	String get k_1u1jwb8 => 'Telegram';
}

// Path: <root>
class _StringsJa implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJa.build();

	/// Access flat map
	@override dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	@override late final Map<String, dynamic> _flatMap = _buildFlatMap();

	@override late final _StringsJa _root = this; // ignore: unused_field

	// Translations
	@override String get k_1yemzyd => '1件のメッセージ';
	@override String get k_0ylosxn => 'カスタムメッセージ';
	@override String get k_13sajrj => '顔絵文字メッセージ';
	@override String get k_13sjeb7 => 'ファイルメッセージ';
	@override String get k_0yd2ft8 => 'グループ通知メッセージ';
	@override String get k_13s7mxn => '画像メッセージ';
	@override String get k_13satlt => '位置メッセージ';
	@override String get k_00bbtsx => 'メッセージをまとめて転送';
	@override String get k_13sqwu4 => '音声メッセージ';
	@override String get k_13sqjjp => 'ビデオメッセージ';
	@override String get k_1fdhj9g => 'このバージョンではこのメッセージがサポートされていません';
	@override String get k_06pujtm => '任意ユーザからの友達追加を許可';
	@override String get k_0gyhkp5 => '要認証';
	@override String get k_121ruco => '任意ユーザからの友達追加を許可しない';
	@override String get k_05nspni => 'カスタムフィールド';
	@override String get k_03fchyy => 'グループのプロフィール画像';
	@override String get k_03i9mfe => 'グループ概要';
	@override String get k_03agq58 => 'グループ名';
	@override String get k_039xqny => 'グループ通知';
	@override String get k_003tr0a => 'グループマスター';
	@override String get k_03c49qt => '承認へ';
	@override String get k_002wddw => '発言禁止';
	@override String get k_0got6f7 => '発言禁止解除';
	@override String get k_1uaqed6 => '[カスタマイズ]';
	@override String get k_0z2z7rx => '[音声]';
	@override String get k_0y39ngu => '[顔絵文字]';
	@override String get k_0y1a2my => '[画像]';
	@override String get k_0z4fib8 => '[ビデオ]';
	@override String get k_0y24mcg => '[位置]';
	@override String get k_0pewpd1 => '[チャット履歴]';
	@override String get k_13s8d9p => '不明なメッセージ';
	@override String get k_1c3us5n => '現在のグループでは@全員を使用できません';
	@override String get k_11k579v => '発言にng表現があります';
	@override String get k_003qkx2 => 'カレンダー';
	@override String get k_003n2pz => 'カメラ';
	@override String get k_03idjo0 => '連絡先';
	@override String get k_003ltgm => '位置';
	@override String get k_02k3k86 => 'マイク';
	@override String get k_003pm7l => 'アルバム';
	@override String get k_15ao57x => '写真をアルバムに保存';
	@override String get k_164m3jd => 'ローカルストレージ';
	@override String get k_03r6qyx => 'あなたの許可を得たうえで情報を取得します';
	@override String get k_02noktt => '許可しない';
	@override String get k_00043x4 => 'OK';
	@override String get k_003qzac => '昨日';
	@override String get k_003r39d => '一昨日';
	@override String get k_03fqp9o => '日曜日';
	@override String get k_03ibg5h => '月曜日';
	@override String get k_03i7hu1 => '火曜日';
	@override String get k_03iaiks => '水曜日';
	@override String get k_03el9pa => '木曜日';
	@override String get k_03i7ok1 => '金曜日';
	@override String get k_03efxyg => '土曜日';
	@override String get k_003q7ba => '午後';
	@override String get k_003q7bb => '午前';
	@override String get k_003pu3h => '現在';
	@override String get k_0n9pyxz => 'ユーザが存在しません';
	@override String get k_1bjwemh => 'ユーザidを検索';
	@override String get k_003kv3v => '検索';
	@override String get k_16758qw => '友達を追加';
	@override String get k_0i553x0 => '検証情報を入力';
	@override String get k_031ocwx => '備考とグループを入力してください';
	@override String get k_003ojje => '備考';
	@override String get k_003lsav => 'グループ';
	@override String get k_167bdvq => 'マイ友達';
	@override String get k_156b4ut => '友達申請を送信しました';
	@override String get k_002r305 => '送信';
	@override String get k_03gu05e => 'チャットルーム';
	@override String get k_03b4f3p => '会議グループ';
	@override String get k_03avj1p => 'パブリックグループ';
	@override String get k_03asq2g => 'ワークグループ';
	@override String get k_03b3hbi => '不明なグループ';
	@override String k_1loix7s({required Object groupType}) => 'グループタイプ：$groupType';
	@override String get k_1lqbsib => 'このグループチャットが存在しません';
	@override String get k_03h153m => 'グループidを検索';
	@override String get k_0oxak3r => 'グループ申請を送信しました';
	@override String get k_002rflt => '削除';
	@override String get k_1don84v => 'オリジナルメッセージを特定できません';
	@override String get k_003q5fi => 'コピー';
	@override String get k_003prq0 => '転送';
	@override String get k_002r1h2 => '複数選択';
	@override String get k_003j708 => '引用';
	@override String get k_003pqpr => '取消し';
	@override String get k_03ezhho => 'コピーしました';
	@override String get k_11ctfsz => '未実装';
	@override String get k_1hbjg5g => '[グループのシステムメッセージ]';
	@override String get k_03tvswb => '[不明なメッセージ]';
	@override String get k_155cj23 => '1件のメッセージを取り消しました。';
	@override String get k_0gapun3 => '再編集';
	@override String get k_1aszp2k => 'このメッセージを再送しますか？';
	@override String get k_003rzap => 'OK';
	@override String get k_003nevv => 'キャンセル';
	@override String get k_0003z7x => 'あなた';
	@override String get k_002wfe4 => '既読';
	@override String get k_002wjlg => '未読';
	@override String get k_0h1ygf8 => '通話を開始';
	@override String get k_0h169j0 => '通話をキャンセル';
	@override String get k_0h13jjk => '通話を受け入れる';
	@override String get k_0h19hfx => '通話を拒否';
	@override String get k_0obi9lh => '不在着信';
	@override String get k_001nmhu => 'その他のアプリで開く';
	@override String get k_1ht1b80 => '受信中';
	@override String get k_105682d => '画像の読込みに失敗しました';
	@override String get k_0pytyeu => '画像を保存しました';
	@override String get k_0akceel => '画像の保存に失敗しました';
	@override String get k_003rk1s => '保存';
	@override String get k_04a0awq => '[音声メッセージ]';
	@override String get k_105c3y3 => 'ビデオの読込みに失敗しました';
	@override String get k_176rzr7 => 'チャット履歴';
	@override String get k_0d5z4m5 => 'リマインド対象を選択';
	@override String get k_003ngex => '完了';
	@override String get k_1665ltg => '通話を開始';
	@override String get k_003n8b0 => '撮影';
	@override String get k_003kthh => '写真';
	@override String get k_003tnp0 => 'ファイル';
	@override String get k_0jhdhtp => '送信に失敗しました。ビデオは100MB以内にしてください';
	@override String get k_119ucng => '画像を空にすることはできません';
	@override String get k_13dsw4l => '離してキャンセル';
	@override String get k_0am7r68 => '上にスライドして送信をキャンセルします';
	@override String get k_15jl6qw => 'メッセージが短すぎます！';
	@override String get k_0gx7vl6 => '長押しして録音';
	@override String get k_15dlafd => '1件ずつ転送';
	@override String get k_15dryxy => 'まとめて転送';
	@override String get k_1eyhieh => '選択したメッセージを削除';
	@override String get k_17fmlyf => 'チャットをクリア';
	@override String get k_0dhesoz => 'ピン留めを解除';
	@override String get k_002sk7x => 'ピン留め';
	@override String get k_003ll77 => '下書き';
	@override String get k_03icaxo => 'カスタマイズ';
	@override String get k_1uaov41 => 'チャット内容を検索';
	@override String get k_003kfai => '不明';
	@override String get k_13dq4an => '自動承認';
	@override String get k_0l13cde => '管理者の承認';
	@override String get k_11y8c6a => 'グループへの参加を禁止';
	@override String get k_1kvyskd => 'ネットワークに接続していませんので、変更できません';
	@override String get k_16payqf => 'グループへの参加方法';
	@override String get k_0vzvn8r => 'グループ名を変更';
	@override String get k_038lh6u => 'グループ管理';
	@override String get k_0k5wyiy => '管理者を設定';
	@override String get k_0goiuwk => '全員発言禁止';
	@override String get k_1g889xx => '全員発言禁止を有効にすると、グループマスターと管理者のみが発言できます。';
	@override String get k_0wlrefq => '発言を禁止するグループメンバーを追加';
	@override String get k_0goox5g => '発言禁止を設定';
	@override String get k_08daijh => '管理者の権限を取り消しました';
	@override String get k_0k5u935 => '管理者を追加';
	@override String get k_03enyx5 => 'グループメンバー';
	@override String get k_0h1svv1 => 'グループメンバーを削除';
	@override String get k_0h1g636 => 'グループメンバーを追加';
	@override String get k_0uj7208 => 'ネットワークに接続していませんので、グループメンバーを参照できません';
	@override String get k_0hpukyx => '詳細なグループメンバーを表示';
	@override String get k_0qtsar0 => '通知をミュート';
	@override String get k_0ef2a12 => 'マイグループ名を変更';
	@override String get k_1aajych => '2～20桁の中国語、英数字、下線を使用してください';
	@override String get k_137pab5 => 'マイグループニックネーム';
	@override String get k_0ivim6d => 'グループのお知らせがない';
	@override String get k_03eq6cn => 'グループのお知らせ';
	@override String get k_002vxya => '編集';
	@override String get k_17fpl3y => 'チャットをピン留め';
	@override String get k_03es1ox => 'グループタイプ';
	@override String get k_003mz1i => '許可';
	@override String get k_003lpre => '拒否';
	@override String get k_003qk66 => 'プロフィール画像';
	@override String get k_003lhvk => 'ニックネーム';
	@override String get k_003ps50 => 'アカウント';
	@override String get k_15lx52z => 'パーソナライズ署名';
	@override String get k_003qgkp => '性別';
	@override String get k_003m6hr => '誕生日';
	@override String get k_0003v6a => '男性';
	@override String get k_00043x2 => '女性';
	@override String get k_03bcjkv => '未設定';
	@override String get k_11s0gdz => 'ニックネームを変更';
	@override String get k_0p3j4sd => '中国語、英数字、下線のみを使用できます';
	@override String get k_15lyvdt => 'パーソナライズ署名を変更';
	@override String get k_0vylzjp => 'この人は何も書いていません';
	@override String get k_1hs7ese => 'オンライン後にこれを変更';
	@override String get k_03exjk7 => '表示名';
	@override String get k_0s3skfd => 'ブラックリストに追加';
	@override String get k_0p3b31s => '表示名を変更';
	@override String get k_0003y9x => 'なし';
	@override String get k_11zgnfs => 'プロフィール';
	@override String get k_1tez2xl => 'パーソナライズ署名はありません';
	@override String get k_118prbn => 'グローバル検索';
	@override String get k_1m9dftc => 'すべての連絡先';
	@override String get k_0em4gyz => 'すべてのグループチャット';
	@override String get k_002twmj => 'グループチャット';
	@override String get k_09kga0d => '詳細なチャット履歴';
	@override String get k_09khmso => '関連するチャット履歴';
	@override String get k_0vjj2kp => 'グループチャットのチャット履歴';
	@override String get k_003n2rp => '選択';
	@override String get k_03ignw6 => 'すべての人';
	@override String get k_03erpei => '管理者';
	@override String get k_0qi9tno => 'グループマスター、管理者';
	@override String get k_1m9exwh => '最近の連絡先';
	@override String get k_119nwqr => '入力してください';
	@override String get k_0pzwbmg => 'ビデオを保存しました';
	@override String get k_0aktupv => 'ビデオの保存に失敗しました';
	@override String k_1qbg9xc({required Object option8}) => '$option8は ';
	@override String k_1wq5ubm({required Object option7}) => '$option7が変更';
	@override String k_0y5pu80({required Object option6}) => '$option6がグループチャットを離れました';
	@override String k_0nl7cmd({required Object option5}) => '$option5をグループに招待しました';
	@override String k_1ju5iqw({required Object option4}) => '$option4がグループから削除されました';
	@override String k_1ovt677({required Object option3}) => 'ユーザ$option3がグループチャットに参加しました';
	@override String k_0k05b8b({required Object option2}) => '$option2が';
	@override String k_0wm4xeb({required Object option2}) => 'システムメッセージ$option2';
	@override String k_0nbq9v3({required Object option2}) => '通話時間：$option2';
	@override String k_0i1kf53({required Object option2}) => '[ファイル] $option2';
	@override String k_1gnnby6({required Object option2}) => 'あなたの$option2にアクセスしようとします';
	@override String k_1wh4atg({required Object option2}) => '$option2分前';
	@override String k_07sh7g1({required Object option2}) => '昨日$option2';
	@override String k_1pj8xzh({required Object option2}) => 'マイユーザid：$option2';
	@override String k_0py1evo({required Object option2}) => 'パーソナライズ署名：$option2';
	@override String k_1kvj4i2({required Object option2}) => '$option2がメッセージを取り消しました';
	@override String k_1v0lbpp({required Object option2}) => '「$option2」ではこのようなファイルを開くことができません。他のアプリで開いてください';
	@override String k_0torwfz({required Object option2}) => '選択完了$option2';
	@override String k_0i1bjah({required Object option1}) => '$option1がメッセージを取り消しました';
	@override String k_1qzxh9q({required Object option3}) => '通話時間：$option3';
	@override String k_0wrgmom({required Object option1}) => '[音声通話]：$option1';
	@override String k_06ix2f0({required Object option2}) => '[ビデオ通話]：$option2';
	@override String k_08o3z5w({required Object option1}) => '[ファイル] $option1';
	@override String k_0ezbepg({required Object option2}) => '$option2 [誰かが@私をメンションしました]';
	@override String k_1ccnht1({required Object option2}) => '$option2 [@すべての人がメンションされました]';
	@override String k_1k3arsw({required Object option2}) => '管理者 ($option2/10)';
	@override String k_1d4golg({required Object option1}) => 'グループメンバー($option1人)';
	@override String k_1bg69nt({required Object option1}) => '$option1人';
	@override String k_00gjqxj({required Object option1}) => 'パーソナライズ署名：$option1';
	@override String k_0c29cxr({required Object option1}) => '$option1件のメッセージ';
	@override String k_1twk5rz({required Object option1}) => '$option1とのチャット履歴';
	@override String k_1vn4xq1({required Object adminMember}) => '$adminMemberを管理者から削除';
	@override String get k_0e35hsw => '写真/ビデオ送信、ビデオ通話を使用するには、カメラへのアクセスを許可する必要があります。';
	@override String get k_0dj6yr7 => '音声メッセージ送信、ビデオ撮影、音声/ビデオ通話を使用するには、マイクへのアクセスを許可する必要があります。';
	@override String get k_003qnsl => 'ストレージ';
	@override String get k_0s3rtpw => 'アルバム中の画像やビデオを選択し友達に送信する、または、デバイスに何かを保存するには、デバイス上の写真やメディアコンテンツへのアクセスを許可する必要があります。';
	@override String k_0tezv85({required Object option2}) => ' $option2の取得を要求';
	@override String get k_002rety => '権限';
	@override String get k_18o68ro => '次の権限を付与する必要があります';
	@override String get k_1onpf8u => ' カメラへのアクセス権限。写真/ビデオの撮影やビデオ通話などの機能を使用することに必要です。';
	@override String get k_17irga5 => ' マイクへのアクセス権限。音声メッセージージの送信、ビデオの撮影、音声/ビデオ通話などの機能を使用することに必要です。';
	@override String get k_0572kc4 => ' 写真へのアクセス権限。画像やビデオの送信などの機能を使用することに必要です。';
	@override String get k_0slykws => ' アルバムへの書込み権限。画像やビデオの保存などの機能を使用することに必要です。';
	@override String get k_119pkcd => ' ファイル読取り・書込み権限。チャットで画像を表示または選択する機能やファイルを送信する機能などを使用することに必要です。';
	@override String get k_0gqewd3 => '後にし魔性';
	@override String get k_03eq4s1 => '有効化へ';
	@override String get k_0nt2uyg => '最新の場所に戻る';
	@override String k_04l16at({required Object option1}) => '$option1件の新しいメッセージ';
	@override String get k_13p3w93 => '誰かが@私をメンションしました';
	@override String get k_18w5uk6 => '@すべての人がメンションされました';
	@override String get k_0jmujgh => '他のファイルを受信中';
	@override String get k_12s5ept => 'メッセージの詳細';
	@override String k_0mxa4f4({required Object option1}) => '$option1人既読';
	@override String k_061tue3({required Object option2}) => '$option2人未読';
	@override String get k_18qjstb => 'グループマスターの権限を譲渡';
	@override String k_0on1aj2({required Object option2}) => '$option2件のメッセージが@私をメンションしました';
	@override String get k_09j4izl => '[誰かが@私をメンションしました] ';
	@override String get k_1oqtjw0 => '[@すべての人がメンションされました] ';
	@override String k_1x5a9vb({required Object option1}) => '私は：$option1';
	@override String get k_14n31e7 => 'グループ参加申請';
	@override String k_08nc5j1({required Object option1}) => 'グループタイプ：$option1';
	@override String k_1josu12({required Object option1}) => '$option1件のグループ参加申請';
	@override String k_0n2x5s0({required Object option2}) => '認証メッセージ：$option2';
	@override String get k_03c1nx0 => '同意しました';
	@override String get k_03aw9w8 => '拒否しました';
	@override String get k_038ryos => '処理へ';
	@override String get k_0gw8pum => 'グループ参加申請';
	@override String get k_1gcvfrj => '備考を入力してください';
	@override String get k_002v9zj => 'OK';
	@override String get k_10oqrki => 'タップして写真を撮る';
	@override String get k_0f8b3ws => '読込みに失敗しました';
	@override String get k_11cm5lm => '手動フォーカス';
	@override String get k_002uzrd => 'プレビュー';
	@override String get k_003qkn3 => '録画';
	@override String get k_003k6a7 => '写真を撮る';
	@override String get k_0bqpqco => '撮影ボタン';
	@override String get k_1626ozl => '録画を停止';
	@override String get k_003lvmu => '前面';
	@override String get k_003lued => '背面';
	@override String get k_003lwzh => '外付け';
	@override String get k_002qzi3 => '閉じる';
	@override String get k_003pufb => '自動学習';
	@override String get k_0apm0ze => '撮影時フラッシュを有効にする';
	@override String get k_157zog5 => '常にフラッシュを有効にする';
	@override String k_0cfyqhy({required Object option1}) => '$option1画面プレビュー';
	@override String k_0phctlz({required Object option2}) => 'フラッシュモード：$option2';
	@override String k_02vfqe0({required Object option3}) => '$option3カメラに切り替える';
	@override String get k_0f0y9ex => 'メッセージが短すぎます！';
	@override String get k_0ln70tk => 'urlにアクセスできません';
	@override String get k_11a3jdv => 'タップして写真を撮る。長押しして録画する';
	@override String get k_1k18miv => 'グループ退出ライフサイクル関数を渡し、トップページまたは他のページに戻るナビゲーションメソッドを提供してください';
	@override String get k_0gmwbnd => '全員発言禁止中';
	@override String get k_0got2zr => '発言が禁止されています';
	@override String get k_0y9jck8 => 'Search Barをカスタマイズし、クリックしてジャンプする処理を実装する必要があります';
	@override String get k_0yum3tv => 'カスタムエリアを使用する場合、該当するコンポーネントをprofilewidgetbuilderに渡してください';
	@override String get k_09kalj0 => 'チャット履歴をクリア';
	@override String get k_14j5iul => '削除して退出';
	@override String get k_125ru1w => 'グループを解散';
	@override String get k_0jtutmw => '退出後に、このグループのチャットメッセージを受信しなくなります';
	@override String get k_0jtzmqa => '解散後に、このグループのチャットメッセージを受信しなくなります';
	@override String get k_0r8fi93 => '友達を追加しました';
	@override String get k_02qw14e => '友達申請を送信しました';
	@override String get k_0n3md5x => 'ユーザがブラックリストに登録されています';
	@override String get k_094phq4 => '友達の追加に失敗しました';
	@override String get k_129scag => '友達を削除しました';
	@override String get k_129uzfn => '友達の削除に失敗しました';
	@override String get k_1666isy => '友達をクリア';
	@override String get k_1679vrd => '友達として追加';
	@override String get k_0h18bbi => '通話を終了';
	@override String get k_154q2hn => '不在着信';
	@override String get k_1mnjtnc => '相手が拒否しました';
	@override String get k_0l0mysn => 'エラーが発生しました。';
	@override String get k_03fn6rg => '応答なし';
	@override String get k_003luo3 => 'ビジー';
	@override String get k_154jvfi => '強制的にオフラインにされました';
	@override String get k_1sp7jp6 => '通話をキャンセルしました';
	@override String get k_1045haa => '承諾を待機中...';
	@override String get k_1gq7jv7 => 'あなたと通話しようとしています...';
	@override String get k_003m7ey => '拒否';
	@override String get k_03ectox => 'スピーカー';
	@override String get k_003q2a4 => '通話';
	@override String get k_03ftugq => 'カメラ';
	@override String get k_10setgr => '音声通話に切り替える';
	@override String get k_1g7i9jz => 'カメラに切り替える';
	@override String get k_15ml1ls => '応答待ち';
	@override String get k_0nj9x9s => 'グループ通話に招待されました';
	@override String get k_1vtto3l => '通話に参加している人:';
	@override String get k_0h147mx => '通話中';
	@override String k_0j6aylo({required Object option1}) => '通話時間：$option1';
	@override String get k_1fu9ahv => '全員発言禁止中';
	@override String get k_1ualc52 => '相手が持ってきたデータを見てみよう';
	@override String get k_0szluvp => '相手のオンライン状態を設定';
	@override String get k_0f4rnf8 => 'このユーザはすでに友達として追加されています';
	@override String get k_1tdkom4 => 'あなたはすでにグループメンバーになっています';
	@override String get k_1p2lyuz => '相手が入力中...';
	@override String k_1g8wfpy({required Object option1}) => '...計$option1人';
	@override String get k_12rv9vw => '応答の詳細';
	@override String get k_0n9p7g8 => 'グループは存在しません';
	@override String get k_1tdh5vn => 'あなたはグループメンバーではありません';
	@override String get k_0h1q57v => 'グループメンバーはありません';
	@override String k_0y5drq1({required Object option1}) => '[詳細を表示 >>]($option1)';
	@override String get k_03pjp61 => '[顔絵文字メッセージ]';
	@override String get k_1jpvzul => '[カスタムメッセージ]';
	@override String get k_03u3bh1 => '[ファイルメッセージ]';
	@override String get k_1odsnsw => '[グループメッセージ]';
	@override String get k_03sel4t => '[画像メッセージ]';
	@override String get k_03sfw3r => '[位置メッセージ]';
	@override String get k_03xpuwq => '[メッセージをまとめる]';
	@override String get k_07ycxwo => '[エレメントはありません]';
	@override String get k_03rc9vz => '[テキストメッセージ]';
	@override String get k_046uopf => '[ビデオメッセージ]';
	@override String get k_0ehmsun => 'デバイスのストレージ容量が不足しています。ユーザーエクスペリエンスを確保するために、不要なデータをクリアしてください';
	@override String get k_003kmos => '画像';
	@override String get k_002s86q => 'ビデオ';
	@override String get k_06bk5ei => 'ビデオメッセージはmp4フォーマットのみをサポートします';
	@override String get k_13opfxf => 'Web側では検索がサポートされていません';
	@override String get k_1i0o0y2 => '現在、対応OSはAndroid/iOSのみです';
	@override String k_045dtzl({required Object option1}) => '$option1とのチャット履歴';
	@override String get k_0t0131u => 'グループプロフィール情報';
	@override String get k_18ok8xz => 'メッセージの受信方法';
	@override String get k_03ax3ks => 'グループプロフィール';
	@override String k_0sqvoqo({required Object option1}) => '$option1を管理者として設定';
	@override String k_1gbg1v8({required Object option1}) => '$option1を管理者から削除';
	@override String get k_17k64g4 => 'グループチャットを作成しました。';
	@override String get k_05mn217 => 'ステッカープラグインはまだインストールされていません。ステッカーに関連する機能を使用するには、こちらのドキュメントに従ってインストールしてください。https://cloud.tencent.com/document/product/269/70746';
	@override String get k_14j17nz => 'ステッカーはありません';
	@override String get k_1tmlcf0 => '新しい着信がありましたが、権限がないため出られません。カメラ/マイクがオンになっていることを確認してください。';
	@override String get k_0fvjexh => 'ダウンロード中...';
	@override String get k_1cdagzz => 'ダウンロード待ちキューに追加されました。他のファイルをダウンロード中です';
	@override String get k_0g4vojc => 'ダウンロードを開始';
	@override String get k_026hiq5 => 'メッセージリストを読み込み中';
	@override String get k_0b9q00i => 'テンセントビル/////深セン市南山区深南大道10000番';
	@override String get k_03fw6h1 => '深セン市';
	@override String get k_0f7mdn7 => '検索に失敗しました';
	@override String get k_158cssa => 'Tencent地図';
	@override String get k_157htdw => 'AMap';
	@override String get k_157im4z => 'Baidu地図';
	@override String get k_157m20e => 'Apple Map';
	@override String get k_1bqk7kl => 'AMapが見つかりませんでした';
	@override String get k_12ba1nv => 'Tencent地図が見つかりませんでした';
	@override String get k_1dz8sci => 'Baidu地図が見つかりませんでした';
	@override String get k_0f7fvky => '開けませんでした';
	@override String get k_1l2v0we => 'テンセントビル内、招商銀行信息研開ビルと約18メートル離れているところ';
	@override String get k_10o8gk2 => '場所を検索';
	@override String get k_10o86v7 => '不明な場所';
	@override String get k_0elt0kw => 'グループチャットを追加';
	@override String get k_03f15qk => 'ブラックリスト';
	@override String get k_0s3p3ji => 'ブラックリストはありません';
	@override String get k_0uc5cnb => '内部テスト中のため、チャネルの作成はサポートされていません。';
	@override String get k_0s5ey0o => 'Tencent Real-Time Communication (TRTC)';
	@override String get k_03gpl3d => 'こんにちは';
	@override String get k_0352fjr => 'ネットワークに接続していないため、チャネルに入ることができませんでした';
	@override String get k_0d7n018 => 'トピックを終了';
	@override String get k_0d826hk => 'トピックをピン留め';
	@override String get k_15wcgna => '終了しました';
	@override String get k_15wo7xu => 'ピン留めしました';
	@override String k_02slfpm({required Object errorMessage}) => 'エラーが発生しました$errorMessage';
	@override String get k_0h22snw => '音声通話';
	@override String get k_0h20hg5 => 'ビデオ通話';
	@override String get k_002s934 => 'トピック';
	@override String get k_18g3zdo => 'Tencent Cloud Chat';
	@override String get k_1m8vyp0 => '新しい連絡先';
	@override String get k_0elz70e => 'マイグループチャット';
	@override String get k_18tb4mo => '連絡先はありません';
	@override String get k_18nuh87 => 'お問い合わせ';
	@override String get k_1uf134v => 'フィードバックやアドバイスのために、qqグループ:788910197に参加してください';
	@override String get k_0xlhhrn => '受付時間：月曜日~金曜日の午前10時~午後8時';
	@override String get k_0gmpgcg => 'セッションはありません';
	@override String get k_1m8zuj4 => '連絡先を選択';
	@override String get k_002tu9r => 'パフォーマンス';
	@override String k_0vwtop2({required Object getMsg}) => '取得したメッセージ:$getMsg';
	@override String k_0upijvs({required Object message}) => 'フォーラムリストの取得に失敗しました$message';
	@override String get k_1tmcw5c => 'トピックのタイトルを補足してください';
	@override String get k_1cnmslk => 'タグを選択する必要があります';
	@override String k_0v5hlay({required Object message}) => 'トピックの作成に失敗しました$message';
	@override String get k_0z3ytji => 'トピックを作成しました';
	@override String get k_1a8vem3 => '作成者エラー';
	@override String get k_0eskkr1 => 'フォーラムを選択';
	@override String get k_0d7plb5 => 'トピックを作成';
	@override String get k_144t0ho => '---- 関連のディスカッション ----';
	@override String get k_0pnz619 => 'トピックのタイトルを入力してください';
	@override String get k_136v279 => '+タグ（最低限1つ追加すること）';
	@override String get k_04hjhvp => 'フォーラムパラメータエラー';
	@override String get k_002r79h => 'すべて';
	@override String get k_03ejkb6 => '参加済み';
	@override String get k_172tngw => 'トピック（未接続）';
	@override String get k_0rnmfc4 => 'このフォーラムにはトピックがありません';
	@override String get k_1pq0ybn => 'いかなるトピックも参加していません';
	@override String get k_0bh95w0 => 'ネットワークに接続していないため、トピックへの参加に失敗しました';
	@override String get k_0em28sp => 'グループチャットはありません';
	@override String get k_04dqh36 => '新しい連絡先はありません';
	@override String get k_08k00l9 => '読み込み中…';
	@override String get k_197r4f7 => 'Tencentサービスに接続しました';
	@override String get k_1s5xnir => 'SDKの初始化に失敗しました';
	@override String k_0owk5ss({required Object failedReason}) => 'ログインに失敗しました$failedReason';
	@override String get k_15bxnkw => 'ネットワーク接続が切断されました';
	@override String get k_0glj9us => '通話を開始';
	@override String get k_1631kyh => 'ワークグループを作成';
	@override String get k_1644yii => 'ソーシャルコミュニケーショングループを作成';
	@override String get k_1fxfx04 => '会議グループを作成';
	@override String get k_1cnkqc9 => 'ライブストリーミンググループを作成';
	@override String get k_002r09z => 'チャネル';
	@override String get k_003nvk2 => 'メッセージ';
	@override String get k_1jwxwgt => '接続中...';
	@override String get k_03gm52d => '連絡先';
	@override String get k_003k7dc => 'マイ';
	@override String get k_14yh35u => 'ログイン';
	@override String get k_0st7i3e => 'グループチャット、音声/ビデオ通話などの機能を体験';
	@override String get k_0cr1atw => '中国大陸';
	@override String get k_0mnxjg7 => 'Tencent Cloud Chatへようこそ。個人情報を保護するために、『プライバシーポリシー』を更新しました。主な更新内容として、ユーザ情報を収集するにあたっての具体的な収集内容、収集目的の修正と、サードパーティsdkの利用などの内容追加です。';
	@override String get k_1545beg => '次の　';
	@override String get k_0opnzp6 => '『利用規約』';
	@override String get k_00041m1 => 'と';
	@override String get k_0orhtx0 => '『プライバシーポリシー』';
	@override String get k_11x8pvm => 'を読んでください。内容に同意すれば、「同意して続行」をクリックして製品とサービスをご利用ください!';
	@override String get k_17nw8gq => '同意して続行';
	@override String get k_1nynslj => '同意せず終了';
	@override String get k_0jsvmjm => '携帯番号を入力してください';
	@override String get k_1lg8qh2 => '携帯番号のフォーマットが正しくありません';
	@override String get k_03jia4z => 'ネットワークに接続していません';
	@override String get k_007jqt2 => '認証コードを送信しました';
	@override String get k_1a55aib => '認証コードエラー';
	@override String k_1mw45lz({required Object errorReason}) => 'ログインに失敗しました$errorReason';
	@override String get k_16r3sej => '国/地域';
	@override String get k_15hlgzr => '国番号を選択してください';
	@override String get k_1bnmt3h => '英語で検索してください';
	@override String get k_03fei8z => '携帯番号';
	@override String get k_03aj66h => '認証コード';
	@override String get k_1m9jtmw => '認証コードを入力してください';
	@override String get k_0y1wbxk => '認証コードを取得';
	@override String get k_002ri2g => 'ログイン';
	@override String get k_161ecly => 'ネットワークはありません';
	@override String get k_11uz2i8 => 'ネットワークへ再接続';
	@override String get k_1vhzltr => 'Tencent Cloud Chat';
	@override String get k_0j433ys => 'Tencent Real-Time Communication (TRTC)';
	@override String get k_0epvs61 => 'スキンを変更';
	@override String get k_12u8g8l => '免責事項';
	@override String get k_1p0j8i3 => 'Tencent Cloud Chat（以降、本製品）は、Tencent Cloudが提供するテスト用製品です。本製品の著作権および所有権はTencent Cloudに帰属します。本製品は機能を体験するためのものであり、商用目的で使用することはできません。監督部門の要件を満たすために、本製品を使用し音声またはビデオでやり取りする全過程が記録されます。本製品を利用中に、ポルノ、暴言、暴力・テロ、政治関連など違法なコンテンツの流布は固く禁じられています。';
	@override String get k_0k7qoht => '任意ユーザからの友達追加を許可';
	@override String get k_1j91bvz => 'TUIKitがあなたのプロファイル画像を選択しますか？';
	@override String get k_1wmkneq => '私を友達として追加する時に認証する';
	@override String get k_1eitsd0 => 'Tencent Cloud Chatについて';
	@override String get k_1919d6m => 'プライバシーポリシー';
	@override String get k_0wqhgor => '個人情報収集リスト';
	@override String get k_12rfxml => '第三者への情報共有リスト';
	@override String get k_131g7q4 => 'アカウントを登録解除';
	@override String get k_03fel2u => 'バーション番号';
	@override String get k_16kts8h => 'ログアウト';
	@override String get k_13spdki => 'メッセージを送信';
	@override String get k_14c600t => '備考を変更';
	@override String get k_1f811a4 => '英数字、下線のみを使用できます';
	@override String get k_11z7ml4 => '詳細情報';
	@override String get k_1ajt0b1 => '現在の位置の取得に失敗しました';
	@override String get k_0lhm9xq => '検索の要求に成功しました';
	@override String get k_0fdeled => '検索の要求に失敗しました';
	@override String get k_1yh0a50 => 'mapdidload-地図の読込みが完了しました';
	@override String get k_1t2zg6h => '画像認証コードでの認証に失敗しました';
	@override String get k_03ibfd2 => '日曜日';
	@override String k_1o7lf2y({required Object errorMessage}) => 'サーバエラー：$errorMessage';
	@override String k_118l7sq({required Object requestErrorMessage}) => 'リクエストエラー：$requestErrorMessage';
	@override String get k_003nfx9 => '沈着';
	@override String get k_003rvjp => '軽やか';
	@override String get k_003rtht => '明るい';
	@override String get k_003qxiw => 'ファンタジー';
	@override String k_0s5zoi3({required Object option1}) => 'エラーが発生しました$option1';
	@override String k_0i8egqa({required Object option8}) => '取得したメッセージ:$option8';
	@override String k_0pokyns({required Object option8}) => 'フォーラムリストの取得に失敗しました$option8';
	@override String k_1y03m8a({required Object option8}) => 'トピックの作成に失敗しました$option8';
	@override String k_1v6uh9c({required Object option8}) => 'ログインに失敗しました$option8';
	@override String k_0t5a9hl({required Object option1}) => 'ログインに失敗しました$option1';
	@override String k_0k3uv02({required Object option8}) => 'サーバエラー:$option8';
	@override String k_1g9o3kz({required Object option8}) => 'リクエストエラー:$option8';
	@override String get k_14cahuz => 'Tencent Cloud Chatについて';
	@override String get k_0llnalm => 'Chat SDKバーション番号';
	@override String get k_13dyfii => 'アプリバーション番号';
	@override String get k_12h52zh => 'プライバシーポリシー';
	@override String get k_0fxhhwb => '利用規約';
	@override String get k_18z2e6q => 'Tencent Cloud Chatは、Tencent Cloudが提供するテスト用製品です。本製品の著作権および所有権はTencent Cloudに帰属します。本製品は機能を体験するためのものであり、商用目的で使用することはできません。本製品を利用中に、ポルノ、暴言、暴力・テロ、政治関連など違法なコンテンツの流布は固く禁じられています。';
	@override String get k_0zu7dd7 => '情報収集リスト';
	@override String get k_0mcqhgh => '情報共有リスト';
	@override String get k_12eqaty => 'アカウントを登録解除します';
	@override String get k_0ziqsr6 => 'アカウントを登録解除しました';
	@override String get k_002qtgt => '登録解除';
	@override String k_0rvdu91({required Object option1}) => '登録解除後に、このアカウントを使用できなくなり、関連データが削除され復元できません。現在のアカウントid: $option1';
	@override String get k_15d22qk => 'アカウントを登録解除';
	@override String get k_036uv3f => 'Tencent Cloud Chat';
	@override String get k_167916k => 'WeChatの友達';
	@override String get k_03euwr1 => 'モーメンツ';
	@override String get k_0cxccci => 'ビデオ通話に招待されました';
	@override String get k_06lhh4b => '音声通話に招待されました';
	@override String get k_1ywo9ut => 'Tencent Cloud Chatは、qqのim機能をベースにして開発され、sdkを導入するだけで、チャット、セッション、グループ、プロファイル管理、ライブストリーミング弾幕などの機能を簡単に統合できます。また、シグナリングメッセージでホワイトボードなど他の製品と連携することで、あらゆる業務向け運用シーンをカバーできます。なお、数多くのプラットフォームのミニプログラムへのアクセスと使用をサポートし、すべてのコミュニケーションニーズを満たします。';
	@override String get k_0ios26v => 'WeChatが見つかりませんでした';
	@override String get k_1jg6d5x => '『プライバシーポリシー概要』';
	@override String get k_0selni4 => '『プライバシーポリシー』';
	@override String get k_10s6v2i => '『情報収集リスト』';
	@override String get k_0pasxq8 => '『情報共有リスト』';
	@override String get k_003r6vf => 'ログイン';
	@override String get k_03f2zbs => 'へ共有';
	@override String get k_0cfkcaz => 'メッセージプッシュ';
	@override String get k_1rmkb2w => '新しいチャットメッセージをプッシュ';
	@override String get k_1lg375c => '新しいメッセージの着信通知';
	@override String k_1t0akzp({required Object option1}) => '登録解除後に、このアカウントを使用できなくなり、関連データが削除され復元できません。現在のアカウントid: $option1';
	@override String get k_1699p6d => 'テンセントビル';
	@override String get k_1ngd60h => '深セン市深南大道10000番';
	@override String get k_1na29vg => '位置メッセージをメンテナンス中';
	@override String get k_1xmms9t => 'グループ参加申請リスト';
	@override String get k_0dla4vp => 'フィードバックやアドバイスのために、QQグループに参加してください';
	@override String get k_1odrjd1 => '受付時間：月曜日~金曜日の午前10時~午後8時';
	@override String get k_1bh903m => 'QQグループ番号をコピーしました';
	@override String get k_16264lp => 'グループ番号をコピー';
	@override String get k_18ger86 => 'Tencent Cloud Chat';
	@override String get k_1vd70l1 => '数億のqqユーザにサービスを提供するim技術';
	@override String get k_036phup => 'Tencent Cloud Chat';
	@override String get k_0gfsln9 => '情報が変更されました';
	@override String get k_0ow4akh => 'demoのreadmeに従って、baidu akを設定し、demoの位置メッセージ機能を体験しましょう';
	@override String get k_1kzh3lo => 'こちらのドキュメントhttps://docs.qq.com/doc/dsvliwe9acurta2dlに従って、位置メッセージ機能を体験しましょう';
	@override String get k_161zzkm => 'ユーザ名を入力してください';
	@override String get k_1veosyv => '環境変数にKeyを書き込む';
	@override String get k_03exdnb => 'ユーザ名';
	@override String get k_16kquu8 => '現在のディレクトリ';
	@override String get k_0fbvuqs => 'コピーを開始';
	@override String get k_16j153h => 'Tencent Cloud Chat app（以降、本製品）は、Tencent Cloudが提供するテスト用製品です。本製品の著作権および所有権はTencent Cloudに帰属します。本製品は機能を体験するためのものであり、商用目的で使用することはできません。本製品を利用中に、ポルノ、暴言、暴力・テロ、政治関連など違法なコンテンツの流布は固く禁じられています。';
	@override String get k_13ghyf8 => '[注意事項]本製品はTencent Cloud Chatの機能を体験するためのものであり、商談とビジネス開拓の目的で使用することはできません。詐欺の可能性があるため、振込みや懸賞当選などお金の絡む情報に警戒心を持ち、知らない番号に電話をかけないでください。';
	@override String get k_0gt6cro => 'クレームはこちら';
	@override String k_03595fk({required Object option1}) => ' など$option1人';
	@override String k_1gpzgni({required Object option2}) => '$option2人グループ';
	@override String get k_02lfg57 => '新しいグループチャット';
	@override String get k_17ifd8i => ' appへようこそ！Tencent Cloud Chatを楽しんでください';
	@override String get k_1f0ms23 => 'メッセージの開封状態';
	@override String get k_1c0x9ha => '無効にすると、送受信したメッセージには開封状態がなくなり、相手がメッセージを読んでいるかが分からず、相手もあなたに送信したメッセージが読まれているかが分かりません。';
	@override String get k_1dzhdr5 => 'オンライン状態を表示';
	@override String get k_0mwsniq => '無効にすると、セッションリストとアドレス帳で友達のオンライン状態またはオフライン状態の通知が見えなくなります。';
	@override String get k_0f7h6ay => '接続に失敗しました';
	@override String get k_0wreawq => 'ウェブページ版ではbaidu地図のプラグインがサポートされません。位置メッセージの機能を体験するには、携帯端末appのdemoを使用してください。';
	@override String get k_03c56co => '選択しない';
	@override String get k_1klqdh1 => '中国語、英数字、下線のみを使用できます';
	@override String get k_03el5lp => '未入力';
	@override String get k_0554lam => '友達ワークグループ(Work)';
	@override String get k_1hyz1ua => '知らない人とのソーシャルグループ(Public)';
	@override String get k_1s8hjin => '一時会議グループ(Meeting)';
	@override String get k_16ejs8f => 'ライブ配信グループ(AVChatRoom)';
	@override String get k_1rqdzbh => 'コミュニティグループ(Community)';
	@override String get k_1aue1b6 => '一般WeChatグループのようなものです。作成後に、すでにグループにいる友達のみがグループに招待できます。また、招待された方の承諾またはグループマスターの承認は不要です。';
	@override String get k_0uldek7 => 'QQグループのようなものです。作成後に、グループマスターがグループ管理者を指定できます。ユーザはグループidを検索しグループ参加申請を送信した後、グループマスターまたは管理者の承認がないと、グループに参加できません。';
	@override String get k_1nv4w25 => '作成後に自由に参加・退出できます。また、グループ参加前のメッセージを閲覧するができます。音声/ビデオ会議やeラーニングなど、trtc製品と連携する運用シーンに向いています。';
	@override String get k_1wbmoof => '作成後に自由に参加・退出できます。グループメンバー数には上限がなく、メッセージ履歴を保存しません。css製品と連携し、弾幕でチャットする運用シーンに向いています。';
	@override String get k_11mlyaa => '作成後に自由に参加・退出できます。最大10万人をサポートし、メッセージ履歴を保存できます。ユーザはグループidを検索しグループ参加申請を送信した後、グループ管理者の承認なしでグループに参加できます。';
	@override String get k_0ylgdrb => 'コミュニティdemoは開発中で、まもなくリリースされます';
	@override String get k_0elsjm2 => 'グループチャットを作成';
	@override String get k_1iw4gdk => 'すべての人を許可';
	@override String get k_0i5ffqf => '要認証';
	@override String get k_111mgqj => '私を友達として追加するのを許可しない';
	@override String get k_03go2lu => '未指定';
	@override String get k_15zb99m => '私を友達として追加する方法';
	@override String get k_1llp7tu => 'ユーザが存在しません';
	@override String get k_0tbyqyb => '読み込み中…';
	@override String get k_0td1p3f => '保存中…';
	@override String get k_1ui0gai => '指定した内容を検索';
	@override String get k_03agld7 => 'グループリマインダーメッセージ';
	@override String get k_002wkr3 => '翻訳';
	@override String get k_13g4hxv => '翻訳完了';
	@override String k_1qqgjra({required Object option3}) => '$option3 件の新着メッセージ';
	@override String get k_0uubyjr => '新着メッセージ';
	@override String get k_0kg1wsx => 'グループタイプを選択';
	@override String get k_003m6xh => '設定';
	@override String get k_18nszwl => '私たちについて';
	@override String get k_003txiw => '約';
	@override String get k_12fp4oc => '公式ウェブサイト';
	@override String get k_1391sy5 => '一度の開発で、すべてのプラットフォームにパッケージ化してデプロイし、ワイドスクリーン、ナロースクリーンの両方に自動適応します';
	@override String get k_002vu95 => 'ようこそ';
	@override String get k_0o6nt4d => '私は次に同意しました';
	@override String get k_12l2415 => 'Tencent Cloudのすべての契約および規則';
	@override String get k_0rcqou9 => 'Copyright © 2013-2023 Tencent Cloud. All Rights Reserved.';
	@override String get k_003lmhx => 'グループ';
	@override String get k_1s251fa => '連絡先とグループ';
	@override String get k_0cjp3hx => '詳細を確認するには、連絡先またはグループを選択してください';
	@override String get k_12veoax => 'チャンネル切り替え：';
	@override String get k_002rfh9 => '国際的な';
	@override String get k_0864lq3 => '使用中に何か疑問がある場合は、次の方法でお問い合わせください';
	@override String get k_12625cy => 'グループに入る';
	@override String get k_131lvxd => '私のアカウント';
	@override String get k_002qep7 => 'インターフェイス';
	@override String get k_002vbyp => '外観';
	@override String get k_16owrwc => 'ライトモード';
	@override String get k_01zair9 => 'ダークモード（開発中）';
	@override String get k_002skx2 => 'テーマ';
	@override String get k_002wzvs => '言語';
	@override String get k_002woft => '英語';
	@override String get k_129eldp => '繁体字中国語';
	@override String get k_129ekqk => '簡体字中国語';
	@override String get k_002whil => '日本語';
	@override String get k_002wqld => '韓国語';
	@override String get k_003is6v => '共通';
	@override String get k_12s2mfc => '詳細を見る';
	@override String get k_12fsjye => '関連するWebサイト';
	@override String get k_16uejmj => 'プロフィール';
	@override String get k_0dtyory => 'フィードバック';
	@override String get k_03oy6z4 => 'すべてのSDK';
	@override String get k_03bh54n => 'ソースコード';
	@override String get k_0s3sgel => 'ブラックリストから削除';
	@override String get k_16as7eq => 'エモティコンリアクション';
	@override String get k_003s12u => '返信';
	@override String get k_003s38r => 'もっと';
	@override String get k_003molk => 'エモート';
	@override String get k_165bbw6 => 'メッセージ履歴';
	@override String get k_13sqc0z => 'メッセージをクリア';
	@override String get k_0glns86 => '会話を削除';
	@override String get k_13s99rx => 'メッセージをクリア';
	@override String get k_11vsa3j => 'グループから退出';
	@override String get k_11vvszp => 'グループを解散';
	@override String get k_15i9w72 => 'グループ管理者';
	@override String get k_0p3espj => '備考を設定';
	@override String get k_118sw9v => 'すぐに検索';
	@override String get k_003mmoz => 'ロケット';
	@override String get k_003nogx => '飛行機';
	@override String get k_003pjj6 => 'クラウン';
	@override String get k_000340k => '花';
	@override String k_0cv8ngo({required Object option1}) => '$option1を贈る';
	@override String get k_03a2zjl => 'ギフトを贈る';
	@override String get k_0003yq8 => 'つぼみ';
	@override String get k_13k5228 => 'ライブルームを賞賛しました';
	@override String get k_1k0rrvn => '何か言って...';
	@override String get k_13jzi5y => 'ライブルームに入る';
	@override String get k_14asoqo => 'フォローを取り消す';
	@override String get k_003ohwe => 'フォローする';
	@override String k_1h33pzv({required Object option1}) => 'ファン $option1 |';
	@override String k_07skbgr({required Object option2}) => ' $option2をフォローする';
	@override String k_1c99nb3({required Object option1}) => '$option1万+';
	@override String get k_19mfrrb => 'オンライン視聴者';
	@override String get k_13m65um => 'オーディエンス情報';
	@override String k_19kj6te({required Object option1}) => '$option1この場でいいね';
	@override String get k_1xn4cn2 => 'ランタイム環境の検出';
	@override String get k_0sy25ey => 'このプログラムを使用する前に、Microsoft Edge WebView2ランタイム環境をインストールしてください。';
	@override String get k_0g4tlsb => '今すぐダウンロード';
	@override String get k_13ozr8k => '現在はサポートされていません';
	@override String get k_16yiku8 => 'Web版ではローカル検索はサポートされていません。Mobile AppまたはDesktop版をご利用ください。';
	@override String get k_003lz6t => '相手';
	@override String k_1xf4yre({required Object option1}) => '$option1に送信';
	@override String get k_003por5 => 'スクリーンショット';
	@override String get k_0c67rdb => '複数選択を許可する';
	@override String get k_11lav8q => '匿名投票';
	@override String get k_137cjfq => '公開結果';
	@override String get k_0e3jces => 'オプションを入力してください';
	@override String get k_0dcbhiz => 'オプションを追加する';
	@override String get k_003r4qf => '投稿する';
	@override String get k_1xa5q8q => '投票のタイトルを入力してください';
	@override String get k_003nv7m => '投票済み';
	@override String get k_002ym5d => '票、';
	@override String get k_003pfxt => '割合';
	@override String get k_0fxdch1 => '投票プラグインが初期化されていません。まず初期化してください。';
	@override String get k_1lzoopr => '投票メッセージではありません。確認してください。';
	@override String get k_03ahybu => '投票済み';
	@override String get k_11lamu8 => '今すぐ投票する';
	@override String get k_0b9h7nq => '投票が終了しました';
	@override String get k_0c7zem1 => '再送信';
	@override String get k_11l1qvo => '投票を終了する';
	@override String get k_0z314c0 => '[複数選択]';
	@override String get k_0z2zcm7 => '[単一選択]';
	@override String get k_0y8ap8v => '[公開]';
	@override String get k_0y4cs5n => '[プライベート]';
	@override String get k_0y6agtt => '[匿名]';
	@override String get k_0y68wmo => '[実名]';
	@override String k_1pssgjf({required Object option1}) => '参加予定者数：$option1';
	@override String k_0x9zkqf({required Object option2}) => '実際の参加者数：$option2';
	@override String get k_09ikyqj => 'すべてのオプションを表示';
	@override String k_0h2jp2z({required Object option1}) => '$option1票';
	@override String get k_0y2zr3y => '[投票]';
	@override String get k_11lci1l => '投票を作成する';
	@override String get k_003l988 => '投票';
	@override String get k_1rw7s82 => ' ビデオへのアクセス権限。写真やビデオの送信などの機能を使用することに必要です。';
	@override String get k_003rcwm => '開く';
	@override String get k_1698c42 => 'Finderで表示';
	@override String get k_066fxsz => 'フォルダを表示';
	@override String get k_0k432y2 => 'フォルダが含まれているため送信できません';
	@override String get k_002wb4y => 'チャット';
	@override String get k_0od4qyh => 'ビデオが異常です';
	@override String get k_1cdzld5 => '商品情報';
	@override String get k_19qt9y2 => 'サービス評価';
	@override String get k_13s7ltw => 'カードメッセージ';
	@override String get k_13ajr25 => 'オンラインカスタマーサービス';
	@override String get k_0ti5mfz => 'オンラインカスタマーサービスはありません';
	@override String get k_1bfkxg9 => '0KBファイルの転送はサポートされていません';
	@override String get k_0vvsw7g => 'ファイル処理の例外';
	@override String get k_06e224q => '[管理者によってメッセージが取り消されました]';
	@override String get k_1u1mjcl => '[メッセージが取り消されました]';
	@override String get k_1qcqxea => '複数の会話を選択';
	@override String get k_1qgmc20 => '会話を選択';
	@override String get k_1d8nx6f => '新しいウィンドウで開く';
	@override String get k_1hz05ax => '元のリソースをダウンロードしています。お待ちください...';
	@override String get k_1fszgep => '私たちとチャット：';
	@override String get k_1xtvvs9 => 'プロフェッショナルな公式技術サポート';
	@override String get k_0cdljc3 => '参加';
	@override String get k_167dvo3 => '連絡先を選択';
	@override String get k_1u1jwb8 => 'テレグラム';
}

// Path: <root>
class _StringsKo implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsKo.build();

	/// Access flat map
	@override dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	@override late final Map<String, dynamic> _flatMap = _buildFlatMap();

	@override late final _StringsKo _root = this; // ignore: unused_field

	// Translations
	@override String get k_1yemzyd => '1개의 메시지를 받았습니다';
	@override String get k_0ylosxn => '사용자 정의 메시지';
	@override String get k_13sajrj => '이모티콘 메시지';
	@override String get k_13sjeb7 => '파일 메시지';
	@override String get k_0yd2ft8 => '그룹 알림 메시지';
	@override String get k_13s7mxn => '사진 메시지';
	@override String get k_13satlt => '위치 메시지';
	@override String get k_00bbtsx => '메시지를 병합하여 전달';
	@override String get k_13sqwu4 => '음성 메시지';
	@override String get k_13sqjjp => '비디오 메시지';
	@override String get k_1fdhj9g => '이 버전에서는 이 메시지가 지원되지 않습니다';
	@override String get k_06pujtm => '모든 친구 추가 허용';
	@override String get k_0gyhkp5 => '인증 필요';
	@override String get k_121ruco => '모든 친구 추가 거부';
	@override String get k_05nspni => '사용자 정의 필드';
	@override String get k_03fchyy => '그룹 프로필 사진';
	@override String get k_03i9mfe => '그룹 소개';
	@override String get k_03agq58 => '그룹 이름';
	@override String get k_039xqny => '그룹 공지';
	@override String get k_003tr0a => '그룹 소유자';
	@override String get k_03c49qt => '승인하기';
	@override String get k_002wddw => '음소거';
	@override String get k_0got6f7 => '음소거 해제';
	@override String get k_1uaqed6 => '[직접 설정]';
	@override String get k_0z2z7rx => '[음성]';
	@override String get k_0y39ngu => '[이모티콘]';
	@override String get k_0y1a2my => '[사진]';
	@override String get k_0z4fib8 => '[비디오]';
	@override String get k_0y24mcg => '[위치]';
	@override String get k_0pewpd1 => '[채팅 기록]';
	@override String get k_13s8d9p => '알 수 없는 메시지';
	@override String get k_1c3us5n => '현재 그룹은 모든 사람을 멘션하기가 지원되지 않습니다';
	@override String get k_11k579v => '메시지에 부적절한 언어가 있습니다';
	@override String get k_003qkx2 => '캘린더';
	@override String get k_003n2pz => '카메라';
	@override String get k_03idjo0 => '대화 상대';
	@override String get k_003ltgm => '위치';
	@override String get k_02k3k86 => '마이크';
	@override String get k_003pm7l => '앨범';
	@override String get k_15ao57x => '앨범에 저장';
	@override String get k_164m3jd => '로컬 스토리지';
	@override String get k_03r6qyx => '정보를 가져오려면 귀하의 동의가 필요합니다';
	@override String get k_02noktt => '허용되지 않음';
	@override String get k_00043x4 => '좋음';
	@override String get k_003qzac => '어제';
	@override String get k_003r39d => '2일 전';
	@override String get k_03fqp9o => '일요일';
	@override String get k_03ibg5h => '월요일';
	@override String get k_03i7hu1 => '화요일';
	@override String get k_03iaiks => '수요일';
	@override String get k_03el9pa => '목요일';
	@override String get k_03i7ok1 => '금요일';
	@override String get k_03efxyg => '토요일';
	@override String get k_003q7ba => '오후';
	@override String get k_003q7bb => '오전';
	@override String get k_003pu3h => '현재';
	@override String get k_0n9pyxz => '사용자가 존재하지 않습니다';
	@override String get k_1bjwemh => 'id 검색';
	@override String get k_003kv3v => '검색';
	@override String get k_16758qw => '친구 추가';
	@override String get k_0i553x0 => '인증 정보 입력';
	@override String get k_031ocwx => '설명 및 그룹을 입력하세요';
	@override String get k_003ojje => '설명';
	@override String get k_003lsav => '그룹';
	@override String get k_167bdvq => '나의 친구';
	@override String get k_156b4ut => '친구 신청 완료';
	@override String get k_002r305 => '전송';
	@override String get k_03gu05e => '채팅방';
	@override String get k_03b4f3p => '회의 그룹';
	@override String get k_03avj1p => '공개 그룹';
	@override String get k_03asq2g => '업무 그룹';
	@override String get k_03b3hbi => '알 수 없는 그룹';
	@override String k_1loix7s({required Object groupType}) => '그룹 유형: $groupType';
	@override String get k_1lqbsib => '이 그룹 채팅은 존재하지 않습니다';
	@override String get k_03h153m => '그룹 id 검색';
	@override String get k_0oxak3r => '그룹 신청 완료';
	@override String get k_002rflt => '삭제';
	@override String get k_1don84v => '원본 메시지를 찾을 수 없습니다';
	@override String get k_003q5fi => '복사';
	@override String get k_003prq0 => '전달';
	@override String get k_002r1h2 => '다중 선택';
	@override String get k_003j708 => '인용';
	@override String get k_003pqpr => '취소';
	@override String get k_03ezhho => '복사됨';
	@override String get k_11ctfsz => '아직 구현되지 않음';
	@override String get k_1hbjg5g => '[그룹 시스템 메시지]';
	@override String get k_03tvswb => '[알 수 없는 메시지]';
	@override String get k_155cj23 => '메시지를 취소했습니다. ';
	@override String get k_0gapun3 => '재편집';
	@override String get k_1aszp2k => '이 메시지를 다시 보내시겠습니까?';
	@override String get k_003rzap => '확인';
	@override String get k_003nevv => '취소';
	@override String get k_0003z7x => '당신';
	@override String get k_002wfe4 => '읽음';
	@override String get k_002wjlg => '읽지 않음';
	@override String get k_0h1ygf8 => '전화 걸기';
	@override String get k_0h169j0 => '통화 취소';
	@override String get k_0h13jjk => '전화 받기';
	@override String get k_0h19hfx => '통화 거절';
	@override String get k_0obi9lh => '시간 초과, 응답 없음';
	@override String get k_001nmhu => '다른 애플리케이션으로 열기';
	@override String get k_1ht1b80 => '수신 중';
	@override String get k_105682d => '사진 로딩 실패';
	@override String get k_0pytyeu => '사진 저장 성공';
	@override String get k_0akceel => '사진 저장 실패';
	@override String get k_003rk1s => '저장';
	@override String get k_04a0awq => '[음성 메시지]';
	@override String get k_105c3y3 => '비디오 로딩 실패';
	@override String get k_176rzr7 => '채팅 기록';
	@override String get k_0d5z4m5 => '대상 선택';
	@override String get k_003ngex => '완료';
	@override String get k_1665ltg => '호출하기';
	@override String get k_003n8b0 => '캡처';
	@override String get k_003kthh => '사진';
	@override String get k_003tnp0 => '파일';
	@override String get k_0jhdhtp => '전송 실패. 비디오는 100mb를 초과할 수 없습니다.';
	@override String get k_119ucng => '사진은 비워둘 수 없습니다';
	@override String get k_13dsw4l => '취소하려면 놓기';
	@override String get k_0am7r68 => '위로 스와이프하여 전송 취소';
	@override String get k_15jl6qw => '메세지가 너무 짧습니다!';
	@override String get k_0gx7vl6 => '누르고 말하기';
	@override String get k_15dlafd => '1개씩 전달';
	@override String get k_15dryxy => '병합하여 전달';
	@override String get k_1eyhieh => '선택한 메시지 삭제';
	@override String get k_17fmlyf => '채팅 삭제';
	@override String get k_0dhesoz => '상단 고정 취소';
	@override String get k_002sk7x => '상단 고정';
	@override String get k_003ll77 => '임시보관';
	@override String get k_03icaxo => '사용자 정의';
	@override String get k_1uaov41 => '채팅 내용 검색';
	@override String get k_003kfai => '알 수 없음';
	@override String get k_13dq4an => '자동 승인';
	@override String get k_0l13cde => '관리자 승인';
	@override String get k_11y8c6a => '그룹 참여 금지';
	@override String get k_1kvyskd => '네트워크를 사용할 수 없습니다';
	@override String get k_16payqf => '그룹 참여 방법';
	@override String get k_0vzvn8r => '그룹 이름 수정';
	@override String get k_038lh6u => '그룹 관리';
	@override String get k_0k5wyiy => '관리자 설정';
	@override String get k_0goiuwk => '모든 구성원 음소거';
	@override String get k_1g889xx => '모든 구성원 음소거를 활성화하면 그룹 소유자와 관리자만 메시지를 보낼 수 있습니다.';
	@override String get k_0wlrefq => '음소거할 그룹 구성원 추가';
	@override String get k_0goox5g => '음소거 설정';
	@override String get k_08daijh => '관리자 권한 취소 성공';
	@override String get k_0k5u935 => '관리자 추가';
	@override String get k_03enyx5 => '그룹 구성원';
	@override String get k_0h1svv1 => '그룹 구성원 삭제';
	@override String get k_0h1g636 => '그룹 구성원 추가';
	@override String get k_0uj7208 => '네트워크를 사용할 수 없습니다';
	@override String get k_0hpukyx => '더 많은 그룹 구성원 보기';
	@override String get k_0qtsar0 => '방해 금지 모드';
	@override String get k_0ef2a12 => '그룹 닉네임 수정';
	@override String get k_1aajych => '2-20자의 중국어, 알파벳, 숫자 및 언더바만 사용할 수 있습니다';
	@override String get k_137pab5 => '그룹 닉네임';
	@override String get k_0ivim6d => '그룹 공지가 없습니다';
	@override String get k_03eq6cn => '그룹 공지';
	@override String get k_002vxya => '편집';
	@override String get k_17fpl3y => '채팅 상단 고정';
	@override String get k_03es1ox => '그룹 유형';
	@override String get k_003mz1i => '동의';
	@override String get k_003lpre => '거절';
	@override String get k_003qk66 => '프로필 사진';
	@override String get k_003lhvk => '닉네임';
	@override String get k_003ps50 => '계정';
	@override String get k_15lx52z => '개인 서명';
	@override String get k_003qgkp => '성별';
	@override String get k_003m6hr => '생일';
	@override String get k_0003v6a => '남자';
	@override String get k_00043x2 => '여자';
	@override String get k_03bcjkv => '미설정';
	@override String get k_11s0gdz => '닉네임 수정';
	@override String get k_0p3j4sd => '중국어, 알파벳, 숫자, 언더바만 사용할 수 있습니다';
	@override String get k_15lyvdt => '서명 수정';
	@override String get k_0vylzjp => '작성된 내용이 없습니다';
	@override String get k_1hs7ese => '온라인 상태일 때 변경할 수 있습니다';
	@override String get k_03exjk7 => '별칭';
	@override String get k_0s3skfd => '블록리스트 추가';
	@override String get k_0p3b31s => '별칭 수정';
	@override String get k_0003y9x => '없음';
	@override String get k_11zgnfs => '개인 프로필';
	@override String get k_1tez2xl => '개인 서명이 없습니다';
	@override String get k_118prbn => '전체 검색';
	@override String get k_1m9dftc => '모든 대화 상대';
	@override String get k_0em4gyz => '모든 그룹 채팅';
	@override String get k_002twmj => '그룹 채팅';
	@override String get k_09kga0d => '채팅 기록 더 보기';
	@override String get k_09khmso => '관련 채팅 기록';
	@override String get k_0vjj2kp => '그룹 채팅 기록';
	@override String get k_003n2rp => '선택';
	@override String get k_03ignw6 => '전체';
	@override String get k_03erpei => '관리자';
	@override String get k_0qi9tno => '그룹 소유자, 관리자';
	@override String get k_1m9exwh => '최근 대화 상대';
	@override String get k_119nwqr => '입력란은 비워둘 수 없습니다';
	@override String get k_0pzwbmg => '비디오 저장 성공';
	@override String get k_0aktupv => '비디오 저장 실패';
	@override String k_1qbg9xc({required Object option8}) => '$option8은(는) ';
	@override String k_1wq5ubm({required Object option7}) => '$option7 수정';
	@override String k_0y5pu80({required Object option6}) => '$option6이(가) 그룹에서 나갔습니다';
	@override String k_0nl7cmd({required Object option5}) => '$option5을(를) 그룹에 초대합니다';
	@override String k_1ju5iqw({required Object option4}) => '$option4을(를) 그룹에서 강제 퇴장합니다';
	@override String k_1ovt677({required Object option3}) => '$option3이(가) 그룹 채팅에 들어왔습니다';
	@override String k_0k05b8b({required Object option2}) => '$option2이(가) ';
	@override String k_0wm4xeb({required Object option2}) => '시스템 메시지 $option2';
	@override String k_0nbq9v3({required Object option2}) => '통화 시간: $option2';
	@override String k_0i1kf53({required Object option2}) => '[파일] $option2';
	@override String k_1gnnby6({required Object option2}) => '이(가) 당신의 $option2에 액세스하려고 합니다';
	@override String k_1wh4atg({required Object option2}) => '$option2분 전';
	@override String k_07sh7g1({required Object option2}) => '어제 $option2';
	@override String k_1pj8xzh({required Object option2}) => 'id: $option2';
	@override String k_0py1evo({required Object option2}) => '개인 서명: $option2';
	@override String k_1kvj4i2({required Object option2}) => '$option2이(가) 메시지를 취소했습니다';
	@override String k_1v0lbpp({required Object option2}) => '‘$option2’은(는) 이 유형의 파일을 열 수 없습니다. 다른 애플리케이션을 사용하여 열고 미리보기할 수 있습니다.';
	@override String k_0torwfz({required Object option2}) => '$option2 선택 성공';
	@override String k_0i1bjah({required Object option1}) => '$option1이(가) 메시지를 취소했습니다';
	@override String k_1qzxh9q({required Object option3}) => '통화 시간: $option3';
	@override String k_0wrgmom({required Object option1}) => '[음성 통화]: $option1';
	@override String k_06ix2f0({required Object option2}) => '[영상 통화]: $option2';
	@override String k_08o3z5w({required Object option1}) => '[파일] $option1';
	@override String k_0ezbepg({required Object option2}) => '$option2[누군가 나를 멘션함]';
	@override String k_1ccnht1({required Object option2}) => '$option2[모든 사람을 멘션]';
	@override String k_1k3arsw({required Object option2}) => '관리자 ($option2/10)';
	@override String k_1d4golg({required Object option1}) => '그룹 구성원($option1명)';
	@override String k_1bg69nt({required Object option1}) => '$option1명';
	@override String k_00gjqxj({required Object option1}) => '개인 서명: $option1';
	@override String k_0c29cxr({required Object option1}) => '관련 채팅 기록 $option1개';
	@override String k_1twk5rz({required Object option1}) => '$option1와(과)의 채팅 기록';
	@override String k_1vn4xq1({required Object adminMember}) => '$adminMember의 관리자 권한 취소';
	@override String get k_0e35hsw => '촬영한 사진이나 동영상을 친구에게 보내고 영상 통화를 하기 위해 카메라에 액세스하여 사진과 동영상을 찍을 수 있도록 허용해 주세요.';
	@override String get k_0dj6yr7 => '음성 메시지 전송, 동영상 촬영, 음성 및 영상 통화를 원활하게 할 수 있도록 마이크 사용을 허용해 주세요.';
	@override String get k_003qnsl => '스토리지';
	@override String get k_0s3rtpw => '앨범의 사진과 비디오를 친구에게 보내고 콘텐츠를 기기에 저장하기 위해 사진과 미디어 콘텐츠에 액세스할 수 있도록 허용해 주세요.';
	@override String k_0tezv85({required Object option2}) => ' $option2 가져오기 요청';
	@override String get k_002rety => '권한';
	@override String get k_18o68ro => '다음 권한 필요:';
	@override String get k_1onpf8u => ' 사진, 동영상, 영상 통화 등의 기능을 사용하기 위한 카메라 권한입니다.';
	@override String get k_17irga5 => ' 음성 메시지 전송, 동영상 촬영, 음성 및 영상 통화 등의 기능을 사용하기 위한 마이크 권한입니다.';
	@override String get k_0572kc4 => ' 사진, 동영상 전송 등의 기능을 사용하기 위해 사진 권한에 액세스합니다.';
	@override String get k_0slykws => ' 사진, 동영상 저장 등의 기능을 사용하기 위해 앨범 저장 권한에 액세스합니다.';
	@override String get k_119pkcd => ' 채팅 중 사진 보기, 선택, 전송 등 기능을 사용하기 위한 파일 읽기 및 쓰기 권한입니다.';
	@override String get k_0gqewd3 => '나중에';
	@override String get k_03eq4s1 => '활성화하기';
	@override String get k_0nt2uyg => '마지막 위치로 돌아가기';
	@override String k_04l16at({required Object option1}) => '$option1개의 새 메시지';
	@override String get k_13p3w93 => '누군가 나를 멘션함';
	@override String get k_18w5uk6 => '모든 사람을 멘션';
	@override String get k_0jmujgh => '다른 파일을 수신하는 중입니다.';
	@override String get k_12s5ept => '메시지 상세 정보';
	@override String k_0mxa4f4({required Object option1}) => '$option1명 읽음';
	@override String k_061tue3({required Object option2}) => '$option2명 읽지 않음';
	@override String get k_18qjstb => '그룹 소유권 양도';
	@override String k_0on1aj2({required Object option2}) => '$option2개의 나를 멘션한 메시지가 있습니다';
	@override String get k_09j4izl => '[누군가 나를 멘션함] ';
	@override String get k_1oqtjw0 => '[모든 사람을 멘션] ';
	@override String k_1x5a9vb({required Object option1}) => '나: $option1';
	@override String get k_14n31e7 => '그룹 참여 요청';
	@override String k_08nc5j1({required Object option1}) => '그룹 유형: $option1';
	@override String k_1josu12({required Object option1}) => '$option1개의 그룹 참여 요청';
	@override String k_0n2x5s0({required Object option2}) => '인증 정보: $option2';
	@override String get k_03c1nx0 => '동의함';
	@override String get k_03aw9w8 => '거부함';
	@override String get k_038ryos => '처리하기';
	@override String get k_0gw8pum => '그룹 참여 신청';
	@override String get k_1gcvfrj => '설명을 입력하세요';
	@override String get k_002v9zj => '확인';
	@override String get k_10oqrki => '탭하여 사진 찍기';
	@override String get k_0f8b3ws => '로딩 실패';
	@override String get k_11cm5lm => '수동 초점';
	@override String get k_002uzrd => '미리보기';
	@override String get k_003qkn3 => '녹화';
	@override String get k_003k6a7 => '촬영';
	@override String get k_0bqpqco => '촬영 버튼';
	@override String get k_1626ozl => '녹화 중지';
	@override String get k_003lvmu => '앞쪽';
	@override String get k_003lued => '뒤쪽';
	@override String get k_003lwzh => '외부';
	@override String get k_002qzi3 => '비활성화';
	@override String get k_003pufb => '자동';
	@override String get k_0apm0ze => '촬영 시 플래시 사용';
	@override String get k_157zog5 => '플래시 항상 사용';
	@override String k_0cfyqhy({required Object option1}) => '$option1 화면 미리보기';
	@override String k_0phctlz({required Object option2}) => '플래시 모드: $option2';
	@override String k_02vfqe0({required Object option3}) => '$option3 카메라로 전환';
	@override String get k_0f0y9ex => '메시지가 너무 짧습니다';
	@override String get k_0ln70tk => 'url을 열 수 없습니다';
	@override String get k_11a3jdv => '사진을 찍으려면 탭하고, 녹화하려면 길게 누르세요';
	@override String get k_1k18miv => '그룹 퇴장 라이프사이클 함수를 입력하여 첫 화면 또는 다른 페이지로 이동하는 방법을 제공해 주세요.';
	@override String get k_0gmwbnd => '모든 구성원 음소거 중';
	@override String get k_0got2zr => '음소거되었습니다';
	@override String get k_0y9jck8 => 'search bar를 사용자 정의하고 클릭 리디렉션 처리를 해야 합니다';
	@override String get k_0yum3tv => '사용자 정의 영역을 사용하는 경우 profilewidgetbuilder에 해당 컴포넌트를 전달하세요';
	@override String get k_09kalj0 => '채팅 기록 지우기';
	@override String get k_14j5iul => '삭제 및 종료';
	@override String get k_125ru1w => '그룹 삭제';
	@override String get k_0jtutmw => '종료하면 이 그룹의 채팅 메시지를 받을 수 없습니다';
	@override String get k_0jtzmqa => '삭제하면 이 그룹의 채팅 메시지를 받을 수 없습니다';
	@override String get k_0r8fi93 => '친구 추가 성공';
	@override String get k_02qw14e => '친구 신청 완료';
	@override String get k_0n3md5x => '현재 사용자는 블록리스트에 있습니다';
	@override String get k_094phq4 => '친구 추가 실패';
	@override String get k_129scag => '친구 삭제 성공';
	@override String get k_129uzfn => '친구 삭제 실패';
	@override String get k_1666isy => '친구 삭제';
	@override String get k_1679vrd => '친구 추가';
	@override String get k_0h18bbi => '통화 종료';
	@override String get k_154q2hn => '통화 시간 초과, 응답 없음';
	@override String get k_1mnjtnc => '상대방이 전화를 끊음';
	@override String get k_0l0mysn => '오류 발생:';
	@override String get k_03fn6rg => '응답이 없습니다';
	@override String get k_003luo3 => '통화 중';
	@override String get k_154jvfi => '강제 로그아웃 되었습니다';
	@override String get k_1sp7jp6 => '통화가 취소됨';
	@override String get k_1045haa => '상대방이 초대에 수락하기를 기다리는 중...';
	@override String get k_1gq7jv7 => '당신을 통화에 초대합니다...';
	@override String get k_003m7ey => '끊기';
	@override String get k_03ectox => '스피커';
	@override String get k_003q2a4 => '받기';
	@override String get k_03ftugq => '카메라';
	@override String get k_10setgr => '음성 통화로 전환';
	@override String get k_1g7i9jz => '카메라 전환';
	@override String get k_15ml1ls => '수신 대기';
	@override String get k_0nj9x9s => '이(가) 당신을 그룹 통화에 초대합니다';
	@override String get k_1vtto3l => '통화 참여자:';
	@override String get k_0h147mx => '통화 중';
	@override String k_0j6aylo({required Object option1}) => '통화 시간: $option1';
	@override String get k_1fu9ahv => '모든 구성원 음소거 상태';
	@override String get k_1ualc52 => '상대방이 가져온 데이터 보기';
	@override String get k_0szluvp => '상대방의 온라인 상태 설정';
	@override String get k_0f4rnf8 => '이 사용자는 이미 친구입니다';
	@override String get k_1tdkom4 => '당신은 이미 그룹 구성원입니다';
	@override String get k_1p2lyuz => '상대방이 현재 입력 중입니다...';
	@override String k_1g8wfpy({required Object option1}) => '...총 $option1명';
	@override String get k_12rv9vw => '응답 세부정보';
	@override String get k_0n9p7g8 => '그룹이 존재하지 않습니다';
	@override String get k_1tdh5vn => '당신은 그룹 구성원이 아닙니다';
	@override String get k_0h1q57v => '그룹 구성원이 없습니다';
	@override String k_0y5drq1({required Object option1}) => '[상세 보기 >>]($option1)';
	@override String get k_03pjp61 => '[이모티콘 메시지]';
	@override String get k_1jpvzul => '[사용자 정의 메시지]';
	@override String get k_03u3bh1 => '[파일 메시지]';
	@override String get k_1odsnsw => '[그룹 메시지]';
	@override String get k_03sel4t => '[사진 메시지]';
	@override String get k_03sfw3r => '[위치 메시지]';
	@override String get k_03xpuwq => '[메시지 병합]';
	@override String get k_07ycxwo => '[요소 없음]';
	@override String get k_03rc9vz => '[텍스트 메시지]';
	@override String get k_046uopf => '[비디오 메시지]';
	@override String get k_0ehmsun => '기기 저장공간이 부족합니다. 원활한 사용을 위해 저장공간을 충분히 확보해주세요.';
	@override String get k_003kmos => '사진';
	@override String get k_002s86q => '비디오';
	@override String get k_06bk5ei => '비디오 메시지는 mp4 형식만 지원됩니다';
	@override String get k_13opfxf => 'web 페이지에서는 검색이 지원되지 않습니다';
	@override String get k_1i0o0y2 => '현재 Android/iOS만 지원됩니다';
	@override String k_045dtzl({required Object option1}) => '$option1의 채팅 기록';
	@override String get k_0t0131u => '그룹 프로필 정보';
	@override String get k_18ok8xz => '메시지 수신 방법';
	@override String get k_03ax3ks => '그룹 프로필';
	@override String k_0sqvoqo({required Object option1}) => '$option1을(를) 관리자로 설정';
	@override String k_1gbg1v8({required Object option1}) => '$option1의 관리자 권한 취소';
	@override String get k_17k64g4 => '그룹 채팅 생성 성공!';
	@override String get k_05mn217 => '이모티콘 패키지 플러그인이 설치되어 있지 않습니다. 관련 기능을 사용하려면 https://cloud.tencent.com/document/product/269/70746 문서에 따라 설치하시기 바랍니다.';
	@override String get k_14j17nz => '이모티콘 패키지가 없습니다';
	@override String get k_1tmlcf0 => '새 전화가 걸려왔지만 권한 부족으로 수신할 수 없습니다. 카메라/마이크 권한이 활성화되어 있는지 확인하세요.';
	@override String get k_0fvjexh => '다운로드 중';
	@override String get k_1cdagzz => '다운로드 대기열에 추가되었습니다. 다른 파일을 다운로드하는 중입니다.';
	@override String get k_0g4vojc => '다운로드 시작';
	@override String get k_026hiq5 => '메시지 목록 로딩 중';
	@override String get k_0b9q00i => 'tencent building////10000 shennan blvd, nanshan, shenzhen';
	@override String get k_03fw6h1 => '선전시';
	@override String get k_0f7mdn7 => '검색 실패';
	@override String get k_158cssa => 'Tencent Map';
	@override String get k_157htdw => 'AMap';
	@override String get k_157im4z => 'Baidu Map';
	@override String get k_157m20e => 'Apple Map';
	@override String get k_1bqk7kl => 'AMa=이 감지되지 않습니다';
	@override String get k_12ba1nv => 'Tencent Map가 감지되지 않습니다';
	@override String get k_1dz8sci => 'Baidu Map가 감지되지 않습니다';
	@override String get k_0f7fvky => '열기 실패';
	@override String get k_1l2v0we => 'Tencent building 내, 초상은행 정보 연구 개발 빌딩 18m 근방';
	@override String get k_10o8gk2 => '위치 검색';
	@override String get k_10o86v7 => '알 수 없는 위치';
	@override String get k_0elt0kw => '그룹 채팅 추가';
	@override String get k_03f15qk => '블록리스트';
	@override String get k_0s3p3ji => '블록리스트가 없습니다';
	@override String get k_0uc5cnb => '현재 베타 테스트 중으로 채널 생성이 지원되지 않습니다.';
	@override String get k_0s5ey0o => 'Tencent Real-Time Communication(TRTC)';
	@override String get k_03gpl3d => '안녕하세요, ';
	@override String get k_0352fjr => '네트워크를 사용할 수 없습니다';
	@override String get k_0d7n018 => '토픽 종료';
	@override String get k_0d826hk => '토픽 상단 고정';
	@override String get k_15wcgna => '종료 성공';
	@override String get k_15wo7xu => '상단 고정 성공';
	@override String k_02slfpm({required Object errorMessage}) => '$errorMessage 오류 발생';
	@override String get k_0h22snw => '음성 통화';
	@override String get k_0h20hg5 => '영상 통화';
	@override String get k_002s934 => '토픽';
	@override String get k_18g3zdo => 'Tencent Cloud Chat';
	@override String get k_1m8vyp0 => '새 대화 상대';
	@override String get k_0elz70e => '그룹 채팅';
	@override String get k_18tb4mo => '대화 상대가 없습니다';
	@override String get k_18nuh87 => '문의하기';
	@override String get k_1uf134v => '피드백 및 건의 사항: QQ 그룹 788910197';
	@override String get k_0xlhhrn => '서비스 시간: 월요일 - 금요일, 오전 10시 - 오후 8시';
	@override String get k_0gmpgcg => '아직 대화가 없습니다';
	@override String get k_1m8zuj4 => '대화 상대 선택';
	@override String get k_002tu9r => '성능';
	@override String k_0vwtop2({required Object getMsg}) => '메시지: $getMsg';
	@override String k_0upijvs({required Object message}) => '실패: $message';
	@override String get k_1tmcw5c => '토픽 제목을 완성하세요';
	@override String get k_1cnmslk => '반드시 하나 이상의 태그를 선택해야 합니다';
	@override String k_0v5hlay({required Object message}) => '토픽 생성 실패 $message';
	@override String get k_0z3ytji => '토픽 생성 성공';
	@override String get k_1a8vem3 => '실패';
	@override String get k_0eskkr1 => '토픽 선택';
	@override String get k_0d7plb5 => '토픽 생성';
	@override String get k_144t0ho => '---- 관련 토픽 ----';
	@override String get k_0pnz619 => '토픽 제목 입력';
	@override String get k_136v279 => '+태그(하나 이상 추가)';
	@override String get k_04hjhvp => '실패';
	@override String get k_002r79h => '전체';
	@override String get k_03ejkb6 => '추가됨';
	@override String get k_172tngw => '토픽(연결되지 않음)';
	@override String get k_0rnmfc4 => '토픽이 없습니다';
	@override String get k_1pq0ybn => '토픽이 추가되지 않았습니다';
	@override String get k_0bh95w0 => '네트워크를 사용할 수 없습니다';
	@override String get k_0em28sp => '그룹 채팅이 없습니다';
	@override String get k_04dqh36 => '새 대화 상대가 없습니다';
	@override String get k_08k00l9 => '로딩 중…';
	@override String get k_197r4f7 => 'tencent 서비스 연결 성공';
	@override String get k_1s5xnir => 'Tencent Cloud Chat sdk 초기화 실패';
	@override String k_0owk5ss({required Object failedReason}) => '로그인 실패 $failedReason';
	@override String get k_15bxnkw => '네트워크 연결 끊김';
	@override String get k_0glj9us => '대화 시작';
	@override String get k_1631kyh => '업무 그룹 생성';
	@override String get k_1644yii => '소셜 그룹 생성';
	@override String get k_1fxfx04 => '회의 그룹 생성';
	@override String get k_1cnkqc9 => '라이브 방송 그룹 생성';
	@override String get k_002r09z => '채널';
	@override String get k_003nvk2 => '메시지';
	@override String get k_1jwxwgt => '연결 중…';
	@override String get k_03gm52d => '연락처';
	@override String get k_003k7dc => '나';
	@override String get k_14yh35u => '로그인 · Tencent Cloud Chat';
	@override String get k_0st7i3e => '그룹 채팅, 음성/영상 대화 등 기능을 체험해보세요';
	@override String get k_0cr1atw => '중국대륙';
	@override String get k_0mnxjg7 => 'Tencent Cloud Chat에 오신 것을 환영합니다. 고객님의 개인정보 보호를 위해 <개인정보 보호정책>에 이용자 정보 수집의 구체적인 내용과 목적을 기재하고, 타사 sdk 사용 등 관련 내용을 추가하였습니다.';
	@override String get k_1545beg => ' ';
	@override String get k_0opnzp6 => '<사용자 이용 약관>';
	@override String get k_00041m1 => ' 및 ';
	@override String get k_0orhtx0 => '<개인 정보 처리 방침>';
	@override String get k_11x8pvm => '을(를) 클릭하여 읽으신 후, 내용에 동의하시면 ‘동의하고 계속’을 클릭하여 제품 및 서비스 사용을 시작하세요!';
	@override String get k_17nw8gq => '동의하고 계속하기';
	@override String get k_1nynslj => '동의하지 않고 종료하기';
	@override String get k_0jsvmjm => '휴대폰 번호를 입력하세요';
	@override String get k_1lg8qh2 => '휴대폰 번호 형식 오류';
	@override String get k_03jia4z => '네트워크를 사용할 수 없습니다';
	@override String get k_007jqt2 => '인증코드가 전송되었습니다';
	@override String get k_1a55aib => '인증코드 오류';
	@override String k_1mw45lz({required Object errorReason}) => '로그인 실패 $errorReason';
	@override String get k_16r3sej => '국가/지역';
	@override String get k_15hlgzr => '국가 코드를 선택하세요';
	@override String get k_1bnmt3h => '영어로 검색하세요';
	@override String get k_03fei8z => '휴대폰 번호';
	@override String get k_03aj66h => '인증코드';
	@override String get k_1m9jtmw => '인증코드를 입력하세요';
	@override String get k_0y1wbxk => '인증코드 받기';
	@override String get k_002ri2g => '로그인';
	@override String get k_161ecly => '현재 네트워크가 없습니다';
	@override String get k_11uz2i8 => '네트워크 재시도';
	@override String get k_1vhzltr => 'Tencent Cloud Chat';
	@override String get k_0j433ys => 'Tencent Cloud TRTC';
	@override String get k_0epvs61 => '스킨 변경';
	@override String get k_12u8g8l => '면책 성명';
	@override String get k_1p0j8i3 => 'Tencent Cloud Chat(‘본 제품’)은 Tencent Cloud가 제공하는 테스트 제품으로 모든 저작권과 소유권은 Tencent Cloud에게 있습니다. 본 제품은 기능 체험용으로만 사용할 수 있으며 상업적 용도로는 사용할 수 없습니다. 관련 규제 요구 사항을 충족하기 위해 본 제품의 음성/영상 상호 작용은 전 과정에 걸쳐 녹음 및 녹화되어 보관되며 사용 중 음란물, 욕설, 폭력, 테러, 정치 관련 및 기타 불법 콘텐츠를 유포하는 것은 엄격히 금지됩니다.';
	@override String get k_0k7qoht => '모든 친구 추가 허용';
	@override String get k_1j91bvz => 'tuikit이 프로필 사진을 선택해 드릴까요?';
	@override String get k_1wmkneq => '승인을 거쳐 친구 추가';
	@override String get k_1eitsd0 => 'Tencent Cloud Chat에 대해';
	@override String get k_1919d6m => '개인정보 정책';
	@override String get k_0wqhgor => '개인 정보 수집 목록';
	@override String get k_12rfxml => '제 3자 정보 공유 목록';
	@override String get k_131g7q4 => '계정 해지';
	@override String get k_03fel2u => '버전 번호';
	@override String get k_16kts8h => '로그아웃';
	@override String get k_13spdki => '메시지 전송';
	@override String get k_14c600t => '설명 수정';
	@override String get k_1f811a4 => '숫자, 영어, 언더바를 사용할 수 있습니다.';
	@override String get k_11z7ml4 => '상세 프로필';
	@override String get k_1ajt0b1 => '현재 위치를 가져오지 못했습니다';
	@override String get k_0lhm9xq => '검색 성공';
	@override String get k_0fdeled => '검색 실패';
	@override String get k_1yh0a50 => 'mapdidload-지도 로딩 완료';
	@override String get k_1t2zg6h => '이미지 인증코드 인증 실패';
	@override String get k_03ibfd2 => '일요일';
	@override String k_1o7lf2y({required Object errorMessage}) => '서버 오류: $errorMessage';
	@override String k_118l7sq({required Object requestErrorMessage}) => '요청 오류: $requestErrorMessage';
	@override String get k_003nfx9 => '어두운';
	@override String get k_003rvjp => '밝은';
	@override String get k_003rtht => '따뜻한';
	@override String get k_003qxiw => '몽환적인';
	@override String k_0s5zoi3({required Object option1}) => '오류 발생 $option1';
	@override String k_0i8egqa({required Object option8}) => '메시지: $option8';
	@override String k_0pokyns({required Object option8}) => '실패: $option8';
	@override String k_1y03m8a({required Object option8}) => '토픽 생성 실패 $option8';
	@override String k_1v6uh9c({required Object option8}) => '로그인 실패 $option8';
	@override String k_0t5a9hl({required Object option1}) => '로그인 실패 $option1';
	@override String k_0k3uv02({required Object option8}) => '서버 오류: $option8';
	@override String k_1g9o3kz({required Object option8}) => '요청 오류: $option8';
	@override String get k_14cahuz => 'Tencent Cloud Chat에 대해';
	@override String get k_0llnalm => 'sdk 버전 번호';
	@override String get k_13dyfii => '애플리케이션 버전 번호';
	@override String get k_12h52zh => '개인정보 보호정책';
	@override String get k_0fxhhwb => '사용자 이용 약관';
	@override String get k_18z2e6q => 'Tencent Cloud Chat(‘본 제품’)은 Tencent Cloud가 제공하는 테스트 제품으로 모든 저작권과 소유권은 Tencent Cloud에게 있습니다. 본 제품은 기능 체험용으로만 사용할 수 있으며 상업적 용도로는 사용할 수 없습니다. 사용 중 음란물, 욕설, 폭력, 테러, 정치 관련 및 기타 불법 콘텐츠를 유포하는 것은 엄격히 금지됩니다.';
	@override String get k_0zu7dd7 => '수집하는 정보 목록';
	@override String get k_0mcqhgh => '공유하는 정보 목록';
	@override String get k_12eqaty => '계정 해지';
	@override String get k_0ziqsr6 => '계정 해지 성공!';
	@override String get k_002qtgt => '해지';
	@override String k_0rvdu91({required Object option1}) => '해지하면 해당 계정을 사용할 수 없으며 관련 데이터도 삭제되어 복구할 수 없습니다. 계정 id: $option1';
	@override String get k_15d22qk => '계정 해지';
	@override String get k_036uv3f => 'Tencent Cloud Chat';
	@override String get k_167916k => 'WeChat 친구';
	@override String get k_03euwr1 => 'WeChat moment';
	@override String get k_0cxccci => '이(가) 당신을 영상 통화에 초대합니다';
	@override String get k_06lhh4b => '이(가) 당신을 음성 통화에 초대합니다';
	@override String get k_1ywo9ut => 'Tencent Cloud Chat은 qq의 기본 Tencent Cloud Chat 기능을 기반으로 개발되었습니다. sdk 연결만으로 채팅, 대화, 그룹 및 프로필 정보 관리 기능을 손쉽게 통합하고, 신호 메시지로 화이트보드 등 다른 서비스와 연결할 수 있습니다. Tencent Cloud Chat 기능을 여러 플랫폼의 미니 프로그램에 통합할 수 있어 다양한 커뮤니케이션 니즈를 충족시킵니다.';
	@override String get k_0ios26v => 'WeChat이 설치되지 않았습니다';
	@override String get k_1jg6d5x => '<개인정보 보호정책 요약>';
	@override String get k_0selni4 => '<개인정보 보호정책>';
	@override String get k_10s6v2i => '<정보 수집 목록>';
	@override String get k_0pasxq8 => '<정보 공유 목록>';
	@override String get k_003r6vf => '로그인';
	@override String get k_03f2zbs => '에 공유';
	@override String get k_0cfkcaz => '메시지 푸시';
	@override String get k_1rmkb2w => '새 채팅 메시지 푸시';
	@override String get k_1lg375c => '새 메시지 알림';
	@override String k_1t0akzp({required Object option1}) => '해지하면 현재 계정을 사용할 수 없으며 관련 데이터도 삭제되어 복구할 수 없습니다. 현재 계정 id: $option1';
	@override String get k_1699p6d => 'tencent building';
	@override String get k_1ngd60h => '10000 shennan blvd, nanshan, shenzhen';
	@override String get k_1na29vg => '위치 메시지 점검 중';
	@override String get k_1xmms9t => '그룹 참여 신청 목록';
	@override String get k_0dla4vp => 'qq 그룹에 참여하여 피드백 및 제안을 전달해주시기 바랍니다';
	@override String get k_1odrjd1 => '서비스 시간: 월요일 - 금요일, 오전 10시 - 오후 8시';
	@override String get k_1bh903m => 'qq 그룹 번호 복사 성공';
	@override String get k_16264lp => '그룹 번호 복사';
	@override String get k_18ger86 => 'Tencent Cloud Chat';
	@override String get k_1vd70l1 => '수억 명의 qq 사용자에게 서비스를 제공하는 Tencent Cloud Chat 기술';
	@override String get k_036phup => 'Tencent Cloud Chat';
	@override String get k_0gfsln9 => '정보가 변경됨';
	@override String get k_0ow4akh => 'demo의 readme 가이드에 따라 baidu ak를 구성하고 demo의 위치 정보 기능을 체험해보세요.';
	@override String get k_1kzh3lo => 'https://docs.qq.com/doc/dsvliwe9acurta2dl 문서를 참고하여 위치 메시지 기능을 빠르게 체험해보세요.';
	@override String get k_161zzkm => '사용자 이름을 입력하세요';
	@override String get k_1veosyv => '환경 변수에 key를 입력하세요';
	@override String get k_03exdnb => '사용자 이름';
	@override String get k_16kquu8 => '현재 목록';
	@override String get k_0fbvuqs => '복사 시작';
	@override String get k_16j153h => 'Tencent Cloud Chat app(‘본 제품’)은 Tencent Cloud가 제공하는 테스트 제품으로 모든 저작권과 소유권은 Tencent Cloud에게 있습니다. 본 제품은 기능 체험용으로만 사용할 수 있으며 상업적 용도로는 사용할 수 없습니다. 사용 중 음란물, 욕설, 폭력, 테러, 정치 관련 및 기타 불법 콘텐츠를 유포하는 것은 엄격히 금지됩니다.';
	@override String get k_13ghyf8 => '[보안 팁] 본 app은 Tencent Cloud Chat 제품의 기능을 체험용으로만 사용할 수 있으며 비즈니스 협상 및 확장 용도로 사용할 수 없습니다. 송금, 당첨금 등 금전 관련 정보와 모르는 전화번호를 신뢰하지 마시고, 사기 행위에 유의하시기 바랍니다.';
	@override String get k_0gt6cro => '신고하기';
	@override String k_03595fk({required Object option1}) => ' 등 $option1명';
	@override String k_1gpzgni({required Object option2}) => '$option2명 그룹';
	@override String get k_02lfg57 => '새 그룹 채팅';
	@override String get k_17ifd8i => '환영합니다. 이 app을 통해 Tencent Cloud Chat 제품 및 서비스를 체험해 보실 수 있습니다.';
	@override String get k_1f0ms23 => '메시지 읽음 상태';
	@override String get k_1c0x9ha => '비활성화하면 메시지에 읽음 상태가 표시되지 않아 상대방이 메시지를 읽었는지 알 수 없습니다.';
	@override String get k_1dzhdr5 => '온라인 상태 표시';
	@override String get k_0mwsniq => '비활성화하면 대화 목록 및 연락처에서 친구의 접속 상태(온라인/오프라인)를 볼 수 없습니다.';
	@override String get k_0f7h6ay => '연결 실패';
	@override String get k_0wreawq => 'baidu 지도 플러그인은 웹 버전이 지원되지 않습니다. 위치 정보 기능을 체험하려면 모바일 app demo를 사용하세요.';
	@override String get k_03c56co => '선택하지 않음';
	@override String get k_1klqdh1 => '한자, 영어, 숫자, 언더바만 사용할 수 있습니다';
	@override String get k_03el5lp => '미입력';
	@override String get k_0554lam => '업무 그룹(Work)';
	@override String get k_1hyz1ua => '공개 그룹(Public)';
	@override String get k_1s8hjin => '회의 그룹(Meeting)';
	@override String get k_16ejs8f => '라이브 방송 그룹(AVChatRoom)';
	@override String get k_1rqdzbh => '커뮤니티(Community)';
	@override String get k_1aue1b6 => '일반 WeChat 그룹과 유사하며, 사용자가 그룹 구성원인 친구의 초대를 받아 그룹에 참여할 수 있습니다. 초대 받은 사람의 동의나 그룹 소유자의 승인이 필요 없습니다.';
	@override String get k_0uldek7 => 'qq 그룹과 유사하며, 그룹 소유자가 그룹 관리자를 지정할 수 있습니다. 사용자가 그룹 id를 검색하여 그룹 참여 신청을 보내고, 그룹 소유자 또는 관리자의 승인을 받아야 그룹에 참여할 수 있습니다.';
	@override String get k_1nv4w25 => '사용자가 자유롭게 입/퇴장할 수 있으며, 사용자 그룹 참여 전의 메시지 기록 보기를 지원합니다. 회의 그룹은 멀티미디어 회의, 온라인 교육 등 tencent real-time communication(TRTC) 제품 통합 시나리오에 적합합니다.';
	@override String get k_1wbmoof => '사용자가 자유롭게 입/퇴장할 수 있으며, 구성원 인원 제한 및 메시지 기록 저장 기능이 없습니다. 라이브 스트리밍 제품과 통합하여 댓글 자막 채팅 시나리오에 활용할 수 있습니다.';
	@override String get k_11mlyaa => '생성 후에는 마음대로 입장/퇴장 가능하고, 최대 지원 인원은 10만 명이며, 메시지 기록 보관이 지원됩니다. 사용자가 그룹 id를 검색하여 그룹 참여를 요청하면 관리자 승인 없이 그룹에 참여할 수 있습니다.';
	@override String get k_0ylgdrb => '커뮤니티 demo는 현재 개발 중으로 곧 출시될 예정입니다';
	@override String get k_0elsjm2 => '그룹 채팅 생성';
	@override String get k_1iw4gdk => '모두 수락';
	@override String get k_0i5ffqf => '승인 필요';
	@override String get k_111mgqj => '모두 거부';
	@override String get k_03go2lu => '미지정';
	@override String get k_15zb99m => '상대방의 친구 추가 신청';
	@override String get k_1llp7tu => '이 사용자는 존재하지 않습니다';
	@override String get k_0tbyqyb => '로딩 중……';
	@override String get k_0td1p3f => '저장 중…';
	@override String get k_1ui0gai => '다음에서 검색';
	@override String get k_03agld7 => '그룹 알림';
	@override String get k_002wkr3 => '번역';
	@override String get k_13g4hxv => '번역 완료';
	@override String k_1qqgjra({required Object option3}) => '읽지 않은 메세지 수 : $option3';
	@override String get k_0rcqou9 => 'Copyright © 2013-2023 Tencent Cloud. All Rights Reserved. 腾讯云 版权所有';
	@override String get k_0uubyjr => '읽지 않은 메시지';
	@override String get k_0kg1wsx => '그룹 유형 선택';
	@override String get k_003m6xh => '설정';
	@override String get k_18nszwl => '회사 정보';
	@override String get k_003txiw => '약';
	@override String get k_12fp4oc => '공식 웹 사이트';
	@override String get k_1391sy5 => '일괄적인 개발, 모든 플랫폼에 배포 가능, 와이드 스크린 및 슬림 스크린 모두를 대응합니다.';
	@override String get k_002vu95 => '환영합니다';
	@override String get k_0o6nt4d => ' \'텐센트 클라우드 IM 전체 규약 및 규정\'을 읽고 이에 동의합니다.';
	@override String get k_12l2415 => ' (C) 2013-2023 Tencent Cloud. All Rights Reserved. Tencent Cloud. All Rights Reserved.';
	@override String get k_003lmhx => '그룹';
	@override String get k_1s251fa => '연락처 및 그룹';
	@override String get k_0cjp3hx => '자세한 정보를 확인하려면 연락처 또는 그룹을 선택하세요.';
	@override String get k_12veoax => '채널 전환:';
	@override String get k_002rfh9 => '국제';
	@override String get k_0864lq3 => '사용 중 궁금한 사항이 있으면 다음 채널을 통해 문의하십시오.';
	@override String get k_12625cy => '그룹에 참여하기';
	@override String get k_131lvxd => '내 계정';
	@override String get k_002qep7 => '인터페이스';
	@override String get k_002vbyp => '외관';
	@override String get k_16owrwc => '라이트 모드';
	@override String get k_01zair9 => '다크 모드 (개발 중)';
	@override String get k_002skx2 => '테마';
	@override String get k_002wzvs => '언어';
	@override String get k_002woft => '영어';
	@override String get k_129eldp => '번체 중국어';
	@override String get k_129ekqk => '간체 중국어';
	@override String get k_002whil => '일본어';
	@override String get k_002wqld => '한국어';
	@override String get k_003is6v => '일반';
	@override String get k_12s2mfc => '자세한 정보 보기';
	@override String get k_12fsjye => '관련 웹 사이트';
	@override String get k_16uejmj => '개인 센터';
	@override String get k_0dtyory => '의견 제안';
	@override String get k_03oy6z4 => '모든 SDK';
	@override String get k_03bh54n => '소스 코드';
	@override String get k_0s3sgel => '블랙리스트에서 제거';
	@override String get k_16as7eq => '이모티콘 반응';
	@override String get k_003s12u => '답장';
	@override String get k_003s38r => '더보기';
	@override String get k_003molk => '이모티콘';
	@override String get k_165bbw6 => '메시지 기록';
	@override String get k_13sqc0z => '메시지 삭제';
	@override String get k_0glns86 => '대화방 나가기';
	@override String get k_13s99rx => '메시지 초기화';
	@override String get k_11vsa3j => '그룹 나가기';
	@override String get k_11vvszp => '그룹 해체';
	@override String get k_15i9w72 => '그룹 관리자';
	@override String get k_0p3espj => '별명 설정';
	@override String get k_118sw9v => '지금 검색';
	@override String get k_003mmoz => '로켓';
	@override String get k_003nogx => '비행기';
	@override String get k_003pjj6 => '왕관';
	@override String get k_000340k => '꽃';
	@override String k_0cv8ngo({required Object option1}) => '$option1을 선물하기';
	@override String get k_03a2zjl => '선물하기';
	@override String get k_0003yq8 => '개';
	@override String get k_13k5228 => '방송 방을 좋아했습니다';
	@override String get k_1k0rrvn => '무엇을 말할까요...';
	@override String get k_13jzi5y => '방송 방으로 이동';
	@override String get k_14asoqo => '팔로우 취소';
	@override String get k_003ohwe => '팔로우';
	@override String k_1h33pzv({required Object option1}) => '팬 $option1 |';
	@override String k_07skbgr({required Object option2}) => ' $option2 팔로우';
	@override String k_1c99nb3({required Object option1}) => '$option1 만+';
	@override String get k_19mfrrb => '온라인 시청객';
	@override String get k_13m65um => '시청자 정보';
	@override String k_19kj6te({required Object option1}) => '$option1 이번 방에서 좋아요';
	@override String get k_1xn4cn2 => '운영 환경 검사';
	@override String get k_0sy25ey => '이 프로그램을 사용하려면 먼저 Microsoft Edge WebView2 운영 환경을 설치하세요.';
	@override String get k_0g4tlsb => '지금 다운로드';
	@override String get k_13ozr8k => '현재 지원되지 않습니다';
	@override String get k_16yiku8 => 'Web 버전에서는 로컬 검색이 지원되지 않습니다. Mobile App 또는 Desktop 버전을 사용해보세요.';
	@override String get k_003lz6t => '상대방';
	@override String k_1xf4yre({required Object option1}) => '$option1에게 보내기';
	@override String get k_003por5 => '스크린샷';
	@override String get k_0c67rdb => '다중 선택 허용';
	@override String get k_11lav8q => '익명 투표';
	@override String get k_137cjfq => '공개 결과';
	@override String get k_0e3jces => '옵션을 입력하세요';
	@override String get k_0dcbhiz => '옵션 추가';
	@override String get k_003r4qf => '게시';
	@override String get k_1xa5q8q => '투표 제목을 입력하세요';
	@override String get k_003nv7m => '투표 완료';
	@override String get k_002ym5d => '표,';
	@override String get k_003pfxt => '비율';
	@override String get k_0fxdch1 => '투표 플러그인이 초기화되지 않았습니다. 먼저 초기화하십시오.';
	@override String get k_1lzoopr => '투표 메시지가 아닙니다. 확인하십시오.';
	@override String get k_03ahybu => '투표 완료';
	@override String get k_11lamu8 => '투표 바로가기';
	@override String get k_0b9h7nq => '투표가 종료되었습니다';
	@override String get k_0c7zem1 => '다시 보내기';
	@override String get k_11l1qvo => '투표 종료';
	@override String get k_0z314c0 => '[선다형]';
	@override String get k_0z2zcm7 => '[택일형]';
	@override String get k_0y8ap8v => '[공개]';
	@override String get k_0y4cs5n => '[비공개]';
	@override String get k_0y6agtt => '[익명]';
	@override String get k_0y68wmo => '[실명]';
	@override String k_1pssgjf({required Object option1}) => '참여 예정자 수 :$option1';
	@override String k_0x9zkqf({required Object option2}) => '실제 참여자 수 : $option2';
	@override String get k_09ikyqj => '모든옵션보기';
	@override String k_0h2jp2z({required Object option1}) => '$option1표';
	@override String get k_0y2zr3y => '[투표]';
	@override String get k_11lci1l => '투표 생성하기';
	@override String get k_003l988 => '투표';
	@override String get k_1rw7s82 => ' 사진, 동영상 전송 등의 기능을 사용하기 위해 사진 권한에 액세스합니다.';
	@override String get k_003rcwm => '열기';
	@override String get k_1698c42 => 'Finder에서 보기';
	@override String get k_066fxsz => '폴더 보기';
	@override String get k_0k432y2 => '폴더가 포함되어 있어서 전송할 수 없습니다';
	@override String get k_002wb4y => '채팅';
	@override String get k_0od4qyh => '비디오 예외';
	@override String get k_1cdzld5 => '제품 정보를 입력하십시오';
	@override String get k_19qt9y2 => '서비스 평가';
	@override String get k_13s7ltw => '카드 메시지';
	@override String get k_13ajr25 => '온라인 고객 서비스';
	@override String get k_0ti5mfz => '온라인 고객 서비스가 없습니다';
	@override String get k_1bfkxg9 => '0KB 파일 전송이 지원되지 않습니다';
	@override String get k_0vvsw7g => '파일 처리 예외';
	@override String get k_06e224q => '[메시지가 관리자에 의해 취소되었습니다]';
	@override String get k_1u1mjcl => '[메시지가 취소되었습니다]';
	@override String get k_1qcqxea => '여러 대화 선택';
	@override String get k_1qgmc20 => '대화 선택';
	@override String get k_1d8nx6f => '새 창에서 열기';
	@override String get k_1hz05ax => '원래 리소스를 다운로드 중입니다. 잠시 기다려주세요...';
	@override String get k_1fszgep => '저희와 채팅하기:';
	@override String get k_1xtvvs9 => '전문 공식 기술 지원';
	@override String get k_0cdljc3 => '참가';
	@override String get k_167dvo3 => '연락처 선택';
	@override String get k_1u1jwb8 => '텔레그램';
}

// Path: <root>
class _StringsZhHans implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsZhHans.build();

	/// Access flat map
	@override dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	@override late final Map<String, dynamic> _flatMap = _buildFlatMap();

	@override late final _StringsZhHans _root = this; // ignore: unused_field

	// Translations
	@override String get k_1yemzyd => '收到一条消息';
	@override String get k_0ylosxn => '自定义消息';
	@override String get k_13sajrj => '表情消息';
	@override String get k_13sjeb7 => '文件消息';
	@override String get k_0yd2ft8 => '群提示消息';
	@override String get k_13s7mxn => '图片消息';
	@override String get k_13satlt => '位置消息';
	@override String get k_00bbtsx => '合并转发消息';
	@override String get k_13sqwu4 => '语音消息';
	@override String get k_13sqjjp => '视频消息';
	@override String get k_1fdhj9g => '该版本不支持此消息';
	@override String get k_06pujtm => '同意任何用户添加好友';
	@override String get k_0gyhkp5 => '需要验证';
	@override String get k_121ruco => '拒绝任何人加好友';
	@override String get k_05nspni => '自定义字段';
	@override String get k_03fchyy => '群头像';
	@override String get k_03i9mfe => '群简介';
	@override String get k_03agq58 => '群名称';
	@override String get k_039xqny => '群通知';
	@override String get k_003tr0a => '群主';
	@override String get k_03c49qt => '去授权';
	@override String get k_002wddw => '禁言';
	@override String get k_0got6f7 => '解除禁言';
	@override String get k_1uaqed6 => '[自定义]';
	@override String get k_0z2z7rx => '[语音]';
	@override String get k_0y39ngu => '[表情]';
	@override String get k_0y1a2my => '[图片]';
	@override String get k_0z4fib8 => '[视频]';
	@override String get k_0y24mcg => '[位置]';
	@override String get k_0pewpd1 => '[聊天记录]';
	@override String get k_13s8d9p => '未知消息';
	@override String get k_1c3us5n => '当前群组不支持@全体成员';
	@override String get k_11k579v => '发言中有非法语句';
	@override String get k_003qkx2 => '日历';
	@override String get k_003n2pz => '相机';
	@override String get k_03idjo0 => '联系人';
	@override String get k_003ltgm => '位置';
	@override String get k_02k3k86 => '麦克风';
	@override String get k_003pm7l => '相册';
	@override String get k_15ao57x => '相册写入';
	@override String get k_164m3jd => '本地存储';
	@override String get k_03r6qyx => '我们需要您的同意才能获取信息';
	@override String get k_02noktt => '不允许';
	@override String get k_00043x4 => '好';
	@override String get k_003qzac => '昨天';
	@override String get k_003r39d => '前天';
	@override String get k_03fqp9o => '星期天';
	@override String get k_03ibg5h => '星期一';
	@override String get k_03i7hu1 => '星期二';
	@override String get k_03iaiks => '星期三';
	@override String get k_03el9pa => '星期四';
	@override String get k_03i7ok1 => '星期五';
	@override String get k_03efxyg => '星期六';
	@override String get k_003q7ba => '下午';
	@override String get k_003q7bb => '上午';
	@override String get k_003pu3h => '现在';
	@override String get k_0n9pyxz => '用户不存在';
	@override String get k_1bjwemh => '搜索用户 ID';
	@override String get k_003kv3v => '搜索';
	@override String get k_16758qw => '添加好友';
	@override String get k_0i553x0 => '填写验证信息';
	@override String get k_031ocwx => '请填写备注和分组';
	@override String get k_003ojje => '备注';
	@override String get k_003lsav => '分组';
	@override String get k_167bdvq => '我的好友';
	@override String get k_156b4ut => '好友申请已发送';
	@override String get k_002r305 => '发送';
	@override String get k_03gu05e => '聊天室';
	@override String get k_03b4f3p => '会议群';
	@override String get k_03avj1p => '公开群';
	@override String get k_03asq2g => '工作群';
	@override String get k_03b3hbi => '未知群';
	@override String k_1loix7s({required Object groupType}) => '群类型: $groupType';
	@override String get k_1lqbsib => '该群聊不存在';
	@override String get k_03h153m => '搜索群ID';
	@override String get k_0oxak3r => '群申请已发送';
	@override String get k_002rflt => '删除';
	@override String get k_1don84v => '无法定位到原消息';
	@override String get k_003q5fi => '复制';
	@override String get k_003prq0 => '转发';
	@override String get k_002r1h2 => '多选';
	@override String get k_003j708 => '引用';
	@override String get k_003pqpr => '撤回';
	@override String get k_03ezhho => '已复制';
	@override String get k_11ctfsz => '暂未实现';
	@override String get k_1hbjg5g => '[群系统消息]';
	@override String get k_03tvswb => '[未知消息]';
	@override String get k_155cj23 => '您撤回了一条消息，';
	@override String get k_0gapun3 => '重新编辑';
	@override String get k_1aszp2k => '您确定要重发这条消息么？';
	@override String get k_003rzap => '确定';
	@override String get k_003nevv => '取消';
	@override String get k_0003z7x => '您';
	@override String get k_002wfe4 => '已读';
	@override String get k_002wjlg => '未读';
	@override String get k_0h1ygf8 => '发起通话';
	@override String get k_0h169j0 => '取消通话';
	@override String get k_0h13jjk => '接受通话';
	@override String get k_0h19hfx => '拒绝通话';
	@override String get k_0obi9lh => '超时未接听';
	@override String get k_001nmhu => '用其他应用打开';
	@override String get k_1ht1b80 => '正在接收中';
	@override String get k_105682d => '图片加载失败';
	@override String get k_0pytyeu => '图片保存成功';
	@override String get k_0akceel => '图片保存失败';
	@override String get k_003rk1s => '保存';
	@override String get k_04a0awq => '[语音消息]';
	@override String get k_105c3y3 => '视频加载失败';
	@override String get k_176rzr7 => '聊天记录';
	@override String get k_0d5z4m5 => '选择提醒人';
	@override String get k_003ngex => '完成';
	@override String get k_1665ltg => '发起呼叫';
	@override String get k_003n8b0 => '拍摄';
	@override String get k_003kthh => '照片';
	@override String get k_003tnp0 => '文件';
	@override String get k_0jhdhtp => '发送失败,视频不能大于100MB';
	@override String get k_119ucng => '图片不能为空';
	@override String get k_13dsw4l => '松开取消';
	@override String get k_0am7r68 => '手指上滑，取消发送';
	@override String get k_15jl6qw => '说话时间太短!';
	@override String get k_0gx7vl6 => '按住说话';
	@override String get k_15dlafd => '逐条转发';
	@override String get k_15dryxy => '合并转发';
	@override String get k_1eyhieh => '确定删除已选消息';
	@override String get k_17fmlyf => '清除聊天';
	@override String get k_0dhesoz => '取消置顶';
	@override String get k_002sk7x => '置顶';
	@override String get k_003ll77 => '草稿';
	@override String get k_03icaxo => '自定义';
	@override String get k_1uaov41 => '查找聊天内容';
	@override String get k_003kfai => '未知';
	@override String get k_13dq4an => '自动审批';
	@override String get k_0l13cde => '管理员审批';
	@override String get k_11y8c6a => '禁止加群';
	@override String get k_1kvyskd => '无网络连接，无法修改';
	@override String get k_16payqf => '加群方式';
	@override String get k_0vzvn8r => '修改群名称';
	@override String get k_038lh6u => '群管理';
	@override String get k_0k5wyiy => '设置管理员';
	@override String get k_0goiuwk => '全员禁言';
	@override String get k_1g889xx => '全员禁言开启后，只允许群主和管理员发言。';
	@override String get k_0wlrefq => '添加需要禁言的群成员';
	@override String get k_0goox5g => '设置禁言';
	@override String get k_08daijh => '成功取消管理员身份';
	@override String get k_0k5u935 => '添加管理员';
	@override String get k_03enyx5 => '群成员';
	@override String get k_0h1svv1 => '删除群成员';
	@override String get k_0h1g636 => '添加群成员';
	@override String get k_0uj7208 => '无网络连接，无法查看群成员';
	@override String get k_0hpukyx => '查看更多群成员';
	@override String get k_0qtsar0 => '消息免打扰';
	@override String get k_0ef2a12 => '修改我的群昵称';
	@override String get k_1aajych => '仅限中文、字母、数字和下划线，2-20个字';
	@override String get k_137pab5 => '我的群昵称';
	@override String get k_0ivim6d => '暂无群公告';
	@override String get k_03eq6cn => '群公告';
	@override String get k_002vxya => '编辑';
	@override String get k_17fpl3y => '置顶聊天';
	@override String get k_03es1ox => '群类型';
	@override String get k_003mz1i => '同意';
	@override String get k_003lpre => '拒绝';
	@override String get k_003qk66 => '头像';
	@override String get k_003lhvk => '昵称';
	@override String get k_003ps50 => '账号';
	@override String get k_15lx52z => '个性签名';
	@override String get k_003qgkp => '性别';
	@override String get k_003m6hr => '生日';
	@override String get k_0003v6a => '男';
	@override String get k_00043x2 => '女';
	@override String get k_03bcjkv => '未设置';
	@override String get k_11s0gdz => '修改昵称';
	@override String get k_0p3j4sd => '仅限中字、字母、数字和下划线';
	@override String get k_15lyvdt => '修改签名';
	@override String get k_0vylzjp => '这个人很懒，什么也没写';
	@override String get k_1hs7ese => '等上线再改这个';
	@override String get k_03exjk7 => '备注名';
	@override String get k_0s3skfd => '加入黑名单';
	@override String get k_0p3b31s => '修改备注名';
	@override String get k_0003y9x => '无';
	@override String get k_11zgnfs => '个人资料';
	@override String get k_1tez2xl => '暂无个性签名';
	@override String get k_118prbn => '全局搜索';
	@override String get k_1m9dftc => '全部联系人';
	@override String get k_0em4gyz => '全部群聊';
	@override String get k_002twmj => '群聊';
	@override String get k_09kga0d => '更多聊天记录';
	@override String get k_09khmso => '相关聊天记录';
	@override String get k_0vjj2kp => '群聊的聊天记录';
	@override String get k_003n2rp => '选择';
	@override String get k_03ignw6 => '所有人';
	@override String get k_03erpei => '管理员';
	@override String get k_0qi9tno => '群主、管理员';
	@override String get k_1m9exwh => '最近联系人';
	@override String get k_119nwqr => '输入不能为空';
	@override String get k_0pzwbmg => '视频保存成功';
	@override String get k_0aktupv => '视频保存失败';
	@override String k_1qbg9xc({required Object option8}) => '$option8为 ';
	@override String k_1wq5ubm({required Object option7}) => '$option7修改';
	@override String k_0y5pu80({required Object option6}) => '$option6退出群聊';
	@override String k_0nl7cmd({required Object option5}) => '邀请$option5加入群组';
	@override String k_1ju5iqw({required Object option4}) => '将$option4踢出群组';
	@override String k_1ovt677({required Object option3}) => '用户$option3加入了群聊';
	@override String k_0k05b8b({required Object option2}) => '$option2 被';
	@override String k_0wm4xeb({required Object option2}) => '系统消息 $option2';
	@override String k_0nbq9v3({required Object option2}) => '通话时间：$option2';
	@override String k_0i1kf53({required Object option2}) => '[文件] $option2';
	@override String k_1gnnby6({required Object option2}) => '想访问您的$option2';
	@override String k_1wh4atg({required Object option2}) => '$option2 分钟前';
	@override String k_07sh7g1({required Object option2}) => '昨天 $option2';
	@override String k_1pj8xzh({required Object option2}) => '我的用户ID: $option2';
	@override String k_0py1evo({required Object option2}) => '个性签名: $option2';
	@override String k_1kvj4i2({required Object option2}) => '$option2撤回了一条消息';
	@override String k_1v0lbpp({required Object option2}) => '“$option2”暂不可以打开此类文件，你可以使用其他应用打开并预览';
	@override String k_0torwfz({required Object option2}) => '选择成功$option2';
	@override String k_0i1bjah({required Object option1}) => '$option1撤回了一条消息';
	@override String k_1qzxh9q({required Object option3}) => '通话时间：$option3';
	@override String k_0wrgmom({required Object option1}) => '[语音通话]：$option1';
	@override String k_06ix2f0({required Object option2}) => '[视频通话]：$option2';
	@override String k_08o3z5w({required Object option1}) => '[文件] $option1';
	@override String k_0ezbepg({required Object option2}) => '$option2[有人@我]';
	@override String k_1ccnht1({required Object option2}) => '$option2[@所有人]';
	@override String k_1k3arsw({required Object option2}) => '管理员 ($option2/10)';
	@override String k_1d4golg({required Object option1}) => '群成员($option1人)';
	@override String k_1bg69nt({required Object option1}) => '$option1人';
	@override String k_00gjqxj({required Object option1}) => '个性签名: $option1';
	@override String k_0c29cxr({required Object option1}) => '$option1条相关聊天记录';
	@override String k_1twk5rz({required Object option1}) => '与$option1的聊天记录';
	@override String k_1vn4xq1({required Object adminMember}) => '将 $adminMember 取消管理员';
	@override String get k_0e35hsw => '为方便您将所拍摄的照片或视频发送给朋友，以及进行视频通话，请允许我们访问摄像头进行拍摄照片和视频。';
	@override String get k_0dj6yr7 => '为方便您发送语音消息、拍摄视频以及音视频通话，请允许我们使用麦克风进行录音。';
	@override String get k_003qnsl => '存储';
	@override String get k_0s3rtpw => '为方便您查看和选择相册里的图片视频发送给朋友，以及保存内容到设备，请允许我们访问您设备上的照片、媒体内容。';
	@override String k_0tezv85({required Object option2}) => ' 申请获取$option2';
	@override String get k_002rety => '权限';
	@override String get k_18o68ro => '需要授予';
	@override String get k_1onpf8u => ' 相机权限，以正常使用拍摄图片视频、视频通话等功能。';
	@override String get k_17irga5 => ' 麦克风权限，以正常使用发送语音消息、拍摄视频、音视频通话等功能。';
	@override String get k_0572kc4 => ' 访问照片权限，以正常使用发送图片、视频等功能。';
	@override String get k_0slykws => ' 访问相册写入权限，以正常使用存储图片、视频等功能。';
	@override String get k_119pkcd => ' 文件读写权限，以正常使用在聊天功能中的图片查看、选择能力和发送文件的能力。';
	@override String get k_0gqewd3 => '以后再说';
	@override String get k_03eq4s1 => '去开启';
	@override String get k_0nt2uyg => '回到最新位置';
	@override String k_04l16at({required Object option1}) => '$option1条新消息';
	@override String get k_13p3w93 => '有人@我';
	@override String get k_18w5uk6 => '@所有人';
	@override String get k_0jmujgh => '其他文件正在接收中';
	@override String get k_12s5ept => '消息详情';
	@override String k_0mxa4f4({required Object option1}) => '$option1人已读';
	@override String k_061tue3({required Object option2}) => '$option2人未读';
	@override String get k_18qjstb => '转让群主';
	@override String k_0on1aj2({required Object option2}) => '有$option2条@我消息';
	@override String get k_09j4izl => '[有人@我] ';
	@override String get k_1oqtjw0 => '[@所有人] ';
	@override String k_1x5a9vb({required Object option1}) => '我是: $option1';
	@override String get k_14n31e7 => '进群请求';
	@override String k_08nc5j1({required Object option1}) => '群类型: $option1';
	@override String k_1josu12({required Object option1}) => '$option1 条入群请求';
	@override String k_0n2x5s0({required Object option2}) => '验证消息: $option2';
	@override String get k_03c1nx0 => '已同意';
	@override String get k_03aw9w8 => '已拒绝';
	@override String get k_038ryos => '去处理';
	@override String get k_0gw8pum => '进群申请';
	@override String get k_1gcvfrj => '请填写备注';
	@override String get k_002v9zj => '确认';
	@override String get k_10oqrki => '轻触拍照';
	@override String get k_0f8b3ws => '加载失败';
	@override String get k_11cm5lm => '手动聚焦';
	@override String get k_002uzrd => '预览';
	@override String get k_003qkn3 => '录像';
	@override String get k_003k6a7 => '拍照';
	@override String get k_0bqpqco => '拍照按钮';
	@override String get k_1626ozl => '停止录像';
	@override String get k_003lvmu => '前置';
	@override String get k_003lued => '后置';
	@override String get k_003lwzh => '外置';
	@override String get k_002qzi3 => '关闭';
	@override String get k_003pufb => '自动';
	@override String get k_0apm0ze => '拍照时闪光';
	@override String get k_157zog5 => '始终闪光';
	@override String k_0cfyqhy({required Object option1}) => '$option1 画面预览';
	@override String k_0phctlz({required Object option2}) => '闪光模式: $option2';
	@override String k_02vfqe0({required Object option3}) => '切换至 $option3 摄像头';
	@override String get k_0f0y9ex => '说话时间太短';
	@override String get k_0ln70tk => '无法打开URL';
	@override String get k_11a3jdv => '轻触拍照，长按摄像';
	@override String get k_1k18miv => '请传入离开群组生命周期函数，提供返回首页或其他页面的导航方法。';
	@override String get k_0gmwbnd => '全员禁言中';
	@override String get k_0got2zr => '您被禁言';
	@override String get k_0y9jck8 => '你必须自定义search bar，并处理点击跳转';
	@override String get k_0yum3tv => '如使用自定义区域，请在profileWidgetBuilder传入对应组件';
	@override String get k_09kalj0 => '清空聊天记录';
	@override String get k_14j5iul => '删除并退出';
	@override String get k_125ru1w => '解散该群';
	@override String get k_0jtutmw => '退出后不会接收到此群聊消息';
	@override String get k_0jtzmqa => '解散后不会接收到此群聊消息';
	@override String get k_0r8fi93 => '好友添加成功';
	@override String get k_02qw14e => '好友申请已发出';
	@override String get k_0n3md5x => '当前用户在黑名单';
	@override String get k_094phq4 => '好友添加失败';
	@override String get k_129scag => '好友删除成功';
	@override String get k_129uzfn => '好友删除失败';
	@override String get k_1666isy => '清除好友';
	@override String get k_1679vrd => '加为好友';
	@override String get k_0h18bbi => '结束通话';
	@override String get k_154q2hn => '通话超时未应答';
	@override String get k_1mnjtnc => '对方已挂断';
	@override String get k_0l0mysn => '发生错误:';
	@override String get k_03fn6rg => '无响应';
	@override String get k_003luo3 => '忙线';
	@override String get k_154jvfi => '你被踢下线了';
	@override String get k_1sp7jp6 => '取消了通话';
	@override String get k_1045haa => '等待对方接受邀请...';
	@override String get k_1gq7jv7 => '邀请您通话...';
	@override String get k_003m7ey => '挂断';
	@override String get k_03ectox => '扬声器';
	@override String get k_003q2a4 => '接听';
	@override String get k_03ftugq => '摄像头';
	@override String get k_10setgr => '切到语音通话';
	@override String get k_1g7i9jz => '切换摄像头';
	@override String get k_15ml1ls => '等待接听';
	@override String get k_0nj9x9s => '邀请你加入多人通话';
	@override String get k_1vtto3l => '参与通话的还有:';
	@override String get k_0h147mx => '正在通话';
	@override String k_0j6aylo({required Object option1}) => '通话时间：$option1';
	@override String get k_1fu9ahv => '全员禁言状态';
	@override String get k_1ualc52 => '看看对方带来的数据是啥';
	@override String get k_0szluvp => '设置对方在线状态';
	@override String get k_0f4rnf8 => '该用户已是好友';
	@override String get k_1tdkom4 => '您已是群成员';
	@override String get k_1p2lyuz => '对方正在输入中...';
	@override String k_1g8wfpy({required Object option1}) => '...共$option1人';
	@override String get k_12rv9vw => '回应详情';
	@override String get k_0n9p7g8 => '群组不存在';
	@override String get k_1tdh5vn => '您不是群成员';
	@override String get k_0h1q57v => '暂无群成员';
	@override String k_0y5drq1({required Object option1}) => '[查看详情 >>]($option1)';
	@override String get k_03pjp61 => '[表情消息]';
	@override String get k_1jpvzul => '[自定义消息]';
	@override String get k_03u3bh1 => '[文件消息]';
	@override String get k_1odsnsw => '[群消息]';
	@override String get k_03sel4t => '[图片消息]';
	@override String get k_03sfw3r => '[位置消息]';
	@override String get k_03xpuwq => '[合并消息]';
	@override String get k_07ycxwo => '[没有元素]';
	@override String get k_03rc9vz => '[文本消息]';
	@override String get k_046uopf => '[视频消息]';
	@override String get k_0ehmsun => '设备存储空间不足，建议清理，以获得更好使用体验';
	@override String get k_003kmos => '图片';
	@override String get k_002s86q => '视频';
	@override String get k_06bk5ei => '视频消息仅限 mp4 格式';
	@override String get k_13opfxf => 'Web网页端不支持搜索';
	@override String get k_1i0o0y2 => '暂时仅限 Android/iOS 端';
	@override String k_045dtzl({required Object option1}) => '$option1的聊天记录';
	@override String get k_0t0131u => '群资料信息';
	@override String get k_18ok8xz => '消息接收方式';
	@override String get k_03ax3ks => '群资料';
	@override String k_0sqvoqo({required Object option1}) => '将 $option1 设置为管理员';
	@override String k_1gbg1v8({required Object option1}) => '将 $option1 取消管理员';
	@override String get k_17k64g4 => '群聊创建成功！';
	@override String get k_05mn217 => '暂未安装表情包插件，如需使用表情相关功能，请根据本文档安装：https://cloud.tencent.com/document/product/269/70746';
	@override String get k_14j17nz => '暂无表情包';
	@override String get k_1tmlcf0 => '新通话呼入，但因权限不足，无法接听。请确认摄像头/麦克风权限已开启。';
	@override String get k_0fvjexh => '正在下载中';
	@override String get k_1cdagzz => '已加入待下载队列，其他文件下载中';
	@override String get k_0g4vojc => '开始下载';
	@override String get k_026hiq5 => '消息列表加载中';
	@override String get k_0b9q00i => '腾讯大厦/////深圳市南山区深南大道10000号';
	@override String get k_03fw6h1 => '深圳市';
	@override String get k_0f7mdn7 => '检索失败';
	@override String get k_158cssa => '腾讯地图';
	@override String get k_157htdw => '高德地图';
	@override String get k_157im4z => '百度地图';
	@override String get k_157m20e => '苹果地图';
	@override String get k_1bqk7kl => '未检测到高德地图';
	@override String get k_12ba1nv => '未检测到腾讯地图';
	@override String get k_1dz8sci => '未检测到百度地图';
	@override String get k_0f7fvky => '打开失败';
	@override String get k_1l2v0we => '腾讯大厦内，招行信息研发大厦附近18米';
	@override String get k_10o8gk2 => '搜索地点';
	@override String get k_10o86v7 => '未知地点';
	@override String get k_0elt0kw => '添加群聊';
	@override String get k_03f15qk => '黑名单';
	@override String get k_0s3p3ji => '暂无黑名单';
	@override String get k_0uc5cnb => '我们还在内测中，暂不支持创建频道。';
	@override String get k_0s5ey0o => '实时音视频 TRTC';
	@override String get k_03gpl3d => '大家好';
	@override String get k_0352fjr => '无网络连接，进入频道失败';
	@override String get k_0d7n018 => '结束话题';
	@override String get k_0d826hk => '置顶话题';
	@override String get k_15wcgna => '结束成功';
	@override String get k_15wo7xu => '置顶成功';
	@override String k_02slfpm({required Object errorMessage}) => '发生错误 $errorMessage';
	@override String get k_0h22snw => '语音通话';
	@override String get k_0h20hg5 => '视频通话';
	@override String get k_002s934 => '话题';
	@override String get k_18g3zdo => '云通信·IM';
	@override String get k_1m8vyp0 => '新的联系人';
	@override String get k_0elz70e => '我的群聊';
	@override String get k_18tb4mo => '无联系人';
	@override String get k_18nuh87 => '联系我们';
	@override String get k_1uf134v => '反馈及建议可以加入QQ群：788910197';
	@override String get k_0xlhhrn => '在线时间，周一到周五，早上10点 - 晚上8点';
	@override String get k_0gmpgcg => '暂无会话';
	@override String get k_1m8zuj4 => '选择联系人';
	@override String get k_002tu9r => '性能';
	@override String k_0vwtop2({required Object getMsg}) => '获取到的消息:$getMsg';
	@override String k_0upijvs({required Object message}) => '获取讨论区列表失败 $message';
	@override String get k_1tmcw5c => '请完善话题标题';
	@override String get k_1cnmslk => '必须选择一个标签';
	@override String k_0v5hlay({required Object message}) => '创建话题失败 $message';
	@override String get k_0z3ytji => '创建话题成功';
	@override String get k_1a8vem3 => '创建者异常';
	@override String get k_0eskkr1 => '选择讨论区';
	@override String get k_0d7plb5 => '创建话题';
	@override String get k_144t0ho => '---- 相关讨论 ----';
	@override String get k_0pnz619 => '填写话题标题';
	@override String get k_136v279 => '+标签（至少添加一个）';
	@override String get k_04hjhvp => '讨论区参数异常';
	@override String get k_002r79h => '全部';
	@override String get k_03ejkb6 => '已加入';
	@override String get k_172tngw => '话题（未连接）';
	@override String get k_0rnmfc4 => '该讨论区下暂无话题';
	@override String get k_1pq0ybn => '暂未加入任何话题';
	@override String get k_0bh95w0 => '无网络连接，进入话题失败';
	@override String get k_0em28sp => '暂无群聊';
	@override String get k_04dqh36 => '暂无新联系人';
	@override String get k_08k00l9 => '正在加载...';
	@override String get k_197r4f7 => '即时通信服务连接成功';
	@override String get k_1s5xnir => '即时通信 SDK初始化失败';
	@override String k_0owk5ss({required Object failedReason}) => '登录失败 $failedReason';
	@override String get k_15bxnkw => '网络连接丢失';
	@override String get k_0glj9us => '发起会话';
	@override String get k_1631kyh => '创建工作群';
	@override String get k_1644yii => '创建社交群';
	@override String get k_1fxfx04 => '创建会议群';
	@override String get k_1cnkqc9 => '创建直播群';
	@override String get k_002r09z => '频道';
	@override String get k_003nvk2 => '消息';
	@override String get k_1jwxwgt => '连接中...';
	@override String get k_03gm52d => '通讯录';
	@override String get k_003k7dc => '我的';
	@override String get k_14yh35u => '登录·即时通信';
	@override String get k_0st7i3e => '体验群组聊天，音视频对话等IM功能';
	@override String get k_0cr1atw => '中国大陆';
	@override String get k_0mnxjg7 => '欢迎使用腾讯云即时通信 IM，为保护您的个人信息安全，我们更新了《隐私政策》，主要完善了收集用户信息的具体内容和目的、增加了第三方SDK使用等方面的内容。';
	@override String get k_1545beg => '请您点击';
	@override String get k_0opnzp6 => '《用户协议》';
	@override String get k_00041m1 => '和';
	@override String get k_0orhtx0 => '《隐私协议》';
	@override String get k_11x8pvm => '并仔细阅读，如您同意以上内容，请点击“同意并继续”，开始使用我们的产品与服务！';
	@override String get k_17nw8gq => '同意并继续';
	@override String get k_1nynslj => '不同意并退出';
	@override String get k_0jsvmjm => '请输入手机号';
	@override String get k_1lg8qh2 => '手机号格式错误';
	@override String get k_03jia4z => '无网络连接';
	@override String get k_007jqt2 => '验证码发送成功';
	@override String get k_1a55aib => '验证码异常';
	@override String k_1mw45lz({required Object errorReason}) => '登录失败$errorReason';
	@override String get k_16r3sej => '国家/地区';
	@override String get k_15hlgzr => '选择你的国家区号';
	@override String get k_1bnmt3h => '请使用英文搜索';
	@override String get k_03fei8z => '手机号';
	@override String get k_03aj66h => '验证码';
	@override String get k_1m9jtmw => '请输入验证码';
	@override String get k_0y1wbxk => '获取验证码';
	@override String get k_002ri2g => '登陆';
	@override String get k_161ecly => '当前无网络';
	@override String get k_11uz2i8 => '重试网络';
	@override String get k_1vhzltr => '腾讯云即时通信IM';
	@override String get k_0j433ys => '腾讯云TRTC';
	@override String get k_0epvs61 => '更换皮肤';
	@override String get k_12u8g8l => '免责声明';
	@override String get k_1p0j8i3 => 'IM即时通信（“本产品”）是由腾讯云提供的一款测试产品，腾讯云享有本产品的著作权和所有权。本产品仅用于功能体验，不得用于任何商业用途。为配合相关部门监管要求，本产品音视频互动全程均有录音录像存档，严禁在使用中有任何色情、辱骂、暴恐、涉政等违法内容传播。';
	@override String get k_0k7qoht => '同意任何用户加好友';
	@override String get k_1j91bvz => 'TUIKIT 为你选择一个头像?';
	@override String get k_1wmkneq => '加我为好友时需要验证';
	@override String get k_1eitsd0 => '关于腾讯云·通信';
	@override String get k_1919d6m => '隐私条例';
	@override String get k_0wqhgor => '个人信息收集清单';
	@override String get k_12rfxml => '第三方信息共享清单';
	@override String get k_131g7q4 => '注销账户';
	@override String get k_03fel2u => '版本号';
	@override String get k_16kts8h => '退出登录';
	@override String get k_13spdki => '发送消息';
	@override String get k_14c600t => '修改备注';
	@override String get k_1f811a4 => '支持数字、英文、下划线';
	@override String get k_11z7ml4 => '详细资料';
	@override String get k_1ajt0b1 => '获取当前位置失败';
	@override String get k_0lhm9xq => '发起检索成功';
	@override String get k_0fdeled => '发起检索失败';
	@override String get k_1yh0a50 => 'mapDidLoad-地图加载完成';
	@override String get k_1t2zg6h => '图片验证码校验失败';
	@override String get k_03ibfd2 => '星期七';
	@override String k_1o7lf2y({required Object errorMessage}) => '服务器错误：$errorMessage';
	@override String k_118l7sq({required Object requestErrorMessage}) => '请求错误：$requestErrorMessage';
	@override String get k_003nfx9 => '深沉';
	@override String get k_003rvjp => '轻快';
	@override String get k_003rtht => '明媚';
	@override String get k_003qxiw => '梦幻';
	@override String k_0s5zoi3({required Object option1}) => '发生错误 $option1';
	@override String k_0i8egqa({required Object option8}) => '获取到的消息:$option8';
	@override String k_0pokyns({required Object option8}) => '获取讨论区列表失败 $option8';
	@override String k_1y03m8a({required Object option8}) => '创建话题失败 $option8';
	@override String k_1v6uh9c({required Object option8}) => '登录失败 $option8';
	@override String k_0t5a9hl({required Object option1}) => '登录失败$option1';
	@override String k_0k3uv02({required Object option8}) => '服务器错误：$option8';
	@override String k_1g9o3kz({required Object option8}) => '请求错误：$option8';
	@override String get k_14cahuz => '关于腾讯云 · IM';
	@override String get k_0llnalm => 'SDK版本号';
	@override String get k_13dyfii => '应用版本号';
	@override String get k_12h52zh => '隐私政策';
	@override String get k_0fxhhwb => '用户协议';
	@override String get k_18z2e6q => 'IM即时通信（“本产品”）是由腾讯云提供的一款测试产品，腾讯云享有本产品的著作权和所有权。本产品仅用于功能体验，不得用于任何商业用途。严禁在使用中有任何色情、辱骂、暴恐、涉政等违法内容传播。';
	@override String get k_0zu7dd7 => '信息收集清单';
	@override String get k_0mcqhgh => '信息共享清单';
	@override String get k_12eqaty => '确认注销账户';
	@override String get k_0ziqsr6 => '账户注销成功！';
	@override String get k_002qtgt => '注销';
	@override String k_0rvdu91({required Object option1}) => '注销后，您将无法使用当前账号，相关数据也将删除且无法找回。当前账号ID: $option1';
	@override String get k_15d22qk => '注销账号';
	@override String get k_036uv3f => '腾讯云IM';
	@override String get k_167916k => '微信好友';
	@override String get k_03euwr1 => '朋友圈';
	@override String get k_0cxccci => '邀请你视频通话';
	@override String get k_06lhh4b => '邀请你语音通话';
	@override String get k_1ywo9ut => '即时通信 IM (Instant Messaging)基于 QQ 底层 IM 能力开发，仅需植入 SDK 即可轻松集成聊天、会话、群组、资料管理和直播弹幕能力，也支持通过信令消息与白板等其他产品打通，全面覆盖您的业务场景，支持各大平台小程序接入使用，全面满足通信需要';
	@override String get k_0ios26v => '未检测到微信安装';
	@override String get k_1jg6d5x => '《隐私政策摘要》';
	@override String get k_0selni4 => '《隐私政策》';
	@override String get k_10s6v2i => '《信息收集清单》';
	@override String get k_0pasxq8 => '《信息共享清单》';
	@override String get k_003r6vf => '登录';
	@override String get k_03f2zbs => '分享到';
	@override String get k_0cfkcaz => '消息推送';
	@override String get k_1rmkb2w => '推送新聊天消息';
	@override String get k_1lg375c => '新消息提醒';
	@override String k_1t0akzp({required Object option1}) => '注销后，您将无法使用当前账号，相关数据也将删除且无法找回。当前账号ID: $option1';
	@override String get k_1699p6d => '腾讯大厦';
	@override String get k_1ngd60h => '深圳市深南大道10000号';
	@override String get k_1na29vg => '位置消息维护中';
	@override String get k_1xmms9t => '进群申请列表';
	@override String get k_0dla4vp => '反馈及建议可以加入QQ群';
	@override String get k_1odrjd1 => '在线时间: 周一到周五，早上10点 - 晚上8点';
	@override String get k_1bh903m => 'QQ群号复制成功';
	@override String get k_16264lp => '复制群号';
	@override String get k_18ger86 => '腾讯云 · IM';
	@override String get k_1vd70l1 => '服务亿级 QQ 用户的即时通讯技术';
	@override String get k_036phup => '腾讯云IM';
	@override String get k_0gfsln9 => '信息已变更';
	@override String get k_0ow4akh => '请根据Demo的README指引，配置百度AK，体验DEMO的位置消息能力';
	@override String get k_1kzh3lo => '请根据本文档指引 https://docs.qq.com/doc/DSVliWE9acURta2dL ， 快速体验位置消息能力';
	@override String get k_161zzkm => '请输入用户名';
	@override String get k_1veosyv => '请在环境变量中写入key';
	@override String get k_03exdnb => '用户名';
	@override String get k_16kquu8 => '当前目录';
	@override String get k_0fbvuqs => '开始拷贝';
	@override String get k_16j153h => '腾讯云IM APP（“本产品”）是由腾讯云提供的一款测试产品，腾讯云享有本产品的著作权和所有权。本产品仅用于功能体验，不得用于任何商业用途。严禁在使用中有任何色情、辱骂、暴恐、涉政等违法内容传播。';
	@override String get k_13ghyf8 => '【安全提示】本 APP 仅用于体验腾讯云即时通信 IM 产品功能，不可用于业务洽谈与拓展。请勿轻信汇款、中奖等涉及钱款的信息，勿轻易拨打陌生电话，谨防上当受骗。';
	@override String get k_0gt6cro => '点此投诉';
	@override String k_03595fk({required Object option1}) => ' 等$option1人';
	@override String k_1gpzgni({required Object option2}) => '$option2人群';
	@override String get k_02lfg57 => '新群聊';
	@override String get k_17ifd8i => '欢迎使用本 APP 体验腾讯云 IM 产品服务';
	@override String get k_1f0ms23 => '消息阅读状态';
	@override String get k_1c0x9ha => '关闭后，您收发的消息均不带消息阅读状态，您将无法看到对方是否已读，同时对方也无法看到你是否已读。';
	@override String get k_1dzhdr5 => '显示在线状态';
	@override String get k_0mwsniq => '关闭后，您将不可以在会话列表和通讯录中看到好友在线或离线的状态提示。';
	@override String get k_0f7h6ay => '连接失败';
	@override String get k_0wreawq => '百度地图插件暂不支持网页版，请使用手机APP DEMO体验位置消息能力。';
	@override String get k_03c56co => '不选择';
	@override String get k_1klqdh1 => '仅限汉字、英文、数字和下划线';
	@override String get k_03el5lp => '未填写';
	@override String get k_0554lam => '好友工作群（Work）';
	@override String get k_1hyz1ua => '陌生人社交群（Public）';
	@override String get k_1s8hjin => '临时会议群（Meeting）';
	@override String get k_16ejs8f => '直播群（AVChatRoom）';
	@override String get k_1rqdzbh => '社群（Community）';
	@override String get k_1aue1b6 => '类似普通微信群，创建后仅支持已在群内的好友邀请加群，且无需被邀请方同意或群主审批。';
	@override String get k_0uldek7 => '类似 QQ 群，创建后群主可以指定群管理员，用户搜索群 ID 发起加群申请后，需要群主或管理员审批通过才能入群。';
	@override String get k_1nv4w25 => '创建后可以随意进出，且支持查看入群前消息；适合用于音视频会议场景、在线教育场景等与实时音视频产品结合的场景。';
	@override String get k_1wbmoof => '创建后可以随意进出，没有群成员数量上限，但不支持历史消息存储；适合与直播产品结合，用于弹幕聊天场景。';
	@override String get k_11mlyaa => '创建后可以随意进出，最多支持10w人，支持历史消息存储，用户搜索群 ID 发起加群申请后，无需管理员审批即可进群。';
	@override String get k_0ylgdrb => '社群DEMO正在开发中，即将上线';
	@override String get k_0elsjm2 => '创建群聊';
	@override String get k_1iw4gdk => '允许任何人';
	@override String get k_0i5ffqf => '需要验证信息';
	@override String get k_111mgqj => '禁止加我为好友';
	@override String get k_03go2lu => '未指定';
	@override String get k_15zb99m => '加我为好友的方式';
	@override String get k_1llp7tu => '该用户不存在';
	@override String get k_0tbyqyb => '加载中…';
	@override String get k_0td1p3f => '保存中…';
	@override String get k_1ui0gai => '搜索指定内容';
	@override String get k_03agld7 => '群提示';
	@override String get k_002wkr3 => '翻译';
	@override String get k_13g4hxv => '翻译完成';
	@override String get k_003mmoz => '火箭';
	@override String get k_003nogx => '飞机';
	@override String get k_003pjj6 => '皇冠';
	@override String get k_000340k => '花';
	@override String k_0cv8ngo({required Object option1}) => '送出$option1';
	@override String get k_03a2zjl => '送礼物';
	@override String get k_0003yq8 => '朵';
	@override String get k_13k5228 => '赞了直播间';
	@override String get k_1k0rrvn => '说点啥...';
	@override String get k_13jzi5y => '进入直播间';
	@override String get k_14asoqo => '取消关注';
	@override String get k_003ohwe => '关注';
	@override String k_1h33pzv({required Object option1}) => '粉丝 $option1 |';
	@override String k_07skbgr({required Object option2}) => ' 关注 $option2';
	@override String k_1c99nb3({required Object option1}) => '$option1 万+';
	@override String get k_19mfrrb => '在线观众';
	@override String get k_13m65um => '观众信息';
	@override String k_19kj6te({required Object option1}) => '$option1 本场点赞';
	@override String k_1qqgjra({required Object option3}) => '$option3条未读消息';
	@override String get k_0uubyjr => '以下为未读消息';
	@override String get k_0kg1wsx => '选择群类型';
	@override String get k_003m6xh => '设置';
	@override String get k_18nszwl => '关于我们';
	@override String get k_003txiw => '关于';
	@override String get k_12fp4oc => '官方网站';
	@override String get k_1391sy5 => '一次开发，打包部署至所有平台，宽屏窄屏均可自适应';
	@override String get k_002vu95 => '欢迎';
	@override String get k_0o6nt4d => '我已阅读并同意 ';
	@override String get k_12l2415 => '腾讯云IM各项协议及规定';
	@override String get k_0rcqou9 => 'Copyright © 2013-2023 Tencent Cloud. All Rights Reserved. 腾讯云 版权所有';
	@override String get k_003lmhx => '群组';
	@override String get k_1s251fa => '联系人 & 群组';
	@override String get k_0cjp3hx => '请选择联系人或群组，以查看详情';
	@override String get k_12veoax => '渠道切换：';
	@override String get k_002rfh9 => '国际';
	@override String get k_0864lq3 => '如果您在使用过程中有任何疑问，请通过如下渠道联系我们';
	@override String get k_12625cy => '立即进群';
	@override String get k_131lvxd => '我的账户';
	@override String get k_002qep7 => '界面';
	@override String get k_002vbyp => '外观';
	@override String get k_16owrwc => '浅色模式';
	@override String get k_01zair9 => '深色模式 (开发中)';
	@override String get k_002skx2 => '主题';
	@override String get k_002wzvs => '语言';
	@override String get k_002woft => '英语';
	@override String get k_129eldp => '繁体中文';
	@override String get k_129ekqk => '简体中文';
	@override String get k_002whil => '日语';
	@override String get k_002wqld => '韩语';
	@override String get k_003is6v => '通用';
	@override String get k_12s2mfc => '查看详情';
	@override String get k_12fsjye => '相关网站';
	@override String get k_16uejmj => '个人中心';
	@override String get k_0dtyory => '意见反馈';
	@override String get k_03oy6z4 => '所有 SDK';
	@override String get k_03bh54n => '源代码';
	@override String get k_0s3sgel => '移出黑名单';
	@override String get k_16as7eq => '表情回应';
	@override String get k_003s12u => '回复';
	@override String get k_003s38r => '更多';
	@override String get k_003molk => '表情';
	@override String get k_165bbw6 => '消息历史';
	@override String get k_13sqc0z => '清除消息';
	@override String get k_0glns86 => '删除会话';
	@override String get k_13s99rx => '清空消息';
	@override String get k_11vsa3j => '退出群组';
	@override String get k_11vvszp => '解散群组';
	@override String get k_15i9w72 => '群管理员';
	@override String get k_0p3espj => '设置备注名';
	@override String get k_118sw9v => '立即搜索';
	@override String get k_1xn4cn2 => '运行环境检测';
	@override String get k_0sy25ey => '请先安装 Microsoft Edge WebView2 运行环境，以使用本程序。';
	@override String get k_0g4tlsb => '立即下载';
	@override String get k_13ozr8k => '暂不支持';
	@override String get k_16yiku8 => 'Web 端暂不支持本地搜索，请使用 Mobile App 或 Desktop 端体验';
	@override String get k_003lz6t => '对方';
	@override String k_1xf4yre({required Object option1}) => '发送给$option1';
	@override String get k_003por5 => '截图';
	@override String get k_0c67rdb => '允许多选';
	@override String get k_11lav8q => '匿名投票';
	@override String get k_137cjfq => '公开结果';
	@override String get k_0e3jces => '请输入选项';
	@override String get k_0dcbhiz => '新增选项';
	@override String get k_003r4qf => '发布';
	@override String get k_1xa5q8q => '请输入投票主题';
	@override String get k_003nv7m => '已投';
	@override String get k_002ym5d => '票，';
	@override String get k_003pfxt => '占比';
	@override String get k_0fxdch1 => '未初始化投票插件，请先初始化';
	@override String get k_1lzoopr => '非投票消息，请检查';
	@override String get k_03ahybu => '已投票';
	@override String get k_11lamu8 => '立即投票';
	@override String get k_0b9h7nq => '投票已结束';
	@override String get k_0c7zem1 => '再次发送';
	@override String get k_11l1qvo => '结束投票';
	@override String get k_0z314c0 => '[多选]';
	@override String get k_0z2zcm7 => '[单选]';
	@override String get k_0y8ap8v => '[公开]';
	@override String get k_0y4cs5n => '[私有]';
	@override String get k_0y6agtt => '[匿名]';
	@override String get k_0y68wmo => '[实名]';
	@override String k_1pssgjf({required Object option1}) => '应参与人数：$option1';
	@override String k_0x9zkqf({required Object option2}) => '实际参与人数：$option2';
	@override String get k_09ikyqj => '查看全部选项';
	@override String k_0h2jp2z({required Object option1}) => '$option1票';
	@override String get k_0y2zr3y => '[投票]';
	@override String get k_11lci1l => '创建投票';
	@override String get k_003l988 => '投票';
	@override String get k_1rw7s82 => ' 访问相册中视频权限，以正常使用发送视频等功能。';
	@override String get k_003rcwm => '打开';
	@override String get k_1698c42 => '在访达中打开';
	@override String get k_066fxsz => '查看文件夹';
	@override String get k_0k432y2 => '无法发送，包含文件夹';
	@override String get k_002wb4y => '会话';
	@override String get k_0od4qyh => '视频文件异常';
	@override String get k_1cdzld5 => '请填写商品信息';
	@override String get k_19qt9y2 => '服务评价';
	@override String get k_13s7ltw => '卡片消息';
	@override String get k_13ajr25 => '在线客服';
	@override String get k_0ti5mfz => '暂无在线客服';
	@override String get k_1bfkxg9 => '不支持 0KB 文件的传输';
	@override String get k_0vvsw7g => '文件处理异常';
	@override String get k_06e224q => '[消息被管理员撤回]';
	@override String get k_1u1mjcl => '[消息被撤回]';
	@override String get k_1qcqxea => '选择多个会话';
	@override String get k_1qgmc20 => '选择一个会话';
	@override String get k_1d8nx6f => '在新窗口中打开';
	@override String get k_1hz05ax => '正在下载原始资源，请稍候...';
	@override String get k_1fszgep => '欢迎前往知聊社区参与讨论';
	@override String get k_1xtvvs9 => '此社区使用本 App 同款 Flutter UIKit 完成全平台开发';
	@override String get k_0cdljc3 => '前往知聊社区';
	@override String get k_167dvo3 => '选择好友';
	@override String get k_1u1jwb8 => 'zhiliao.qq.com';
}

// Path: <root>
class _StringsZhHant implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsZhHant.build();

	/// Access flat map
	@override dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	@override late final Map<String, dynamic> _flatMap = _buildFlatMap();

	@override late final _StringsZhHant _root = this; // ignore: unused_field

	// Translations
	@override String get k_1yemzyd => '收到一條訊息';
	@override String get k_0ylosxn => '自訂訊息';
	@override String get k_13sajrj => '貼圖訊息';
	@override String get k_13sjeb7 => '檔案訊息';
	@override String get k_0yd2ft8 => '群提示訊息';
	@override String get k_13s7mxn => '相片訊息';
	@override String get k_13satlt => '位置訊息';
	@override String get k_00bbtsx => '合併轉發訊息';
	@override String get k_13sqwu4 => '語音訊息';
	@override String get k_13sqjjp => '影片';
	@override String get k_1fdhj9g => '此版本不支援此訊息';
	@override String get k_06pujtm => '同意任何用戶加為好友';
	@override String get k_0gyhkp5 => '需要驗證';
	@override String get k_121ruco => '拒絕任何人加為好友';
	@override String get k_05nspni => '自訂欄位';
	@override String get k_03fchyy => '群組頭像';
	@override String get k_03i9mfe => '群組簡介';
	@override String get k_03agq58 => '群組名稱';
	@override String get k_039xqny => '群組通知';
	@override String get k_003tr0a => '群組擁有者';
	@override String get k_03c49qt => '移交群組';
	@override String get k_002wddw => '禁言';
	@override String get k_0got6f7 => '解除禁言';
	@override String get k_1uaqed6 => '[自訂]';
	@override String get k_0z2z7rx => '[語音]';
	@override String get k_0y39ngu => '[貼圖]';
	@override String get k_0y1a2my => '[相片]';
	@override String get k_0z4fib8 => '[影片]';
	@override String get k_0y24mcg => '[位置]';
	@override String get k_0pewpd1 => '[聊天記錄]';
	@override String get k_13s8d9p => '未知訊息';
	@override String get k_1c3us5n => '當前群組不支援@全體成員';
	@override String get k_11k579v => '發言中有非法語句';
	@override String get k_003qkx2 => '日曆';
	@override String get k_003n2pz => '相機';
	@override String get k_03idjo0 => '聯絡人';
	@override String get k_003ltgm => '位置';
	@override String get k_02k3k86 => '米高峰';
	@override String get k_003pm7l => '相簿';
	@override String get k_15ao57x => '相簿寫入';
	@override String get k_164m3jd => '本地存儲';
	@override String get k_03r6qyx => '我們需要您的同意才能獲取信息';
	@override String get k_02noktt => '不允許';
	@override String get k_00043x4 => '好';
	@override String get k_003qzac => '昨天';
	@override String get k_003r39d => '前天';
	@override String get k_03fqp9o => '星期日';
	@override String get k_03ibg5h => '星期一';
	@override String get k_03i7hu1 => '星期二';
	@override String get k_03iaiks => '星期三';
	@override String get k_03el9pa => '星期四';
	@override String get k_03i7ok1 => '星期五';
	@override String get k_03efxyg => '星期六';
	@override String get k_003q7ba => '下午';
	@override String get k_003q7bb => '上午';
	@override String get k_003pu3h => '現在';
	@override String get k_0n9pyxz => '用戶不存在';
	@override String get k_1bjwemh => '搜尋用戶 ID';
	@override String get k_003kv3v => '搜尋';
	@override String get k_16758qw => '加為好友';
	@override String get k_0i553x0 => '填寫驗證信息';
	@override String get k_031ocwx => '請填寫備註和分組';
	@override String get k_003ojje => '備註';
	@override String get k_003lsav => '分組';
	@override String get k_167bdvq => '我的好友';
	@override String get k_156b4ut => '好友請求已發送';
	@override String get k_002r305 => '發送';
	@override String get k_03gu05e => '聊天室';
	@override String get k_03b4f3p => '會議群';
	@override String get k_03avj1p => '公開群';
	@override String get k_03asq2g => '工作群';
	@override String get k_03b3hbi => '未知群組';
	@override String get k_1lqbsib => '該群組不存在';
	@override String get k_03h153m => '搜尋群組 ID';
	@override String get k_0oxak3r => '群組請求已發送';
	@override String get k_002rflt => '刪除';
	@override String get k_1don84v => '無法定位到原訊息';
	@override String get k_003q5fi => '復製';
	@override String get k_003prq0 => '轉發';
	@override String get k_002r1h2 => '多選';
	@override String get k_003j708 => '引用';
	@override String get k_003pqpr => '回收';
	@override String get k_03ezhho => '已復製';
	@override String get k_11ctfsz => '暫未實現';
	@override String get k_1hbjg5g => '[群系統訊息]';
	@override String get k_03tvswb => '[未知訊息]';
	@override String get k_155cj23 => '您回收了一條訊息，';
	@override String get k_0gapun3 => '重新編輯';
	@override String get k_1aszp2k => '您確定要重發這條訊息麽？';
	@override String get k_003rzap => '確定';
	@override String get k_003nevv => '取消';
	@override String get k_0003z7x => '您';
	@override String get k_002wfe4 => '已讀';
	@override String get k_002wjlg => '未讀';
	@override String get k_0h1ygf8 => '發起通話';
	@override String get k_0h169j0 => '取消通話';
	@override String get k_0h13jjk => '接受通話';
	@override String get k_0h19hfx => '拒絕通話';
	@override String get k_0obi9lh => '超時未接聽';
	@override String get k_001nmhu => '用其他應用開啟';
	@override String get k_1ht1b80 => '正在接收中';
	@override String get k_105682d => '圖片載入失敗';
	@override String get k_0pytyeu => '圖片保存成功';
	@override String get k_0akceel => '圖片保存失敗';
	@override String get k_003rk1s => '保存';
	@override String get k_04a0awq => '[語音訊息]';
	@override String get k_105c3y3 => '影片載入失敗';
	@override String get k_176rzr7 => '聊天記錄';
	@override String get k_0d5z4m5 => '選擇提醒人';
	@override String get k_003ngex => '完成';
	@override String get k_1665ltg => '發起呼叫';
	@override String get k_003n8b0 => '拍攝';
	@override String get k_003kthh => '照片';
	@override String get k_003tnp0 => '檔案';
	@override String get k_0jhdhtp => '發送失敗,影片不能大於100MB';
	@override String get k_119ucng => '圖片不能為空';
	@override String get k_13dsw4l => '松開取消';
	@override String get k_0am7r68 => '手指上滑，取消發送';
	@override String get k_15jl6qw => '說話時間太短!';
	@override String get k_0gx7vl6 => '按住說話';
	@override String get k_15dlafd => '逐條轉發';
	@override String get k_15dryxy => '合並轉發';
	@override String get k_1eyhieh => '確定刪除已選訊息';
	@override String get k_17fmlyf => '清除聊天';
	@override String get k_0dhesoz => '取消置頂';
	@override String get k_002sk7x => '置頂';
	@override String get k_003ll77 => '草稿';
	@override String get k_03icaxo => '自定義';
	@override String get k_1uaov41 => '查找聊天內容';
	@override String get k_003kfai => '未知';
	@override String get k_13dq4an => '自動審批';
	@override String get k_0l13cde => '管理員審批';
	@override String get k_11y8c6a => '禁止加群';
	@override String get k_1kvyskd => '無網絡連接，無法修改';
	@override String get k_16payqf => '加群方式';
	@override String get k_0vzvn8r => '修改群名稱';
	@override String get k_038lh6u => '群管理';
	@override String get k_0k5wyiy => '設置管理員';
	@override String get k_0goiuwk => '全員禁言';
	@override String get k_1g889xx => '全員禁言開啟後，只允許群主和管理員發言。';
	@override String get k_0wlrefq => '添加需要禁言的群成員';
	@override String get k_0goox5g => '設置禁言';
	@override String get k_08daijh => '成功取消管理員身份';
	@override String get k_0k5u935 => '添加管理員';
	@override String get k_03enyx5 => '群成員';
	@override String get k_0h1svv1 => '刪除群成員';
	@override String get k_0h1g636 => '添加群成員';
	@override String get k_0uj7208 => '無網絡連接，無法查看群成員';
	@override String get k_0hpukyx => '查看更多群成員';
	@override String get k_0qtsar0 => '訊息免打擾';
	@override String get k_0ef2a12 => '修改我的群昵稱';
	@override String get k_1aajych => '僅限中文、字母、數字和下劃線，2-20個字';
	@override String get k_137pab5 => '我的群昵稱';
	@override String get k_0ivim6d => '暫無群公告';
	@override String get k_03eq6cn => '群公告';
	@override String get k_002vxya => '編輯';
	@override String get k_17fpl3y => '置頂聊天';
	@override String get k_03es1ox => '群類型';
	@override String get k_003mz1i => '同意';
	@override String get k_003lpre => '拒絕';
	@override String get k_003qk66 => '頭像';
	@override String get k_003lhvk => '昵稱';
	@override String get k_003ps50 => '賬號';
	@override String get k_15lx52z => '個性簽名';
	@override String get k_003qgkp => '性別';
	@override String get k_003m6hr => '生日';
	@override String get k_0003v6a => '男';
	@override String get k_00043x2 => '女';
	@override String get k_03bcjkv => '未設置';
	@override String get k_11s0gdz => '修改昵稱';
	@override String get k_0p3j4sd => '僅限中字、字母、數字和下劃線';
	@override String get k_15lyvdt => '修改簽名';
	@override String get k_0vylzjp => '這個人很懶，什麽也沒寫';
	@override String get k_1hs7ese => '等上線再改這個';
	@override String get k_03exjk7 => '備註名';
	@override String get k_0s3skfd => '加入黑名單';
	@override String get k_0p3b31s => '修改備註名';
	@override String get k_0003y9x => '無';
	@override String get k_11zgnfs => '個人資料';
	@override String get k_1tez2xl => '暫無個性簽名';
	@override String get k_118prbn => '全局搜尋';
	@override String get k_1m9dftc => '全部聯絡人';
	@override String get k_0em4gyz => '全部群組';
	@override String get k_002twmj => '群組';
	@override String get k_09kga0d => '更多聊天記錄';
	@override String get k_09khmso => '相關聊天記錄';
	@override String get k_0vjj2kp => '群組的聊天記錄';
	@override String get k_003n2rp => '選擇';
	@override String get k_03ignw6 => '所有人';
	@override String get k_03erpei => '管理員';
	@override String get k_0qi9tno => '群主、管理員';
	@override String get k_1m9exwh => '最近聯絡人';
	@override String get k_119nwqr => '輸入不能為空';
	@override String get k_0pzwbmg => '影片保存成功';
	@override String get k_0aktupv => '影片保存失敗';
	@override String k_1qbg9xc({required Object option8}) => '$option8為 ';
	@override String k_1wq5ubm({required Object option7}) => '$option7修改';
	@override String k_0y5pu80({required Object option6}) => '$option6退出群組';
	@override String k_0nl7cmd({required Object option5}) => '邀請$option5加入群組';
	@override String k_1ju5iqw({required Object option4}) => '將$option4踢出群組';
	@override String k_1ovt677({required Object option3}) => '用戶$option3加入了群組';
	@override String k_0k05b8b({required Object option2}) => '$option2 被';
	@override String k_0wm4xeb({required Object option2}) => '系統訊息 $option2';
	@override String k_0nbq9v3({required Object option2}) => '通話時間：$option2';
	@override String k_0i1kf53({required Object option2}) => '[檔案] $option2';
	@override String k_1gnnby6({required Object option2}) => ' 想訪問您的$option2';
	@override String k_1wh4atg({required Object option2}) => '$option2 分鐘前';
	@override String k_07sh7g1({required Object option2}) => '昨天 $option2';
	@override String k_1pj8xzh({required Object option2}) => '我的用戶ID: $option2';
	@override String k_0py1evo({required Object option2}) => '個性簽名: $option2';
	@override String k_1kvj4i2({required Object option2}) => '$option2回收了一條訊息';
	@override String k_1v0lbpp({required Object option2}) => '「$option2」暫不可以開啟此類檔案，你可以使用其他應用開啟並預覽';
	@override String k_0torwfz({required Object option2}) => '選擇成功$option2';
	@override String k_0i1bjah({required Object option1}) => '$option1回收了一條訊息';
	@override String k_1qzxh9q({required Object option3}) => '通話時間：$option3';
	@override String k_0wrgmom({required Object option1}) => '[語音通話]：$option1';
	@override String k_06ix2f0({required Object option2}) => '[視訊通話]：$option2';
	@override String k_08o3z5w({required Object option1}) => '[檔案] $option1';
	@override String k_0ezbepg({required Object option2}) => '$option2[有人@我]';
	@override String k_1ccnht1({required Object option2}) => '$option2[@所有人]';
	@override String k_1k3arsw({required Object option2}) => '管理員 ($option2/10)';
	@override String k_1d4golg({required Object option1}) => '群成員($option1人)';
	@override String k_1bg69nt({required Object option1}) => '$option1人';
	@override String k_00gjqxj({required Object option1}) => '個性簽名: $option1';
	@override String k_0c29cxr({required Object option1}) => '$option1條相關聊天記錄';
	@override String k_1twk5rz({required Object option1}) => '與$option1的聊天記錄';
	@override String k_1vn4xq1({required Object adminMember}) => '將 $adminMember 取消管理員';
	@override String get k_0e35hsw => '為方便您將所拍攝的照片或影片發送給朋友，以及進行視訊通話，請允許我們訪問攝像頭進行拍攝照片和影片。';
	@override String get k_0dj6yr7 => '為方便您發送語音訊息、拍攝影片以及音視訊通話，請允許我們使用咪高風進行錄音。';
	@override String get k_003qnsl => '存儲';
	@override String get k_0s3rtpw => '為方便您查看和選擇相冊裏的圖片影片發送給朋友，以及保存內容到設備，請允許我們訪問您設備上的照片、媒體內容。';
	@override String k_0tezv85({required Object option2}) => ' 申請獲取$option2';
	@override String get k_002rety => '權限';
	@override String get k_18o68ro => '需要授予';
	@override String get k_1onpf8u => ' 相機權限，以正常使用拍攝圖片/影片、視訊通話等功能。';
	@override String get k_17irga5 => ' 咪高風權限，以正常使用發送語音訊息、拍攝影片、音視訊通話等功能。';
	@override String get k_0572kc4 => ' 訪問照片權限，以正常使用發送圖片、影片等功能。';
	@override String get k_0slykws => ' 訪問相冊寫入權限，以正常使用存儲圖片、影片等功能。';
	@override String get k_119pkcd => ' 檔案讀寫權限，以正常使用在聊天功能中的圖片查看、選擇能力和發送檔案的能力。';
	@override String get k_0gqewd3 => '以後再說';
	@override String get k_03eq4s1 => '去開啟';
	@override String get k_0nt2uyg => '回到最新位置';
	@override String k_04l16at({required Object option1}) => '$option1條新訊息';
	@override String get k_13p3w93 => '有人@我';
	@override String get k_18w5uk6 => '@所有人';
	@override String get k_0jmujgh => '其他檔案正在接收中';
	@override String get k_12s5ept => '訊息詳情';
	@override String k_0mxa4f4({required Object option1}) => '$option1人已讀';
	@override String k_061tue3({required Object option2}) => '$option2人未讀';
	@override String get k_18qjstb => '轉讓群主';
	@override String k_0on1aj2({required Object option2}) => '有$option2條@我訊息';
	@override String get k_09j4izl => '[有人@我] ';
	@override String get k_1oqtjw0 => '[@所有人] ';
	@override String k_1x5a9vb({required Object option1}) => '我是: $option1';
	@override String get k_14n31e7 => '進群請求';
	@override String k_08nc5j1({required Object option1}) => '群類型: $option1';
	@override String k_1josu12({required Object option1}) => '$option1 條入群請求';
	@override String k_0n2x5s0({required Object option2}) => '驗證訊息: $option2';
	@override String get k_03c1nx0 => '已同意';
	@override String get k_03aw9w8 => '已拒絕';
	@override String get k_038ryos => '去處理';
	@override String get k_0gw8pum => '進群申請';
	@override String get k_1gcvfrj => '請填寫備註名';
	@override String get k_002v9zj => '確認';
	@override String get k_10oqrki => '輕觸拍照';
	@override String get k_0f8b3ws => '加載失敗';
	@override String get k_11cm5lm => '手動聚焦';
	@override String get k_002uzrd => '預覽';
	@override String get k_003qkn3 => '錄像';
	@override String get k_003k6a7 => '拍照';
	@override String get k_0bqpqco => '拍照按鈕';
	@override String get k_1626ozl => '停止錄像';
	@override String get k_003lvmu => '前置';
	@override String get k_003lued => '後置';
	@override String get k_003lwzh => '外置';
	@override String get k_002qzi3 => '關閉';
	@override String get k_003pufb => '自動';
	@override String get k_0apm0ze => '拍照時閃光';
	@override String get k_157zog5 => '始終閃光';
	@override String k_0cfyqhy({required Object option1}) => '$option1 畫面預覽';
	@override String k_0phctlz({required Object option2}) => '閃光模式: $option2';
	@override String k_02vfqe0({required Object option3}) => '切換至 $option3 攝像頭';
	@override String get k_0f0y9ex => '說話時間太短';
	@override String get k_0ln70tk => '無法打開URL';
	@override String get k_11a3jdv => '輕觸拍照，長按攝像';
	@override String get k_1k18miv => '請傳入離開群組生命周期函數，提供返回首頁或其他頁面的導航方法。';
	@override String get k_0gmwbnd => '全員禁言中';
	@override String get k_0got2zr => '您被禁言';
	@override String get k_0y9jck8 => '你必須自定義search bar，並處理點擊跳轉';
	@override String get k_0yum3tv => '如使用自定義區域，請在profileWidgetBuilder傳入對應組件';
	@override String get k_09kalj0 => '清空聊天記錄';
	@override String get k_14j5iul => '刪除並退出';
	@override String get k_125ru1w => '解散該群';
	@override String get k_0jtutmw => '退出後不會接收到此群聊訊息';
	@override String get k_0jtzmqa => '解散後不會接收到此群聊訊息';
	@override String get k_0r8fi93 => '好友添加成功';
	@override String get k_02qw14e => '好友申請已發出';
	@override String get k_0n3md5x => '當前用戶在黑名單';
	@override String get k_094phq4 => '好友添加失敗';
	@override String get k_129scag => '好友刪除成功';
	@override String get k_129uzfn => '好友刪除失敗';
	@override String get k_1666isy => '清除好友';
	@override String get k_1679vrd => '加為好友';
	@override String get k_0h18bbi => '結束通話';
	@override String get k_154q2hn => '通話超時未應答';
	@override String get k_1mnjtnc => '對方已掛斷';
	@override String get k_0l0mysn => '發生錯誤:';
	@override String get k_03fn6rg => '無響應';
	@override String get k_003luo3 => '忙線';
	@override String get k_154jvfi => '你被踢下線了';
	@override String get k_1sp7jp6 => '取消了通話';
	@override String get k_1045haa => '等待對方接受邀請...';
	@override String get k_1gq7jv7 => '邀請您通話...';
	@override String get k_003m7ey => '掛斷';
	@override String get k_03ectox => '揚聲器';
	@override String get k_003q2a4 => '接聽';
	@override String get k_03ftugq => '攝像頭';
	@override String get k_10setgr => '切到語音通話';
	@override String get k_1g7i9jz => '切換攝像頭';
	@override String get k_15ml1ls => '等待接聽';
	@override String get k_0nj9x9s => '邀請你加入多人通話';
	@override String get k_1vtto3l => '參與通話的還有:';
	@override String get k_0h147mx => '正在通話';
	@override String k_0j6aylo({required Object option1}) => '通話時長：$option1';
	@override String get k_1fu9ahv => '全員禁言狀態';
	@override String get k_1ualc52 => '看看對方帶來的數據是啥';
	@override String get k_0szluvp => '設置對方在線狀態';
	@override String get k_0f4rnf8 => '該用戶已是好友';
	@override String get k_1tdkom4 => '您已是群成員';
	@override String get k_1p2lyuz => '對方正在輸入中...';
	@override String k_1g8wfpy({required Object option1}) => '...共$option1人';
	@override String get k_12rv9vw => '回應詳情';
	@override String get k_0n9p7g8 => '群組不存在';
	@override String get k_1tdh5vn => '您不是群成員';
	@override String get k_0h1q57v => '暫無群成員';
	@override String k_0y5drq1({required Object option1}) => '[查看詳情 >>]($option1)';
	@override String get k_03pjp61 => '[表情訊息]';
	@override String get k_1jpvzul => '[自定義訊息]';
	@override String get k_03u3bh1 => '[文件訊息]';
	@override String get k_1odsnsw => '[群訊息]';
	@override String get k_03sel4t => '[圖片訊息]';
	@override String get k_03sfw3r => '[位置訊息]';
	@override String get k_03xpuwq => '[合並訊息]';
	@override String get k_07ycxwo => '[沒有元素]';
	@override String get k_03rc9vz => '[文本訊息]';
	@override String get k_046uopf => '[視頻訊息]';
	@override String get k_0ehmsun => '設備存儲空間不足，建議清理，以獲得更好使用體驗';
	@override String get k_003kmos => '圖片';
	@override String get k_002s86q => '視頻';
	@override String get k_06bk5ei => '視頻訊息僅限 mp4 格式';
	@override String get k_13opfxf => 'Web網頁端不支持搜索';
	@override String get k_1i0o0y2 => '暫時僅限 Android/iOS 端';
	@override String k_045dtzl({required Object option1}) => '$option1的聊天記錄';
	@override String get k_0t0131u => '群資料';
	@override String get k_18ok8xz => '訊息接收方式';
	@override String get k_03ax3ks => '群資料';
	@override String k_0sqvoqo({required Object option1}) => '將 $option1 設置為管理員';
	@override String k_1gbg1v8({required Object option1}) => '將 $option1 取消管理員';
	@override String get k_17k64g4 => '群聊創建成功！';
	@override String get k_05mn217 => '暫未安裝表情包插件，如需使用表情相關功能，請根據本文檔安裝：https://cloud.tencent.com/document/product/269/70746';
	@override String get k_14j17nz => '暫無表情包';
	@override String get k_1tmlcf0 => '新通話呼入，但因權限不足，無法接聽。請確認攝像頭/麥克風權限已開啟。';
	@override String get k_0fvjexh => '正在下載中';
	@override String get k_1cdagzz => '已加入待下載隊列，其他文件下載中';
	@override String get k_0g4vojc => '開始下載';
	@override String get k_026hiq5 => '訊息列表加載中';
	@override String get k_0b9q00i => '騰訊大廈/////深圳市南山區深南大道10000號';
	@override String get k_03fw6h1 => '深圳市';
	@override String get k_0f7mdn7 => '檢索失敗';
	@override String get k_158cssa => '騰訊地圖';
	@override String get k_157htdw => '高德地圖';
	@override String get k_157im4z => '百度地圖';
	@override String get k_157m20e => '蘋果地圖';
	@override String get k_1bqk7kl => '未檢測到高德地圖';
	@override String get k_12ba1nv => '未檢測到騰訊地圖';
	@override String get k_1dz8sci => '未檢測到百度地圖';
	@override String get k_0f7fvky => '打開失敗';
	@override String get k_1l2v0we => '騰訊大廈內，招行信息研發大廈附近18米';
	@override String get k_10o8gk2 => '搜索地點';
	@override String get k_10o86v7 => '未知地點';
	@override String get k_0elt0kw => '添加群組';
	@override String get k_03f15qk => '黑名單';
	@override String get k_0s3p3ji => '暫無黑名單';
	@override String get k_0uc5cnb => '我們還在內測中，暫不支持創建頻道。';
	@override String get k_0s5ey0o => '實時音視訊 TRTC';
	@override String get k_03gpl3d => '大家好';
	@override String get k_0352fjr => '無網絡連接，進入頻道失敗';
	@override String get k_0d7n018 => '結束話題';
	@override String get k_0d826hk => '置頂話題';
	@override String get k_15wcgna => '結束成功';
	@override String get k_15wo7xu => '置頂成功';
	@override String k_02slfpm({required Object errorMessage}) => '發生錯誤 $errorMessage';
	@override String get k_0h22snw => '語音通話';
	@override String get k_0h20hg5 => '視訊通話';
	@override String get k_002s934 => '話題';
	@override String get k_18g3zdo => '雲通信·IM';
	@override String get k_1m8vyp0 => '新的聯絡人';
	@override String get k_0elz70e => '我的群組';
	@override String get k_18tb4mo => '無聯絡人';
	@override String get k_18nuh87 => '聯絡我們';
	@override String get k_1uf134v => '反饋及建議可以加入QQ群：788910197';
	@override String get k_0xlhhrn => '在線時間，周一到周五，早上10點 - 晚上8點';
	@override String get k_0gmpgcg => '暫無會話';
	@override String get k_1m8zuj4 => '選擇聯絡人';
	@override String get k_002tu9r => '性能';
	@override String k_0vwtop2({required Object getMsg}) => '獲取到的訊息:$getMsg';
	@override String k_0upijvs({required Object message}) => '獲取討論區列表失敗 $message';
	@override String get k_1tmcw5c => '請完善話題標題';
	@override String get k_1cnmslk => '必須選擇一個標簽';
	@override String k_0v5hlay({required Object message}) => '創建話題失敗 $message';
	@override String get k_0z3ytji => '創建話題成功';
	@override String get k_1a8vem3 => '創建者異常';
	@override String get k_0eskkr1 => '選擇討論區';
	@override String get k_0d7plb5 => '創建話題';
	@override String get k_144t0ho => '---- 相關討論 ----';
	@override String get k_0pnz619 => '填寫話題標題';
	@override String get k_136v279 => '+標簽（至少添加一個）';
	@override String get k_04hjhvp => '討論區參數異常';
	@override String get k_002r79h => '全部';
	@override String get k_03ejkb6 => '已加入';
	@override String get k_172tngw => '話題（未連接）';
	@override String get k_0rnmfc4 => '該討論區下暫無話題';
	@override String get k_1pq0ybn => '暫未加入任何話題';
	@override String get k_0bh95w0 => '無網絡連接，進入話題失敗';
	@override String get k_0em28sp => '暫無群組';
	@override String get k_04dqh36 => '暫無新聯絡人';
	@override String get k_08k00l9 => '正在載入...';
	@override String get k_197r4f7 => '即時通信服務連接成功';
	@override String get k_1s5xnir => '即時通信 SDK初始化失敗';
	@override String k_0owk5ss({required Object failedReason}) => '登入失敗 $failedReason';
	@override String get k_15bxnkw => '網絡連接丟失';
	@override String get k_0glj9us => '發起會話';
	@override String get k_1631kyh => '創建工作群';
	@override String get k_1644yii => '創建社交群';
	@override String get k_1fxfx04 => '創建會議群';
	@override String get k_1cnkqc9 => '創建直播群';
	@override String get k_002r09z => '頻道';
	@override String get k_003nvk2 => '訊息';
	@override String get k_1jwxwgt => '連接中...';
	@override String get k_03gm52d => '通訊錄';
	@override String get k_003k7dc => '我的';
	@override String get k_14yh35u => '登入·即時通信';
	@override String get k_0st7i3e => '體驗群組聊天，音視訊對話等IM功能';
	@override String get k_0cr1atw => '中國大陸';
	@override String get k_0mnxjg7 => '歡迎使用騰訊雲即時通信 IM，為保護您的個人信息安全，我們更新了《私隱政策》，主要完善了收集用戶信息的具體內容和目的、增加了第三方SDK使用等方面的內容。';
	@override String get k_1545beg => '請您點擊';
	@override String get k_0opnzp6 => '《用戶協議》';
	@override String get k_00041m1 => '和';
	@override String get k_0orhtx0 => '《私隱協議》';
	@override String get k_11x8pvm => '並仔細閱讀，如您同意以上內容，請點擊「同意並繼續」，開始使用我們的產品與服務！';
	@override String get k_17nw8gq => '同意並繼續';
	@override String get k_1nynslj => '不同意並退出';
	@override String get k_0jsvmjm => '請輸入手機號碼';
	@override String get k_1lg8qh2 => '手機號碼格式錯誤';
	@override String get k_03jia4z => '無網絡連接';
	@override String get k_007jqt2 => '驗證碼發送成功';
	@override String get k_1a55aib => '驗證碼異常';
	@override String k_1mw45lz({required Object errorReason}) => '登入失敗$errorReason';
	@override String get k_16r3sej => '國家/地區';
	@override String get k_15hlgzr => '選擇你的國家區號';
	@override String get k_1bnmt3h => '請使用英文搜尋';
	@override String get k_03fei8z => '手機號碼';
	@override String get k_03aj66h => '驗證碼';
	@override String get k_1m9jtmw => '請輸入驗證碼';
	@override String get k_0y1wbxk => '獲取驗證碼';
	@override String get k_002ri2g => '登陸';
	@override String get k_161ecly => '當前無網絡';
	@override String get k_11uz2i8 => '重試網絡';
	@override String get k_1vhzltr => '騰訊雲即時通信IM';
	@override String get k_0j433ys => '騰訊雲TRTC';
	@override String get k_0epvs61 => '更換皮膚';
	@override String get k_12u8g8l => '免責聲明';
	@override String get k_1p0j8i3 => 'IM即時通信（「本產品」）是由騰訊雲提供的一款測試產品，騰訊雲享有本產品的著作權和所有權。本產品僅用於功能體驗，不得用於任何商業用途。為配合相關部門監管要求，本產品音視訊互動全程均有錄音錄像存檔，嚴禁在使用中有任何色情、辱罵、暴恐、涉政等違法內容傳播。';
	@override String get k_0k7qoht => '同意任何用戶加好友';
	@override String get k_1j91bvz => 'TUIKIT 為你選擇一個頭像?';
	@override String get k_1wmkneq => '加我為好友時需要驗證';
	@override String get k_1eitsd0 => '關於騰訊雲·通信';
	@override String get k_1919d6m => '私隱條例';
	@override String get k_0wqhgor => '個人資料收集清單';
	@override String get k_12rfxml => '第三方資料共用清單';
	@override String get k_131g7q4 => '註銷賬戶';
	@override String get k_03fel2u => '版本號';
	@override String get k_16kts8h => '登出';
	@override String get k_13spdki => '發送訊息';
	@override String get k_14c600t => '修改備註';
	@override String get k_1f811a4 => '支持數字、英文、下劃線';
	@override String get k_11z7ml4 => '詳細資料';
	@override String get k_1ajt0b1 => '獲取當前位置失敗';
	@override String get k_0lhm9xq => '發起檢索成功';
	@override String get k_0fdeled => '發起檢索失敗';
	@override String get k_1yh0a50 => 'mapDidLoad-地圖載入完成';
	@override String get k_1t2zg6h => '圖片驗證碼校驗失敗';
	@override String get k_03ibfd2 => '星期七';
	@override String k_1o7lf2y({required Object errorMessage}) => '服務器錯誤：$errorMessage';
	@override String k_118l7sq({required Object requestErrorMessage}) => '請求錯誤：$requestErrorMessage';
	@override String get k_003nfx9 => '深沈';
	@override String get k_003rvjp => '輕快';
	@override String get k_003rtht => '明媚';
	@override String get k_003qxiw => '夢幻';
	@override String k_0s5zoi3({required Object option1}) => '發生錯誤 $option1';
	@override String k_0i8egqa({required Object option8}) => '獲取到的訊息:$option8';
	@override String k_0pokyns({required Object option8}) => '獲取討論區列表失敗 $option8';
	@override String k_1y03m8a({required Object option8}) => '創建話題失敗 $option8';
	@override String k_1v6uh9c({required Object option8}) => '登入失敗 $option8';
	@override String k_0t5a9hl({required Object option1}) => '登入失敗$option1';
	@override String k_0k3uv02({required Object option8}) => '服務器錯誤：$option8';
	@override String k_1g9o3kz({required Object option8}) => '請求錯誤：$option8';
	@override String get k_14cahuz => '關於騰訊雲 · IM';
	@override String get k_0llnalm => 'SDK版本號';
	@override String get k_13dyfii => '應用版本號';
	@override String get k_12h52zh => '私隱政策';
	@override String get k_0fxhhwb => '用戶協議';
	@override String get k_18z2e6q => 'IM即時通信（「本產品」）是由騰訊雲提供的一款測試產品，騰訊雲享有本產品的著作權和所有權。本產品僅用於功能體驗，不得用於任何商業用途。嚴禁在使用中有任何色情、辱罵、暴恐、涉政等違法內容傳播。';
	@override String get k_0zu7dd7 => '個人資料收集清單';
	@override String get k_0mcqhgh => '第三方資料共用清單';
	@override String get k_12eqaty => '確認註銷賬戶';
	@override String get k_0ziqsr6 => '賬戶註銷成功！';
	@override String get k_002qtgt => '註銷';
	@override String k_0rvdu91({required Object option1}) => '註銷後，您將無法使用當前賬號，相關數據也將刪除且無法找回。當前賬號ID: $option1';
	@override String get k_15d22qk => '註銷賬號';
	@override String get k_036uv3f => '雲通信IM';
	@override String get k_167916k => '微信好友';
	@override String get k_03euwr1 => '朋友圈';
	@override String get k_0cxccci => '邀請你視訊通話';
	@override String get k_06lhh4b => '邀請你語音通話';
	@override String get k_1ywo9ut => '即時通信 IM (Instant Messaging)基於 QQ 底層 IM 能力開發，僅需植入 SDK 即可輕松集成聊天、會話、群組、資料管理和直播彈幕能力，也支持通過信令訊息與白板等其他產品打通，全面覆蓋您的業務場景，支持各大平臺小程序接入使用，全面滿足通信需要';
	@override String get k_0ios26v => '未檢測到微信安裝';
	@override String get k_1jg6d5x => '《私隱政策摘要》';
	@override String get k_0selni4 => '《私隱政策》';
	@override String get k_10s6v2i => '《個人資料收集清單》';
	@override String get k_0pasxq8 => '《第三方資料共用清單》';
	@override String get k_003r6vf => '登入';
	@override String get k_03f2zbs => '分享到';
	@override String get k_0cfkcaz => '訊息推送';
	@override String get k_1rmkb2w => '推送新聊天訊息';
	@override String get k_1lg375c => '新訊息提醒';
	@override String k_1t0akzp({required Object option1}) => '註銷後，您將無法使用當前賬號，相關數據也將刪除且無法找回。當前賬號ID: $option1';
	@override String get k_1699p6d => '騰訊大廈';
	@override String get k_1ngd60h => '深圳市深南大道10000號';
	@override String get k_1na29vg => '位置訊息維護中';
	@override String get k_1xmms9t => '進群申請列表';
	@override String get k_0dla4vp => '反饋及建議可以加入QQ群組';
	@override String get k_1odrjd1 => '在線時間: 周一到周五，早上10點 - 晚上8點';
	@override String get k_1bh903m => '群組復製成功';
	@override String get k_16264lp => '復製群組號';
	@override String get k_18ger86 => '騰訊雲 · IM';
	@override String get k_1vd70l1 => '服務億級 QQ 用戶的即時通訊技術';
	@override String get k_036phup => '騰訊雲IM';
	@override String get k_0gfsln9 => '信息已變更';
	@override String get k_0ow4akh => '請根據Demo的README指引，配置百度AK，體驗DEMO的位置訊息能力';
	@override String get k_1kzh3lo => '請根據本文檔指引 https://docs.qq.com/doc/DSVliWE9acURta2dL ， 快速體驗位置訊息能力';
	@override String get k_161zzkm => '請輸入用戶名';
	@override String get k_1veosyv => '請在環境變量中寫入key';
	@override String get k_03exdnb => '用戶名';
	@override String get k_16kquu8 => '當前目錄';
	@override String get k_0fbvuqs => '開始拷貝';
	@override String get k_16j153h => '騰訊雲IM APP（「本產品」）是由騰訊雲提供的一款測試產品，騰訊雲享有本產品的著作權和所有權。本產品僅用於功能體驗，不得用於任何商業用途。嚴禁在使用中有任何色情、辱罵、暴恐、涉政等違法內容傳播。';
	@override String get k_13ghyf8 => '【安全提示】本 APP 僅用於體驗騰訊雲即時通信 IM 產品功能，不可用於業務洽談與拓展。請勿輕信匯款、中獎等涉及錢款的信息，勿輕易撥打陌生電話，謹防上當受騙。';
	@override String get k_0gt6cro => '點此投訴';
	@override String k_03595fk({required Object option1}) => ' 等$option1人';
	@override String k_1gpzgni({required Object option2}) => '$option2人群';
	@override String get k_02lfg57 => '新群組';
	@override String get k_17ifd8i => '歡迎使用本 APP 體驗騰訊雲 IM 產品服務';
	@override String get k_1f0ms23 => '訊息閱讀狀態';
	@override String get k_1c0x9ha => '關閉後，您收發的訊息均不帶訊息閱讀狀態，您將無法看到對方是否已讀，同時對方也無法看到你是否已讀。';
	@override String get k_1dzhdr5 => '顯示在線狀態';
	@override String get k_0mwsniq => '關閉後，您將不可以在會話列表和通訊錄中看到好友在線或離線的狀態提示。';
	@override String get k_0f7h6ay => '連接失敗';
	@override String get k_0wreawq => '百度地圖插件暫不支持網頁版，請使用手機APP DEMO體驗位置訊息能力。';
	@override String get k_03c56co => '不選擇';
	@override String get k_1klqdh1 => '僅限漢字、英文、數字和下劃線';
	@override String get k_03el5lp => '未填寫';
	@override String get k_0554lam => '好友工作群（Work）';
	@override String get k_1hyz1ua => '陌生人社交群（Public）';
	@override String get k_1s8hjin => '臨時會議群（Meeting）';
	@override String get k_16ejs8f => '直播群（AVChatRoom）';
	@override String get k_1rqdzbh => '社群（Community）';
	@override String get k_1aue1b6 => '類似普通微信群，創建後僅支持已在群內的好友邀請加群，且無需被邀請方同意或群主審批。';
	@override String get k_0uldek7 => '類似 QQ 群，創建後群主可以指定群管理員，用戶搜索群 ID 發起加群申請後，需要群主或管理員審批通過才能入群。';
	@override String get k_1nv4w25 => '創建後可以隨意進出，且支持查看入群前訊息；適合用於音視頻會議場景、在線教育場景等與實時音視頻產品結合的場景。';
	@override String get k_1wbmoof => '創建後可以隨意進出，沒有群成員數量上限，但不支持歷史訊息存儲；適合與直播產品結合，用於彈幕聊天場景。';
	@override String get k_11mlyaa => '創建後可以隨意進出，最多支持10w人，支持歷史訊息存儲，用戶搜索群 ID 發起加群申請後，無需管理員審批即可進群。';
	@override String get k_0ylgdrb => '社群DEMO正在開發中，即將上線';
	@override String get k_0elsjm2 => '創建群組';
	@override String get k_1iw4gdk => '允許任何人';
	@override String get k_0i5ffqf => '需要驗證訊息';
	@override String get k_111mgqj => '禁止加我為好友';
	@override String get k_03go2lu => '未指定';
	@override String get k_15zb99m => '加我為聯絡人的方式';
	@override String get k_1llp7tu => '該用戶不存在';
	@override String get k_0tbyqyb => '加載中…';
	@override String get k_0td1p3f => '保存中…';
	@override String get k_1ui0gai => '搜索指定內容';
	@override String k_1loix7s({required Object groupType}) => '群類型: $groupType';
	@override String get k_03agld7 => '群提示';
	@override String get k_002wkr3 => '翻譯';
	@override String get k_13g4hxv => '翻譯完成';
	@override String get k_003mmoz => '火箭';
	@override String get k_003nogx => '飛機';
	@override String get k_003pjj6 => '皇冠';
	@override String get k_000340k => '花';
	@override String k_0cv8ngo({required Object option1}) => '送出$option1';
	@override String get k_03a2zjl => '送禮物';
	@override String get k_0003yq8 => '朵';
	@override String get k_13k5228 => '讚了直播間';
	@override String get k_1k0rrvn => '說點啥...';
	@override String get k_13jzi5y => '進入直播間';
	@override String get k_14asoqo => '取消關注';
	@override String get k_003ohwe => '關注';
	@override String k_1h33pzv({required Object option1}) => '粉絲 $option1 |';
	@override String k_07skbgr({required Object option2}) => ' 關注 $option2';
	@override String k_1c99nb3({required Object option1}) => '$option1 萬+';
	@override String get k_19mfrrb => '在線觀眾';
	@override String get k_13m65um => '觀眾信息';
	@override String k_19kj6te({required Object option1}) => '$option1 本場點贊';
	@override String k_1qqgjra({required Object option3}) => '$option3條未讀訊息';
	@override String get k_0uubyjr => '以下為未讀訊息';
	@override String get k_0kg1wsx => '選擇群類型';
	@override String get k_003m6xh => '設置';
	@override String get k_18nszwl => '關於我們';
	@override String get k_003txiw => '關於';
	@override String get k_12fp4oc => '官方網站';
	@override String get k_1391sy5 => '一次開發，打包部署至所有平臺，寬屏窄屏均可自適應';
	@override String get k_002vu95 => '歡迎';
	@override String get k_0o6nt4d => '我已閱讀並同意 ';
	@override String get k_12l2415 => '騰訊雲IM各項協議及規定';
	@override String get k_0rcqou9 => 'Copyright © 2013-2023 Tencent Cloud. All Rights Reserved. 騰訊雲 版權所有';
	@override String get k_003lmhx => '群組';
	@override String get k_1s251fa => '聯系人 & 群組';
	@override String get k_0cjp3hx => '請選擇聯系人或群組，以查看詳情';
	@override String get k_12veoax => '渠道切換：';
	@override String get k_002rfh9 => '國際';
	@override String get k_0864lq3 => '如果您在使用過程中有任何疑問，請通過如下渠道聯系我們';
	@override String get k_12625cy => '立即進群';
	@override String get k_131lvxd => '我的賬戶';
	@override String get k_002qep7 => '界面';
	@override String get k_002vbyp => '外觀';
	@override String get k_16owrwc => '淺色模式';
	@override String get k_01zair9 => '深色模式 (開發中)';
	@override String get k_002skx2 => '主題';
	@override String get k_002wzvs => '語言';
	@override String get k_002woft => '英語';
	@override String get k_129eldp => '繁體中文';
	@override String get k_129ekqk => '簡體中文';
	@override String get k_002whil => '日語';
	@override String get k_002wqld => '韓語';
	@override String get k_003is6v => '通用';
	@override String get k_12s2mfc => '查看詳情';
	@override String get k_12fsjye => '相關網站';
	@override String get k_16uejmj => '個人中心';
	@override String get k_0dtyory => '意見反饋';
	@override String get k_03oy6z4 => '所有 SDK';
	@override String get k_03bh54n => '源代碼';
	@override String get k_0s3sgel => '移出黑名單';
	@override String get k_16as7eq => '表情回應';
	@override String get k_003s12u => '回復';
	@override String get k_003s38r => '更多';
	@override String get k_003molk => '表情';
	@override String get k_165bbw6 => '訊息歷史';
	@override String get k_13sqc0z => '清除訊息';
	@override String get k_0glns86 => '刪除會話';
	@override String get k_13s99rx => '清空訊息';
	@override String get k_11vsa3j => '退出群組';
	@override String get k_11vvszp => '解散群組';
	@override String get k_15i9w72 => '群管理員';
	@override String get k_0p3espj => '設置備註名';
	@override String get k_118sw9v => '立即搜索';
	@override String get k_1xn4cn2 => '執行環境檢測';
	@override String get k_0sy25ey => '請先安裝 Microsoft Edge WebView2 執行環境，以使用本程式。';
	@override String get k_0g4tlsb => '立即下載';
	@override String get k_13ozr8k => '暫不支援';
	@override String get k_16yiku8 => 'Web 端暫不支援本地搜尋，請使用 Mobile App 或 Desktop 端體驗';
	@override String get k_003lz6t => '對方';
	@override String k_1xf4yre({required Object option1}) => '發送給$option1';
	@override String get k_003por5 => '截圖';
	@override String get k_0c67rdb => '允許多選';
	@override String get k_11lav8q => '匿名投票';
	@override String get k_137cjfq => '公開結果';
	@override String get k_0e3jces => '請輸入選項';
	@override String get k_0dcbhiz => '新增選項';
	@override String get k_003r4qf => '發佈';
	@override String get k_1xa5q8q => '請輸入投票主題';
	@override String get k_003nv7m => '已投';
	@override String get k_002ym5d => '票，';
	@override String get k_003pfxt => '佔比';
	@override String get k_0fxdch1 => '未初始化投票插件，請先初始化';
	@override String get k_1lzoopr => '非投票訊息，請檢查';
	@override String get k_03ahybu => '已投票';
	@override String get k_11lamu8 => '立即投票';
	@override String get k_0b9h7nq => '投票已結束';
	@override String get k_0c7zem1 => '再次發送';
	@override String get k_11l1qvo => '結束投票';
	@override String get k_0z314c0 => '[多選]';
	@override String get k_0z2zcm7 => '[單選]';
	@override String get k_0y8ap8v => '[公開]';
	@override String get k_0y4cs5n => '[私有]';
	@override String get k_0y6agtt => '[匿名]';
	@override String get k_0y68wmo => '[實名]';
	@override String k_1pssgjf({required Object option1}) => '應參與人數：$option1';
	@override String k_0x9zkqf({required Object option2}) => '實際參與人數：$option2';
	@override String get k_09ikyqj => '查看全部選項';
	@override String k_0h2jp2z({required Object option1}) => '$option1票';
	@override String get k_0y2zr3y => '[投票]';
	@override String get k_11lci1l => '創建投票';
	@override String get k_003l988 => '投票';
	@override String get k_1rw7s82 => ' 訪問相冊中視頻權限，以正常使用發送視頻等功能。';
	@override String get k_003rcwm => '打開';
	@override String get k_1698c42 => '在 Finder 中顯示';
	@override String get k_066fxsz => '查看資料夾';
	@override String get k_0k432y2 => '無法發送，包含文件夾';
	@override String get k_002wb4y => '會話';
	@override String get k_0od4qyh => '視頻文件異常';
	@override String get k_1cdzld5 => '請填寫產品資訊';
	@override String get k_19qt9y2 => '服務評價';
	@override String get k_13s7ltw => '卡片訊息';
	@override String get k_13ajr25 => '線上客服';
	@override String get k_0ti5mfz => '暫無線上客服';
	@override String get k_1bfkxg9 => '不支持 0KB 文件的傳輸';
	@override String get k_0vvsw7g => '文件處理異常';
	@override String get k_06e224q => '[訊息被管理員撤回]';
	@override String get k_1u1mjcl => '[訊息被撤回]';
	@override String get k_1qcqxea => '選擇多個對話';
	@override String get k_1qgmc20 => '選擇一個對話';
	@override String get k_1d8nx6f => '在新視窗中打開';
	@override String get k_1hz05ax => '正在下載原始資源，請稍候...';
	@override String get k_1fszgep => '歡迎黎我哋嘅知聊社區參與討論';
	@override String get k_1xtvvs9 => '呢個社區用咗同款 Flutter UIKit，進行咗全平台開發';
	@override String get k_0cdljc3 => '前往知聊社區';
	@override String get k_167dvo3 => '揀選聯絡人';
	@override String get k_1u1jwb8 => 'zhiliao.qq.com';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'k_1fdhj9g': 'This version does not support the message',
			'k_06pujtm': 'Accept all contact requests',
			'k_05nspni': 'Custom field',
			'k_03fchyy': 'Group profile photo',
			'k_03i9mfe': 'Group introduction',
			'k_03agq58': 'Group name',
			'k_039xqny': 'Group notification',
			'k_003tr0a': 'Group owner',
			'k_002wddw': 'Mute',
			'k_0got6f7': 'Unmute',
			'k_1uaqed6': '[Custom]',
			'k_0z2z7rx': '[Voice]',
			'k_0y39ngu': '[Emoji]',
			'k_0y1a2my': '[Image]',
			'k_0z4fib8': '[Video]',
			'k_0y24mcg': '[Location]',
			'k_0pewpd1': '[Chat history]',
			'k_13s8d9p': 'Unknown message',
			'k_003qkx2': 'Calendar',
			'k_003n2pz': 'Camera',
			'k_03idjo0': 'Contacts',
			'k_02k3k86': 'Mic',
			'k_003pm7l': 'Album',
			'k_15ao57x': 'Album write',
			'k_164m3jd': 'Local storage',
			'k_03r6qyx': 'We need your approval to get information.',
			'k_02noktt': 'Reject',
			'k_00043x4': 'Agree',
			'k_003qzac': 'Yesterday',
			'k_003r39d': '2 days ago',
			'k_03fqp9o': 'Sun',
			'k_003q7ba': 'Afternoon',
			'k_003q7bb': 'Morning',
			'k_003pu3h': 'Now',
			'k_002rflt': 'Delete',
			'k_1don84v': 'Failed to locate the original message',
			'k_003q5fi': 'Copy',
			'k_003prq0': 'Forward',
			'k_002r1h2': 'Select',
			'k_003j708': 'Quote',
			'k_003pqpr': 'Recall',
			'k_03ezhho': 'Copied',
			'k_11ctfsz': 'Not implemented',
			'k_1hbjg5g': '[Group system message]',
			'k_03tvswb': '[Unknown message]',
			'k_155cj23': 'You\'ve recalled a message.',
			'k_0gapun3': 'Edit it again',
			'k_0003z7x': 'You',
			'k_002wfe4': 'Read',
			'k_002wjlg': 'Unread',
			'k_001nmhu': 'Open with another app',
			'k_105682d': 'Failed to load the image',
			'k_0pytyeu': 'Image saved successfully',
			'k_0akceel': 'Failed to save the image',
			'k_003rk1s': 'Save',
			'k_04a0awq': '[Voice message]',
			'k_105c3y3': 'Failed to load the video',
			'k_176rzr7': 'Chat history',
			'k_002r305': 'Send',
			'k_003n8b0': 'Shoot',
			'k_003tnp0': 'File',
			'k_0ylosxn': 'Custom message',
			'k_0jhdhtp': 'Sending failed. The video cannot exceed 100 MB.',
			'k_0am7r68': 'Slide up to cancel',
			'k_13dsw4l': 'Release to cancel',
			'k_15jl6qw': 'Too short',
			'k_0gx7vl6': 'Press and hold to talk',
			'k_15dlafd': 'One-by-one forward',
			'k_15dryxy': 'Combine and forward',
			'k_1eyhieh': 'Are you sure you want to delete the selected message?',
			'k_118prbn': 'Search globally',
			'k_003ll77': 'Draft',
			'k_13dq4an': 'Automatic approval',
			'k_0l13cde': 'Admin approval',
			'k_11y8c6a': 'Disallow group joining',
			'k_16payqf': 'Group joining mode',
			'k_0vzvn8r': 'Modify group name',
			'k_038lh6u': 'Group management',
			'k_0k5wyiy': 'Set admin',
			'k_0goiuwk': 'Mute all',
			'k_1g889xx': 'If you mute all, only the group owner and admin can speak.',
			'k_0wlrefq': 'Add group members to mute',
			'k_0goox5g': 'Mute',
			'k_08daijh': 'Admin role canceled successfully',
			'k_0k5u935': 'Add admin',
			'k_003ngex': 'Complete',
			'k_03enyx5': 'Group member',
			'k_03erpei': 'Admin',
			'k_0qi9tno': 'Group owner and admin',
			'k_0uj7208': 'Failed to view the group members due to network disconnection',
			'k_0ef2a12': 'Modify my nickname in group',
			'k_1aajych': '2–20 characters, including digits, letters, and underscores',
			'k_137pab5': 'My nickname in group',
			'k_0ivim6d': 'No group notice',
			'k_03eq6cn': 'Group notice',
			'k_002vxya': 'Modify',
			'k_03gu05e': 'Chat room',
			'k_03b4f3p': 'Meeting group',
			'k_03avj1p': 'Public group',
			'k_03asq2g': 'Work group',
			'k_03b3hbi': 'Unknown group',
			'k_03es1ox': 'Group type',
			'k_003mz1i': 'Agree',
			'k_003lpre': 'Reject',
			'k_003qk66': 'Profile photo',
			'k_003lhvk': 'Nickname',
			'k_003ps50': 'Account',
			'k_15lx52z': 'Status',
			'k_003qgkp': 'Gender',
			'k_003m6hr': 'Date of birth',
			'k_0003v6a': 'Male',
			'k_00043x2': 'Female',
			'k_03bcjkv': 'Not set',
			'k_11s0gdz': 'Modify nickname',
			'k_0p3j4sd': 'Allows only letters, digits, and underscores',
			'k_15lyvdt': 'Modify status',
			'k_0vylzjp': 'None',
			'k_1hs7ese': 'Modify it later',
			'k_03exjk7': 'Remarks',
			'k_0s3skfd': 'Block user',
			'k_17fpl3y': 'Pin chat to top',
			'k_0p3b31s': 'Modify remarks',
			'k_11zgnfs': 'Profile',
			'k_1tez2xl': 'No status',
			'k_0vjj2kp': 'Group chat history',
			'k_003n2rp': 'Select',
			'k_1m9exwh': 'Recent contacts',
			'k_119nwqr': 'The input cannot be empty',
			'k_0pzwbmg': 'Video saved successfully',
			'k_0aktupv': 'Failed to save the video',
			'k_1yemzyd': 'Received a message',
			'k_13sajrj': 'Emoji message',
			'k_13sjeb7': 'File message',
			'k_0yd2ft8': 'Group notification',
			'k_13s7mxn': 'Image message',
			'k_13satlt': 'Location message',
			'k_00bbtsx': 'Combined message',
			'k_13sqwu4': 'Voice message',
			'k_13sqjjp': 'Video message',
			'k_1c3us5n': 'The current group does not support @all',
			'k_11k579v': 'Invalid statements detected',
			'k_0n9pyxz': 'The user does not exist',
			'k_1bjwemh': 'Search by user ID',
			'k_0i553x0': 'Enter verification information',
			'k_031ocwx': 'Enter remarks and list',
			'k_003ojje': 'Remarks',
			'k_003lsav': 'List',
			'k_167bdvq': 'My contacts',
			'k_156b4ut': 'Contact request sent',
			'k_1lqbsib': 'The group chat does not exist',
			'k_03h153m': 'Search by group ID',
			'k_0oxak3r': 'Group request sent',
			'k_1aszp2k': 'Are you sure you want to send the message again?',
			'k_0h1ygf8': 'Call initiated',
			'k_0h169j0': 'Call canceled',
			'k_0h13jjk': 'Call accepted',
			'k_0h19hfx': 'Call rejected',
			'k_0obi9lh': 'No answer',
			'k_1ht1b80': 'Receiving',
			'k_0d5z4m5': 'Select reminder receiver',
			'k_1665ltg': 'Initiate call',
			'k_003kthh': 'Photo',
			'k_119ucng': 'The image cannot be empty',
			'k_0h1svv1': 'Delete group member',
			'k_0h1g636': 'Add group member',
			'k_0hpukyx': 'View more group members',
			'k_0qtsar0': 'Mute notifications',
			'k_1m9dftc': 'All contacts',
			'k_0em4gyz': 'All group chats',
			'k_09kga0d': 'More chat history',
			'k_09khmso': 'Related chat records',
			'k_03ignw6': 'All',
			'k_03icaxo': 'Custom',
			'k_1qbg9xc': ({required Object option8}) => '$option8 to ',
			'k_1wq5ubm': ({required Object option7}) => '$option7 changed ',
			'k_0y5pu80': ({required Object option6}) => '$option6 quit group chat',
			'k_0nl7cmd': ({required Object option5}) => 'Invite $option5 to the group',
			'k_1ju5iqw': ({required Object option4}) => 'Remove $option4 from the group',
			'k_1ovt677': ({required Object option3}) => 'User $option3 joined the group',
			'k_0k05b8b': ({required Object option2}) => '$option2 was ',
			'k_0wm4xeb': ({required Object option2}) => 'System message: $option2',
			'k_0nbq9v3': ({required Object option2}) => 'Call duration: $option2',
			'k_0i1kf53': ({required Object option2}) => '[File] $option2',
			'k_1gnnby6': ({required Object option2}) => ' attempted to access your $option2',
			'k_1wh4atg': ({required Object option2}) => '$option2 minutes ago',
			'k_07sh7g1': ({required Object option2}) => '$option2, yesterday',
			'k_1pj8xzh': ({required Object option2}) => 'My user ID: $option2',
			'k_0py1evo': ({required Object option2}) => 'Status: $option2',
			'k_1kvj4i2': ({required Object option2}) => '$option2 recalled a message',
			'k_1v0lbpp': ({required Object option2}) => '$option2 currently does not support this file type. You can use another app to open and preview the file.',
			'k_0torwfz': ({required Object option2}) => 'Selected successfully: $option2',
			'k_0i1bjah': ({required Object option1}) => '$option1 recalled a message',
			'k_1qzxh9q': ({required Object option3}) => 'Call duration: $option3',
			'k_0wrgmom': ({required Object option1}) => '[Voice Call]：$option1',
			'k_06ix2f0': ({required Object option2}) => '[Video Call]：$option2',
			'k_08o3z5w': ({required Object option1}) => '[File] $option1',
			'k_0ezbepg': ({required Object option2}) => '$option2[Someone@me]',
			'k_1ccnht1': ({required Object option2}) => '$option2[@all]',
			'k_1k3arsw': ({required Object option2}) => 'Admin ($option2/10)',
			'k_1d4golg': ({required Object option1}) => 'Group members ($option1 members)',
			'k_1bg69nt': ({required Object option1}) => '$option1 members',
			'k_00gjqxj': ({required Object option1}) => 'Status: $option1',
			'k_0c29cxr': ({required Object option1}) => '$option1 messages are found',
			'k_1twk5rz': ({required Object option1}) => 'Chat history with $option1',
			'k_18o68ro': 'Allow ',
			'k_1onpf8u': ' to access your camera to take photos, record videos, and make video calls.',
			'k_17irga5': ' to access your microphone to send voice messages, record videos, and make voice/video calls.',
			'k_0572kc4': ' to access your photos to send images and videos.',
			'k_0slykws': ' to access your album to save images and videos.',
			'k_119pkcd': ' to access your files to view, select and send files in a chat.',
			'k_03c49qt': 'Authorize now',
			'k_0nt2uyg': 'Back to the bottom',
			'k_04l16at': ({required Object option1}) => '$option1 new messages',
			'k_13p3w93': 'Someone @ me',
			'k_18w5uk6': '@ all',
			'k_0jmujgh': 'You are receiving other files',
			'k_12s5ept': 'Message details',
			'k_0mxa4f4': ({required Object option1}) => '$option1 read',
			'k_061tue3': ({required Object option2}) => '$option2 unread',
			'k_1vn4xq1': ({required Object adminMember}) => 'remove $adminMember from admin',
			'k_0e35hsw': 'Please allow us to use your camera to capture photos and videos sending to your contacts and make video calls.',
			'k_0dj6yr7': 'Please allow us to use your microphone for sending voice message, make video/audio calls.',
			'k_003qnsl': 'Save',
			'k_0s3rtpw': 'Please allow us to access the media and files on your devices, in order to select and send to your contact, or save from them.',
			'k_0tezv85': ({required Object option2}) => ' Would like to access $option2',
			'k_002rety': ' permission. ',
			'k_0gqewd3': 'Later',
			'k_03eq4s1': 'Authorize Now',
			'k_0on1aj2': ({required Object option2}) => '$option2 messages @ me',
			'k_09j4izl': '[You were mentioned] ',
			'k_1oqtjw0': '[@All] ',
			'k_1x5a9vb': ({required Object option1}) => 'This is: $option1',
			'k_14n31e7': 'Add Group',
			'k_08nc5j1': ({required Object option1}) => 'Group type: $option1',
			'k_1josu12': ({required Object option1}) => '$option1 group joining request(s)',
			'k_0n2x5s0': ({required Object option2}) => 'Verification message: $option2',
			'k_03c1nx0': 'Agreed',
			'k_03aw9w8': 'Rejected',
			'k_038ryos': 'Handle now',
			'k_0gw8pum': 'Add Group',
			'k_1gcvfrj': 'Please fill in the remarks',
			'k_002v9zj': 'Confirm',
			'k_10oqrki': 'Tap to take photo.',
			'k_0f8b3ws': 'Load failed',
			'k_11cm5lm': 'focus manually',
			'k_002uzrd': 'preview',
			'k_003qkn3': 'record',
			'k_003k6a7': 'take picture',
			'k_0bqpqco': 'shooting button',
			'k_1626ozl': 'stop recording',
			'k_003lvmu': 'Front',
			'k_003lued': 'Rear',
			'k_003lwzh': 'External',
			'k_002qzi3': 'off',
			'k_003pufb': 'auto',
			'k_0apm0ze': 'flash when taking photos',
			'k_157zog5': 'always flash',
			'k_0cfyqhy': ({required Object option1}) => '$option1 camera preview',
			'k_0phctlz': ({required Object option2}) => 'Flash mode: $option2',
			'k_02vfqe0': ({required Object option3}) => 'Switch to the $option3 camera',
			'k_0f0y9ex': 'Message too short',
			'k_0ln70tk': 'Unable to launch URL',
			'k_11a3jdv': 'Tap to take photo. Long press to record video.',
			'k_1k18miv': 'Please provide a life cycle hook navigating back to home or other pages.',
			'k_0gmwbnd': 'All muted',
			'k_0got2zr': 'You are muted',
			'k_0y9jck8': 'You have to deal with navigating for search bar',
			'k_0yum3tv': 'Please provide according custom widgets if you tends to you use it.',
			'k_125ru1w': 'Disband the group',
			'k_0jtzmqa': 'You will not receive message from this group after disbanding.',
			'k_129uzfn': 'Deleted failed',
			'k_0h18bbi': 'Hang up the call',
			'k_154q2hn': 'Calling timed out',
			'k_1mnjtnc': 'Call declined by user',
			'k_0l0mysn': 'Error: ',
			'k_03fn6rg': 'No response',
			'k_003luo3': 'Busy',
			'k_154jvfi': 'You have been kicked offline',
			'k_1sp7jp6': 'canceled the call',
			'k_1045haa': 'Awaiting Response',
			'k_1gq7jv7': 'Invite you to call',
			'k_003m7ey': 'Hang up',
			'k_03ectox': 'Speaker',
			'k_003q2a4': 'Answer',
			'k_03ftugq': 'Camera',
			'k_10setgr': 'Switch to voice call',
			'k_1g7i9jz': 'Switch the camera',
			'k_15ml1ls': 'Awaiting Response',
			'k_0nj9x9s': 'Invite you to a multi-person call.',
			'k_1vtto3l': 'The other person participating:',
			'k_0h147mx': 'In call',
			'k_0j6aylo': ({required Object option1}) => 'Duration: $option1',
			'k_1fu9ahv': 'All Mute Status',
			'k_1ualc52': 'Check the data from others.',
			'k_0szluvp': 'Set the online status of others',
			'k_0f4rnf8': 'This user is your contact.',
			'k_1tdkom4': 'You are already in this group',
			'k_1p2lyuz': 'Typing...',
			'k_1g8wfpy': ({required Object option1}) => '...total $option1',
			'k_12rv9vw': 'Reaction Detail',
			'k_0n9p7g8': 'Group not exists',
			'k_1tdh5vn': 'Not a member',
			'k_0h1q57v': 'No member',
			'k_0y5drq1': ({required Object option1}) => '[Details >>]($option1)',
			'k_03pjp61': '[Sticker]',
			'k_1jpvzul': '[Custom message]',
			'k_03u3bh1': '[File]',
			'k_1odsnsw': '[Group message]',
			'k_03sel4t': '[Image]',
			'k_03sfw3r': '[Location]',
			'k_03xpuwq': '[Multiple messages]',
			'k_07ycxwo': '[No element]',
			'k_03rc9vz': '[Text]',
			'k_046uopf': '[Video]',
			'k_0ehmsun': 'Insufficient disk storage space, it is recommended to clean up to obtain a better experience',
			'k_003kmos': 'Image',
			'k_002s86q': 'Video',
			'k_06bk5ei': 'Video is available with .mp4 only',
			'k_13opfxf': 'Search is not available in WEB',
			'k_1i0o0y2': 'Only available on Android/iOS temporarily',
			'k_045dtzl': ({required Object option1}) => 'Chat History for $option1',
			'k_0t0131u': 'group profile data',
			'k_18ok8xz': 'message receiving options',
			'k_03ax3ks': 'Group Profile',
			'k_0sqvoqo': ({required Object option1}) => 'grant $option1 as administrator',
			'k_1gbg1v8': ({required Object option1}) => 'remove $option1 from administrator',
			'k_17k64g4': 'Group created.',
			'k_05mn217': 'Please integrate the sticker plugin before using it, see https://cloud.tencent.com/document/product/269/70746.',
			'k_14j17nz': 'No stickers yet.',
			'k_1tmlcf0': 'New call coming, answering failed due to lack of permission, please make sure camera/microphone permission is granted.',
			'k_0fvjexh': 'Downloading',
			'k_1cdagzz': 'Added to download queue and waiting',
			'k_0g4vojc': 'Start downloading',
			'k_026hiq5': 'Loading messages',
			'k_0b9q00i': 'Tencent Building/////No. 10000 Shennan road, Nanshan district, Shenzhen',
			'k_03fw6h1': 'Shenzhen City',
			'k_0f7mdn7': 'Search Failed',
			'k_158cssa': 'Tencent Map',
			'k_157htdw': 'AMap',
			'k_157im4z': 'Baidu Map',
			'k_157m20e': 'Apple Map',
			'k_1bqk7kl': 'Amap not detected',
			'k_12ba1nv': 'Tencent Map not detected',
			'k_1dz8sci': 'Baidu Map not detected',
			'k_0f7fvky': 'Opening failed',
			'k_1l2v0we': 'In Tencent Building, 18 meters near the China Merchants Bank',
			'k_10o8gk2': 'Search for location',
			'k_10o86v7': 'Unknown location',
			'k_03f15qk': 'Blocked Users',
			'k_0uc5cnb': 'Beta test in progress. Channel creation is not supported now.',
			'k_003nevv': 'Cancel',
			'k_003rzap': 'OK',
			'k_0s5ey0o': 'TRTC',
			'k_03gpl3d': 'Hello',
			'k_0352fjr': 'Failed to enter the channel due to network disconnection',
			'k_0d7n018': 'End topic',
			'k_0d826hk': 'Pin topic to top',
			'k_15wcgna': 'Ended successfully',
			'k_15wo7xu': 'Pinned to top successfully',
			'k_002s934': 'Topic',
			'k_18g3zdo': 'Tencent Cloud · Chat',
			'k_1m8vyp0': 'New contacts',
			'k_0elz70e': 'Group chats',
			'k_18tb4mo': 'No contact',
			'k_18nuh87': 'Contact us',
			'k_1uf134v': 'To provide feedback or suggestions, join our QQ group at 788910197.',
			'k_0xlhhrn': 'Online time: 10 AM to 8 PM, Mon through Fri',
			'k_17fmlyf': 'Clear chat',
			'k_0dhesoz': 'Unpin from top',
			'k_002sk7x': 'Pin to top',
			'k_0gmpgcg': 'No conversation',
			'k_002tu9r': 'Performance',
			'k_1tmcw5c': 'Complete your topic title',
			'k_1cnmslk': 'A tag must be selected',
			'k_0z3ytji': 'Topic created successfully',
			'k_1a8vem3': 'Creator exception',
			'k_0eskkr1': 'Select a discussion forum',
			'k_0d7plb5': 'Create topic',
			'k_144t0ho': '---- Related discussions ----',
			'k_0pnz619': 'Enter the topic title',
			'k_136v279': '+ Tag (add at least one tag)',
			'k_04hjhvp': 'Discussion forum parameter exception',
			'k_002r79h': 'All',
			'k_03ejkb6': 'Joined',
			'k_172tngw': 'Topic (disconnected)',
			'k_0rnmfc4': 'No topic in the discussion forum',
			'k_1pq0ybn': 'You haven\'t joined any topic yet',
			'k_0bh95w0': 'Failed to join the topic due to network disconnection',
			'k_002twmj': 'Group chat',
			'k_09kalj0': 'Clear chat history',
			'k_18qjstb': 'Transfer group owner',
			'k_14j5iul': 'Delete and exit',
			'k_0jtutmw': 'You will not be able to receive messages from this group chat after you exit',
			'k_08k00l9': 'Loading…',
			'k_197r4f7': 'Tencent service connected successfully',
			'k_1s5xnir': 'Failed to initialize the Chat SDK',
			'k_15bxnkw': 'Network connection lost',
			'k_002r09z': 'Channels',
			'k_003nvk2': 'Chats',
			'k_1jwxwgt': 'Connecting…',
			'k_03gm52d': 'Contacts',
			'k_003k7dc': 'Me',
			'k_14yh35u': 'Log in',
			'k_0st7i3e': 'Try our features such as group chat and voice/video call',
			'k_0cr1atw': 'Chinese mainland',
			'k_0jsvmjm': 'Enter your mobile number',
			'k_1lg8qh2': 'Incorrect mobile number format',
			'k_03jia4z': 'No network connection',
			'k_007jqt2': 'Verification code sent successfully',
			'k_1t2zg6h': 'Image verification failed',
			'k_1a55aib': 'Verification code exception',
			'k_16r3sej': 'Country/Region',
			'k_15hlgzr': 'Select your country code',
			'k_1bnmt3h': 'Please search in English',
			'k_003kv3v': 'Search',
			'k_03fei8z': 'Mobile number',
			'k_03aj66h': 'Verification code',
			'k_1m9jtmw': 'Enter the verification code',
			'k_0y1wbxk': 'Send',
			'k_0orhtx0': ' Privacy Agreement ',
			'k_00041m1': 'and',
			'k_0opnzp6': ' User Agreement ',
			'k_161ecly': 'Network unavailable',
			'k_11uz2i8': 'Reconnect network',
			'k_1vhzltr': 'Tencent Cloud Chat',
			'k_0j433ys': 'Tencent Cloud TRTC',
			'k_12u8g8l': 'Disclaimer',
			'k_1p0j8i3': 'This is a test product provided by Tencent Cloud. It is for trying out features, but not for commercial use. To follow regulatory requirements of the authority, voice and video-based interactions performed via Tencent will be recorded and archived throughout the whole process. It is strictly prohibited to disseminate via Tencent any pornographic, abusive, violent, political and other noncompliant content.',
			'k_0k7qoht': 'Accept all friend requests',
			'k_0gyhkp5': 'Require approval for friend requests',
			'k_121ruco': 'Reject all friend requests',
			'k_003kfai': 'Unknown',
			'k_1kvyskd': 'Modification failed due to network disconnection',
			'k_1wmkneq': 'Require approval',
			'k_1eitsd0': 'About Tencent Cloud Chat',
			'k_1919d6m': 'Privacy Policy',
			'k_16kts8h': 'Log out',
			'k_129scag': 'Friend deleted successfully',
			'k_094phq4': 'Failed to add the friend',
			'k_13spdki': 'Send message',
			'k_0h22snw': 'Voice call',
			'k_0h20hg5': 'Video call',
			'k_1666isy': 'Delete friend',
			'k_0r8fi93': 'Friend added successfully',
			'k_02qw14e': 'Friend request sent',
			'k_0n3md5x': 'The current user has been blocked',
			'k_14c600t': 'Modify remarks',
			'k_1f811a4': 'Allows only digits, letters and underscores',
			'k_11z7ml4': 'Profile',
			'k_0003y9x': 'None',
			'k_1679vrd': 'Add as friend',
			'k_03ibg5h': 'Mon',
			'k_03i7hu1': 'Tue',
			'k_03iaiks': 'Wed',
			'k_03el9pa': 'Thu',
			'k_03i7ok1': 'Fri',
			'k_03efxyg': 'Sat',
			'k_03ibfd2': 'Sun',
			'k_003ltgm': 'Location',
			'k_04dqh36': 'No new contact',
			'k_0mnxjg7': 'Welcome to Tencent Cloud Chat. To protect the security of your personal information, we have updated the Privacy Policy, mainly improving the specific content and purpose for user information collection and adding the use of third-party SDKs.',
			'k_1545beg': 'Please tap ',
			'k_11x8pvm': 'and read them carefully. If you agree to the content, tap "Accept and continue" to start using our product and service.',
			'k_17nw8gq': 'Accept and continue',
			'k_1nynslj': 'Reject and quit',
			'k_1j91bvz': 'Let TUIKit pick a profile photo for you?',
			'k_0wqhgor': 'Personal information collection list',
			'k_12rfxml': 'Third-party information sharing list',
			'k_131g7q4': 'Deregister account',
			'k_03fel2u': 'Version',
			'k_1ajt0b1': 'Failed to get the current location',
			'k_0lhm9xq': 'Search initiated successfully',
			'k_0fdeled': 'Failed to initiate the search',
			'k_1yh0a50': 'mapDidLoad - The map has been loaded',
			'k_16758qw': 'Add friend',
			'k_0elt0kw': 'Add group chat',
			'k_0s3p3ji': 'No blocked users',
			'k_02slfpm': ({required Object errorMessage}) => 'Error: $errorMessage',
			'k_1m8zuj4': 'Select contact',
			'k_0vwtop2': ({required Object getMsg}) => 'Message obtained: $getMsg',
			'k_0upijvs': ({required Object message}) => 'Failed to get the discussion forum list: $message',
			'k_0v5hlay': ({required Object message}) => 'Failed to create the topic: $message',
			'k_0em28sp': 'No group chat',
			'k_0owk5ss': ({required Object failedReason}) => 'Login failed: $failedReason',
			'k_0glj9us': 'New Chat',
			'k_1631kyh': 'Create work group',
			'k_1644yii': 'Create public group',
			'k_1fxfx04': 'Create meeting group',
			'k_1cnkqc9': 'Create voice-video group',
			'k_1mw45lz': ({required Object errorReason}) => 'Login failed: $errorReason',
			'k_0epvs61': 'Change skin',
			'k_002ri2g': 'Log in',
			'k_1o7lf2y': ({required Object errorMessage}) => 'Server error: $errorMessage',
			'k_118l7sq': ({required Object requestErrorMessage}) => 'Request error: $requestErrorMessage',
			'k_003nfx9': 'Deep',
			'k_003rvjp': 'Light',
			'k_003rtht': 'Bright',
			'k_003qxiw': 'Fantasy',
			'k_0s5zoi3': ({required Object option1}) => 'Error: $option1',
			'k_0i8egqa': ({required Object option8}) => 'Message obtained: $option8',
			'k_0pokyns': ({required Object option8}) => 'Failed to get the discussion forum list: $option8',
			'k_1y03m8a': ({required Object option8}) => 'Failed to create the topic: $option8',
			'k_1v6uh9c': ({required Object option8}) => 'Login failed: $option8',
			'k_0t5a9hl': ({required Object option1}) => 'Login failed: $option1',
			'k_0k3uv02': ({required Object option8}) => 'Server error: $option8',
			'k_1g9o3kz': ({required Object option8}) => 'Request error: $option8',
			'k_10s6v2i': ' Information Collection Statement ',
			'k_0pasxq8': ' Information Sharing Statement ',
			'k_14cahuz': 'About Tencent Cloud · Chat',
			'k_0llnalm': 'SDK Version',
			'k_13dyfii': 'APP Version',
			'k_12h52zh': 'Privacy Policy',
			'k_0fxhhwb': 'User Agreement',
			'k_18z2e6q': 'APP Tencent Cloud · Chat(\'this product\') is a test product provided by Tencent Cloud and Tencent Cloud enjoys the copyright and ownership of this product. This product is only used for functional experience and must not be used for any commercial purposes.In order to comply with the regulatory requirements of relevant departments the voice and video interactions of this product are archived throughout the entire voice and video interactions. Any pornography,abusive,violent and politically related content is strictly prohibited during use.',
			'k_0zu7dd7': 'Personal Information Collected',
			'k_0mcqhgh': 'Information Shared with Third Parties',
			'k_12eqaty': 'Confirm to deregister account',
			'k_0ziqsr6': 'Account deregistered successfully',
			'k_002qtgt': 'Deregister Account',
			'k_0rvdu91': ({required Object option1}) => 'After deregister this account, you will be unable to use it, and the related data will be permanently deleted. Current account: $option1',
			'k_15d22qk': 'Deregister Account',
			'k_036uv3f': 'Tencent Cloud · Chat',
			'k_167916k': 'WeChat contacts',
			'k_03euwr1': 'Moments',
			'k_0cxccci': 'invites you to a video call',
			'k_06lhh4b': 'invites you to a voice call',
			'k_1ywo9ut': 'Tencent Cloud · Chat is developed based on QQ messaging module. Chat, conversation, group, data management and LVB on-screen comments can be easily implemented by Chat SDK. Also, connecting with other products such as whiteboards through signaling messages is supported. We can fully covering your business scenarios. Our Chat SDK can support major platforms and Mini Program, to meet communication needs.',
			'k_0ios26v': 'WeChat is not detected',
			'k_1jg6d5x': ' Summary of Privacy Policy ',
			'k_0selni4': ' Privacy Policy ',
			'k_003r6vf': 'Log in',
			'k_03f2zbs': 'Share to ',
			'k_0cfkcaz': 'Chat Message',
			'k_1rmkb2w': 'New Chat Message',
			'k_1lg375c': 'New Chat Message Remind',
			'k_1t0akzp': ({required Object option1}) => 'After deregister this account, you will be unable to use it, and the related data will be permanently deleted. Current account: $option1',
			'k_1699p6d': 'Tencent Building',
			'k_1ngd60h': 'No. 10000 Shennan avenue, Shenzhen',
			'k_1na29vg': 'Location messages is not supported in DEMO temporarily',
			'k_1xmms9t': 'Request to Join Group',
			'k_0dla4vp': 'To provide feedback or suggestions,\n please join our QQ group at',
			'k_1odrjd1': 'Online time: 10 AM to 8 PM, Mon through Fri',
			'k_1bh903m': 'Copied successfully',
			'k_16264lp': 'Copy group number',
			'k_18ger86': 'Tencent Cloud Chat',
			'k_1vd70l1': 'Chat SDK serving hundreds of millions of QQ users',
			'k_036phup': 'Tencent Cloud Chat',
			'k_0gfsln9': 'Information modified',
			'k_0ow4akh': 'Please configure Baidu AK according to the README guidelines of Demo to experience the location messaging capability of DEMO.',
			'k_1kzh3lo': 'Please follow the guidelines of this document to https://docs.qq.com/doc/DSVliWE9acURta2dL to quickly experience location messaging capabilities.',
			'k_161zzkm': 'Please enter a User ID',
			'k_1veosyv': 'Please config the secret KEY in the environment variable',
			'k_03exdnb': 'User ID',
			'k_16kquu8': 'Current path',
			'k_0fbvuqs': 'Copy',
			'k_16j153h': 'Tencent Cloud Chat APP ("this APP") is a product provided by Tencent Cloud aims of demonstration, which enjoys the copyright and ownership of this APP. This APP is for functional experience only and must not be used for any commercial purpose. It is strictly forbidden to spread any illegal content such as pornography, abuse, violence and terrorism, politics and so on.',
			'k_13ghyf8': '[Security Reminder] This APP is only for experiencing the features of Tencent Cloud Chat, and cannot be used for any other purposes.',
			'k_0gt6cro': 'Complain here',
			'k_03595fk': ({required Object option1}) => ' and $option1 more',
			'k_1gpzgni': ({required Object option2}) => 'group with $option2 people',
			'k_02lfg57': 'New Group Chat',
			'k_17ifd8i': 'Welcome to Tencent Cloud Chat SDK and TUIKit on Flutter',
			'k_1f0ms23': 'Message read status',
			'k_1c0x9ha': 'Determines if the reading status shows for your messages and whether others can know about if you read.',
			'k_1dzhdr5': 'Online status',
			'k_0mwsniq': 'Determines if the online status shows for you contacts or friends.',
			'k_0f7h6ay': 'Connection failed',
			'k_0wreawq': 'Map picker is not currently available on Web, please try it by the mobile app.',
			'k_03c56co': 'Not provide',
			'k_1klqdh1': 'Letters, numbers, underscores only',
			'k_03el5lp': 'Not Specified',
			'k_0554lam': 'Work Group',
			'k_1hyz1ua': 'Public Group',
			'k_1s8hjin': 'Meeting Croup',
			'k_16ejs8f': 'AVChatRoom',
			'k_1rqdzbh': 'Community',
			'k_1aue1b6': 'Users can join the group only after being invited by group members. The invitation does not need to be accepted by the invitee or approved by the group owner.',
			'k_0uldek7': 'The group owner can designate group admins. To join the group, a user needs to search for the group ID and send a request, and the request needs to be approved by the group owner or an admin before the user can join the group.',
			'k_1nv4w25': 'Allows users to join and leave freely and view historical messages sent before they join the group. Meeting groups are ideal for scenarios such as voice/video conferencing and online education.',
			'k_1wbmoof': 'Allows users to join and exit freely, supports an unlimited number of members, and does not store message history. AVChatRoom can be used with Cloud Streaming Services to support on-screen comment chat scenarios.',
			'k_11mlyaa': 'A community group allows users to join and exit freely, supports up to 100,000 members, and stores message history. To join the group, a user needs to search for the group ID and send an application, and the application does not need to be approved by an admin before the user can join the group.',
			'k_0ylgdrb': 'The Demo of Community is under construction, and will be available later',
			'k_0elsjm2': 'Create Group',
			'k_1iw4gdk': 'Allows all',
			'k_0i5ffqf': 'Need verification',
			'k_111mgqj': 'Forbid all requests',
			'k_03go2lu': 'Not specified',
			'k_15zb99m': 'Methods for adding me',
			'k_1llp7tu': 'User not found',
			'k_0tbyqyb': 'Loading…',
			'k_0td1p3f': 'Saving…',
			'k_1ui0gai': 'Search for those contents',
			'k_1loix7s': ({required Object groupType}) => 'Group Type: $groupType',
			'k_1uaov41': 'Search Chat History',
			'k_03agld7': 'Group Tips',
			'k_002wkr3': 'Translate',
			'k_13g4hxv': 'Translate successfully',
			'k_003mmoz': 'Rocket',
			'k_003nogx': 'Airplane',
			'k_003pjj6': 'Crown',
			'k_000340k': 'Flower',
			'k_0cv8ngo': ({required Object option1}) => 'send out $option1',
			'k_03a2zjl': 'send gifts',
			'k_0003yq8': '',
			'k_13k5228': 'liked the live room',
			'k_1k0rrvn': 'Say something...',
			'k_13jzi5y': 'enter the live room',
			'k_14asoqo': 'Unsubscribe',
			'k_003ohwe': 'Subscribe',
			'k_1h33pzv': ({required Object option1}) => '$option1 Fans |',
			'k_07skbgr': ({required Object option2}) => ' $option2  Subscribe',
			'k_1c99nb3': ({required Object option1}) => '$option1 W+',
			'k_19mfrrb': 'Online audience',
			'k_13m65um': 'Audience information',
			'k_19kj6te': ({required Object option1}) => '$option1 likes',
			'k_1qqgjra': ({required Object option3}) => '$option3 new messages',
			'k_0uubyjr': 'New Messages',
			'k_0kg1wsx': 'Choose Group Type',
			'k_003m6xh': 'Settings',
			'k_18nszwl': 'About Us',
			'k_003txiw': 'About',
			'k_12fp4oc': 'Official Website',
			'k_1391sy5': 'Code once, deploy to all platforms',
			'k_002vu95': 'Welcome',
			'k_0o6nt4d': 'Read and agree ',
			'k_12l2415': 'all the terms and conditions',
			'k_0rcqou9': 'Copyright © 2013-2023 Tencent Cloud. All Rights Reserved.',
			'k_003lmhx': 'Groups',
			'k_1s251fa': 'Contacts & Groups',
			'k_0cjp3hx': 'Please choose contacts or groups',
			'k_12veoax': 'Channel: ',
			'k_002rfh9': 'International',
			'k_0864lq3': 'If there\'s anything unclear or you have more ideas, feel free to contact us!',
			'k_12625cy': 'Enter Group',
			'k_131lvxd': 'My Account',
			'k_002qep7': 'Interface',
			'k_002vbyp': 'Appearance',
			'k_16owrwc': 'Light',
			'k_01zair9': 'Dark (Coming soon)',
			'k_002skx2': 'Theme',
			'k_002wzvs': 'Language',
			'k_002woft': 'English',
			'k_129eldp': 'Chinese, Traditional',
			'k_129ekqk': 'Chinese, Simplified',
			'k_002whil': 'Japanese',
			'k_002wqld': 'Korean',
			'k_003is6v': 'General',
			'k_12s2mfc': 'Details',
			'k_12fsjye': 'Websites',
			'k_16uejmj': 'Me',
			'k_0dtyory': 'Feedback',
			'k_03oy6z4': 'All SDKs',
			'k_03bh54n': 'Source Code',
			'k_0s3sgel': 'Unblocked',
			'k_16as7eq': 'Message Reaction',
			'k_003s12u': 'Reply',
			'k_003s38r': 'More',
			'k_003molk': 'Sticker',
			'k_165bbw6': 'Message History',
			'k_13sqc0z': 'Clear Messages',
			'k_0glns86': 'Delete Conversation',
			'k_13s99rx': 'Clear Messages',
			'k_11vsa3j': 'Leave',
			'k_11vvszp': 'Disband',
			'k_15i9w72': 'Administrator',
			'k_0p3espj': 'Ser Remark',
			'k_118sw9v': 'Search',
			'k_1xn4cn2': 'Runtime detection',
			'k_0sy25ey': 'Please install Microsoft Edge WebView2 runtime environment before using this sample app.',
			'k_0g4tlsb': 'Download',
			'k_13ozr8k': 'Not available',
			'k_16yiku8': 'Local search is not available on Web. Please use Mobile App or Desktop.',
			'k_003lz6t': 'conversation',
			'k_1xf4yre': ({required Object option1}) => 'Send to $option1',
			'k_003por5': 'Screenshot',
			'k_0c67rdb': 'Allow multiple selections',
			'k_11lav8q': 'Anonymous poll',
			'k_137cjfq': 'Show the results',
			'k_0e3jces': 'Enter options',
			'k_0dcbhiz': 'Add option',
			'k_003r4qf': 'Publish',
			'k_1xa5q8q': 'Enter poll topic',
			'k_003nv7m': '',
			'k_002ym5d': ' polled, ',
			'k_003pfxt': '',
			'k_0fxdch1': 'Poll plugin not initialized, please initialize first.',
			'k_1lzoopr': 'Not a poll message, please check.',
			'k_03ahybu': 'Polled',
			'k_11lamu8': 'Poll now',
			'k_0b9h7nq': 'Poll ended',
			'k_0c7zem1': 'Send again',
			'k_11l1qvo': 'End poll',
			'k_0z314c0': '[Multiple choice]',
			'k_0z2zcm7': '[Single choice]',
			'k_0y8ap8v': '[Public]',
			'k_0y4cs5n': '[Private]',
			'k_0y6agtt': '[Anonymous]',
			'k_0y68wmo': '[Real name]',
			'k_1pssgjf': ({required Object option1}) => 'Expected: $option1',
			'k_0x9zkqf': ({required Object option2}) => 'Polled: $option2',
			'k_09ikyqj': 'View all options',
			'k_0h2jp2z': ({required Object option1}) => '$option1 polled',
			'k_0y2zr3y': '[Poll]',
			'k_11lci1l': 'Create poll',
			'k_003l988': 'Poll',
			'k_1rw7s82': ' to access your album to send videos.',
			'k_003rcwm': 'Open',
			'k_1698c42': 'Show in Finder',
			'k_066fxsz': 'Show in Folder',
			'k_0k432y2': 'Unable to send, contains folders.',
			'k_002wb4y': 'Conversation',
			'k_0od4qyh': 'Video Error',
			'k_1cdzld5': 'Product information',
			'k_19qt9y2': 'Service evaluation',
			'k_13s7ltw': 'Card message',
			'k_13ajr25': 'Online customer service',
			'k_0ti5mfz': 'No online customer service available',
			'k_1bfkxg9': 'Transfer of 0KB files is not supported',
			'k_0vvsw7g': 'File processing exception',
			'k_06e224q': '[Message recalled by administrator]',
			'k_1u1mjcl': '[Message recalled]',
			'k_1qcqxea': 'Select Multiple Chats',
			'k_1qgmc20': 'Select a Chat',
			'k_1d8nx6f': 'Open in New Window',
			'k_1hz05ax': 'Downloading original resources, please wait...',
			'k_1fszgep': 'Chat with us on',
			'k_1xtvvs9': 'Professional Official Technical Support',
			'k_0cdljc3': 'Join',
			'k_167dvo3': 'Choose Contact',
			'k_1u1jwb8': 'Telegram',
		};
	}
}

extension on _StringsJa {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'k_1yemzyd': '1件のメッセージ',
			'k_0ylosxn': 'カスタムメッセージ',
			'k_13sajrj': '顔絵文字メッセージ',
			'k_13sjeb7': 'ファイルメッセージ',
			'k_0yd2ft8': 'グループ通知メッセージ',
			'k_13s7mxn': '画像メッセージ',
			'k_13satlt': '位置メッセージ',
			'k_00bbtsx': 'メッセージをまとめて転送',
			'k_13sqwu4': '音声メッセージ',
			'k_13sqjjp': 'ビデオメッセージ',
			'k_1fdhj9g': 'このバージョンではこのメッセージがサポートされていません',
			'k_06pujtm': '任意ユーザからの友達追加を許可',
			'k_0gyhkp5': '要認証',
			'k_121ruco': '任意ユーザからの友達追加を許可しない',
			'k_05nspni': 'カスタムフィールド',
			'k_03fchyy': 'グループのプロフィール画像',
			'k_03i9mfe': 'グループ概要',
			'k_03agq58': 'グループ名',
			'k_039xqny': 'グループ通知',
			'k_003tr0a': 'グループマスター',
			'k_03c49qt': '承認へ',
			'k_002wddw': '発言禁止',
			'k_0got6f7': '発言禁止解除',
			'k_1uaqed6': '[カスタマイズ]',
			'k_0z2z7rx': '[音声]',
			'k_0y39ngu': '[顔絵文字]',
			'k_0y1a2my': '[画像]',
			'k_0z4fib8': '[ビデオ]',
			'k_0y24mcg': '[位置]',
			'k_0pewpd1': '[チャット履歴]',
			'k_13s8d9p': '不明なメッセージ',
			'k_1c3us5n': '現在のグループでは@全員を使用できません',
			'k_11k579v': '発言にng表現があります',
			'k_003qkx2': 'カレンダー',
			'k_003n2pz': 'カメラ',
			'k_03idjo0': '連絡先',
			'k_003ltgm': '位置',
			'k_02k3k86': 'マイク',
			'k_003pm7l': 'アルバム',
			'k_15ao57x': '写真をアルバムに保存',
			'k_164m3jd': 'ローカルストレージ',
			'k_03r6qyx': 'あなたの許可を得たうえで情報を取得します',
			'k_02noktt': '許可しない',
			'k_00043x4': 'OK',
			'k_003qzac': '昨日',
			'k_003r39d': '一昨日',
			'k_03fqp9o': '日曜日',
			'k_03ibg5h': '月曜日',
			'k_03i7hu1': '火曜日',
			'k_03iaiks': '水曜日',
			'k_03el9pa': '木曜日',
			'k_03i7ok1': '金曜日',
			'k_03efxyg': '土曜日',
			'k_003q7ba': '午後',
			'k_003q7bb': '午前',
			'k_003pu3h': '現在',
			'k_0n9pyxz': 'ユーザが存在しません',
			'k_1bjwemh': 'ユーザidを検索',
			'k_003kv3v': '検索',
			'k_16758qw': '友達を追加',
			'k_0i553x0': '検証情報を入力',
			'k_031ocwx': '備考とグループを入力してください',
			'k_003ojje': '備考',
			'k_003lsav': 'グループ',
			'k_167bdvq': 'マイ友達',
			'k_156b4ut': '友達申請を送信しました',
			'k_002r305': '送信',
			'k_03gu05e': 'チャットルーム',
			'k_03b4f3p': '会議グループ',
			'k_03avj1p': 'パブリックグループ',
			'k_03asq2g': 'ワークグループ',
			'k_03b3hbi': '不明なグループ',
			'k_1loix7s': ({required Object groupType}) => 'グループタイプ：$groupType',
			'k_1lqbsib': 'このグループチャットが存在しません',
			'k_03h153m': 'グループidを検索',
			'k_0oxak3r': 'グループ申請を送信しました',
			'k_002rflt': '削除',
			'k_1don84v': 'オリジナルメッセージを特定できません',
			'k_003q5fi': 'コピー',
			'k_003prq0': '転送',
			'k_002r1h2': '複数選択',
			'k_003j708': '引用',
			'k_003pqpr': '取消し',
			'k_03ezhho': 'コピーしました',
			'k_11ctfsz': '未実装',
			'k_1hbjg5g': '[グループのシステムメッセージ]',
			'k_03tvswb': '[不明なメッセージ]',
			'k_155cj23': '1件のメッセージを取り消しました。',
			'k_0gapun3': '再編集',
			'k_1aszp2k': 'このメッセージを再送しますか？',
			'k_003rzap': 'OK',
			'k_003nevv': 'キャンセル',
			'k_0003z7x': 'あなた',
			'k_002wfe4': '既読',
			'k_002wjlg': '未読',
			'k_0h1ygf8': '通話を開始',
			'k_0h169j0': '通話をキャンセル',
			'k_0h13jjk': '通話を受け入れる',
			'k_0h19hfx': '通話を拒否',
			'k_0obi9lh': '不在着信',
			'k_001nmhu': 'その他のアプリで開く',
			'k_1ht1b80': '受信中',
			'k_105682d': '画像の読込みに失敗しました',
			'k_0pytyeu': '画像を保存しました',
			'k_0akceel': '画像の保存に失敗しました',
			'k_003rk1s': '保存',
			'k_04a0awq': '[音声メッセージ]',
			'k_105c3y3': 'ビデオの読込みに失敗しました',
			'k_176rzr7': 'チャット履歴',
			'k_0d5z4m5': 'リマインド対象を選択',
			'k_003ngex': '完了',
			'k_1665ltg': '通話を開始',
			'k_003n8b0': '撮影',
			'k_003kthh': '写真',
			'k_003tnp0': 'ファイル',
			'k_0jhdhtp': '送信に失敗しました。ビデオは100MB以内にしてください',
			'k_119ucng': '画像を空にすることはできません',
			'k_13dsw4l': '離してキャンセル',
			'k_0am7r68': '上にスライドして送信をキャンセルします',
			'k_15jl6qw': 'メッセージが短すぎます！',
			'k_0gx7vl6': '長押しして録音',
			'k_15dlafd': '1件ずつ転送',
			'k_15dryxy': 'まとめて転送',
			'k_1eyhieh': '選択したメッセージを削除',
			'k_17fmlyf': 'チャットをクリア',
			'k_0dhesoz': 'ピン留めを解除',
			'k_002sk7x': 'ピン留め',
			'k_003ll77': '下書き',
			'k_03icaxo': 'カスタマイズ',
			'k_1uaov41': 'チャット内容を検索',
			'k_003kfai': '不明',
			'k_13dq4an': '自動承認',
			'k_0l13cde': '管理者の承認',
			'k_11y8c6a': 'グループへの参加を禁止',
			'k_1kvyskd': 'ネットワークに接続していませんので、変更できません',
			'k_16payqf': 'グループへの参加方法',
			'k_0vzvn8r': 'グループ名を変更',
			'k_038lh6u': 'グループ管理',
			'k_0k5wyiy': '管理者を設定',
			'k_0goiuwk': '全員発言禁止',
			'k_1g889xx': '全員発言禁止を有効にすると、グループマスターと管理者のみが発言できます。',
			'k_0wlrefq': '発言を禁止するグループメンバーを追加',
			'k_0goox5g': '発言禁止を設定',
			'k_08daijh': '管理者の権限を取り消しました',
			'k_0k5u935': '管理者を追加',
			'k_03enyx5': 'グループメンバー',
			'k_0h1svv1': 'グループメンバーを削除',
			'k_0h1g636': 'グループメンバーを追加',
			'k_0uj7208': 'ネットワークに接続していませんので、グループメンバーを参照できません',
			'k_0hpukyx': '詳細なグループメンバーを表示',
			'k_0qtsar0': '通知をミュート',
			'k_0ef2a12': 'マイグループ名を変更',
			'k_1aajych': '2～20桁の中国語、英数字、下線を使用してください',
			'k_137pab5': 'マイグループニックネーム',
			'k_0ivim6d': 'グループのお知らせがない',
			'k_03eq6cn': 'グループのお知らせ',
			'k_002vxya': '編集',
			'k_17fpl3y': 'チャットをピン留め',
			'k_03es1ox': 'グループタイプ',
			'k_003mz1i': '許可',
			'k_003lpre': '拒否',
			'k_003qk66': 'プロフィール画像',
			'k_003lhvk': 'ニックネーム',
			'k_003ps50': 'アカウント',
			'k_15lx52z': 'パーソナライズ署名',
			'k_003qgkp': '性別',
			'k_003m6hr': '誕生日',
			'k_0003v6a': '男性',
			'k_00043x2': '女性',
			'k_03bcjkv': '未設定',
			'k_11s0gdz': 'ニックネームを変更',
			'k_0p3j4sd': '中国語、英数字、下線のみを使用できます',
			'k_15lyvdt': 'パーソナライズ署名を変更',
			'k_0vylzjp': 'この人は何も書いていません',
			'k_1hs7ese': 'オンライン後にこれを変更',
			'k_03exjk7': '表示名',
			'k_0s3skfd': 'ブラックリストに追加',
			'k_0p3b31s': '表示名を変更',
			'k_0003y9x': 'なし',
			'k_11zgnfs': 'プロフィール',
			'k_1tez2xl': 'パーソナライズ署名はありません',
			'k_118prbn': 'グローバル検索',
			'k_1m9dftc': 'すべての連絡先',
			'k_0em4gyz': 'すべてのグループチャット',
			'k_002twmj': 'グループチャット',
			'k_09kga0d': '詳細なチャット履歴',
			'k_09khmso': '関連するチャット履歴',
			'k_0vjj2kp': 'グループチャットのチャット履歴',
			'k_003n2rp': '選択',
			'k_03ignw6': 'すべての人',
			'k_03erpei': '管理者',
			'k_0qi9tno': 'グループマスター、管理者',
			'k_1m9exwh': '最近の連絡先',
			'k_119nwqr': '入力してください',
			'k_0pzwbmg': 'ビデオを保存しました',
			'k_0aktupv': 'ビデオの保存に失敗しました',
			'k_1qbg9xc': ({required Object option8}) => '$option8は ',
			'k_1wq5ubm': ({required Object option7}) => '$option7が変更',
			'k_0y5pu80': ({required Object option6}) => '$option6がグループチャットを離れました',
			'k_0nl7cmd': ({required Object option5}) => '$option5をグループに招待しました',
			'k_1ju5iqw': ({required Object option4}) => '$option4がグループから削除されました',
			'k_1ovt677': ({required Object option3}) => 'ユーザ$option3がグループチャットに参加しました',
			'k_0k05b8b': ({required Object option2}) => '$option2が',
			'k_0wm4xeb': ({required Object option2}) => 'システムメッセージ$option2',
			'k_0nbq9v3': ({required Object option2}) => '通話時間：$option2',
			'k_0i1kf53': ({required Object option2}) => '[ファイル] $option2',
			'k_1gnnby6': ({required Object option2}) => 'あなたの$option2にアクセスしようとします',
			'k_1wh4atg': ({required Object option2}) => '$option2分前',
			'k_07sh7g1': ({required Object option2}) => '昨日$option2',
			'k_1pj8xzh': ({required Object option2}) => 'マイユーザid：$option2',
			'k_0py1evo': ({required Object option2}) => 'パーソナライズ署名：$option2',
			'k_1kvj4i2': ({required Object option2}) => '$option2がメッセージを取り消しました',
			'k_1v0lbpp': ({required Object option2}) => '「$option2」ではこのようなファイルを開くことができません。他のアプリで開いてください',
			'k_0torwfz': ({required Object option2}) => '選択完了$option2',
			'k_0i1bjah': ({required Object option1}) => '$option1がメッセージを取り消しました',
			'k_1qzxh9q': ({required Object option3}) => '通話時間：$option3',
			'k_0wrgmom': ({required Object option1}) => '[音声通話]：$option1',
			'k_06ix2f0': ({required Object option2}) => '[ビデオ通話]：$option2',
			'k_08o3z5w': ({required Object option1}) => '[ファイル] $option1',
			'k_0ezbepg': ({required Object option2}) => '$option2 [誰かが@私をメンションしました]',
			'k_1ccnht1': ({required Object option2}) => '$option2 [@すべての人がメンションされました]',
			'k_1k3arsw': ({required Object option2}) => '管理者 ($option2/10)',
			'k_1d4golg': ({required Object option1}) => 'グループメンバー($option1人)',
			'k_1bg69nt': ({required Object option1}) => '$option1人',
			'k_00gjqxj': ({required Object option1}) => 'パーソナライズ署名：$option1',
			'k_0c29cxr': ({required Object option1}) => '$option1件のメッセージ',
			'k_1twk5rz': ({required Object option1}) => '$option1とのチャット履歴',
			'k_1vn4xq1': ({required Object adminMember}) => '$adminMemberを管理者から削除',
			'k_0e35hsw': '写真/ビデオ送信、ビデオ通話を使用するには、カメラへのアクセスを許可する必要があります。',
			'k_0dj6yr7': '音声メッセージ送信、ビデオ撮影、音声/ビデオ通話を使用するには、マイクへのアクセスを許可する必要があります。',
			'k_003qnsl': 'ストレージ',
			'k_0s3rtpw': 'アルバム中の画像やビデオを選択し友達に送信する、または、デバイスに何かを保存するには、デバイス上の写真やメディアコンテンツへのアクセスを許可する必要があります。',
			'k_0tezv85': ({required Object option2}) => ' $option2の取得を要求',
			'k_002rety': '権限',
			'k_18o68ro': '次の権限を付与する必要があります',
			'k_1onpf8u': ' カメラへのアクセス権限。写真/ビデオの撮影やビデオ通話などの機能を使用することに必要です。',
			'k_17irga5': ' マイクへのアクセス権限。音声メッセージージの送信、ビデオの撮影、音声/ビデオ通話などの機能を使用することに必要です。',
			'k_0572kc4': ' 写真へのアクセス権限。画像やビデオの送信などの機能を使用することに必要です。',
			'k_0slykws': ' アルバムへの書込み権限。画像やビデオの保存などの機能を使用することに必要です。',
			'k_119pkcd': ' ファイル読取り・書込み権限。チャットで画像を表示または選択する機能やファイルを送信する機能などを使用することに必要です。',
			'k_0gqewd3': '後にし魔性',
			'k_03eq4s1': '有効化へ',
			'k_0nt2uyg': '最新の場所に戻る',
			'k_04l16at': ({required Object option1}) => '$option1件の新しいメッセージ',
			'k_13p3w93': '誰かが@私をメンションしました',
			'k_18w5uk6': '@すべての人がメンションされました',
			'k_0jmujgh': '他のファイルを受信中',
			'k_12s5ept': 'メッセージの詳細',
			'k_0mxa4f4': ({required Object option1}) => '$option1人既読',
			'k_061tue3': ({required Object option2}) => '$option2人未読',
			'k_18qjstb': 'グループマスターの権限を譲渡',
			'k_0on1aj2': ({required Object option2}) => '$option2件のメッセージが@私をメンションしました',
			'k_09j4izl': '[誰かが@私をメンションしました] ',
			'k_1oqtjw0': '[@すべての人がメンションされました] ',
			'k_1x5a9vb': ({required Object option1}) => '私は：$option1',
			'k_14n31e7': 'グループ参加申請',
			'k_08nc5j1': ({required Object option1}) => 'グループタイプ：$option1',
			'k_1josu12': ({required Object option1}) => '$option1件のグループ参加申請',
			'k_0n2x5s0': ({required Object option2}) => '認証メッセージ：$option2',
			'k_03c1nx0': '同意しました',
			'k_03aw9w8': '拒否しました',
			'k_038ryos': '処理へ',
			'k_0gw8pum': 'グループ参加申請',
			'k_1gcvfrj': '備考を入力してください',
			'k_002v9zj': 'OK',
			'k_10oqrki': 'タップして写真を撮る',
			'k_0f8b3ws': '読込みに失敗しました',
			'k_11cm5lm': '手動フォーカス',
			'k_002uzrd': 'プレビュー',
			'k_003qkn3': '録画',
			'k_003k6a7': '写真を撮る',
			'k_0bqpqco': '撮影ボタン',
			'k_1626ozl': '録画を停止',
			'k_003lvmu': '前面',
			'k_003lued': '背面',
			'k_003lwzh': '外付け',
			'k_002qzi3': '閉じる',
			'k_003pufb': '自動学習',
			'k_0apm0ze': '撮影時フラッシュを有効にする',
			'k_157zog5': '常にフラッシュを有効にする',
			'k_0cfyqhy': ({required Object option1}) => '$option1画面プレビュー',
			'k_0phctlz': ({required Object option2}) => 'フラッシュモード：$option2',
			'k_02vfqe0': ({required Object option3}) => '$option3カメラに切り替える',
			'k_0f0y9ex': 'メッセージが短すぎます！',
			'k_0ln70tk': 'urlにアクセスできません',
			'k_11a3jdv': 'タップして写真を撮る。長押しして録画する',
			'k_1k18miv': 'グループ退出ライフサイクル関数を渡し、トップページまたは他のページに戻るナビゲーションメソッドを提供してください',
			'k_0gmwbnd': '全員発言禁止中',
			'k_0got2zr': '発言が禁止されています',
			'k_0y9jck8': 'Search Barをカスタマイズし、クリックしてジャンプする処理を実装する必要があります',
			'k_0yum3tv': 'カスタムエリアを使用する場合、該当するコンポーネントをprofilewidgetbuilderに渡してください',
			'k_09kalj0': 'チャット履歴をクリア',
			'k_14j5iul': '削除して退出',
			'k_125ru1w': 'グループを解散',
			'k_0jtutmw': '退出後に、このグループのチャットメッセージを受信しなくなります',
			'k_0jtzmqa': '解散後に、このグループのチャットメッセージを受信しなくなります',
			'k_0r8fi93': '友達を追加しました',
			'k_02qw14e': '友達申請を送信しました',
			'k_0n3md5x': 'ユーザがブラックリストに登録されています',
			'k_094phq4': '友達の追加に失敗しました',
			'k_129scag': '友達を削除しました',
			'k_129uzfn': '友達の削除に失敗しました',
			'k_1666isy': '友達をクリア',
			'k_1679vrd': '友達として追加',
			'k_0h18bbi': '通話を終了',
			'k_154q2hn': '不在着信',
			'k_1mnjtnc': '相手が拒否しました',
			'k_0l0mysn': 'エラーが発生しました。',
			'k_03fn6rg': '応答なし',
			'k_003luo3': 'ビジー',
			'k_154jvfi': '強制的にオフラインにされました',
			'k_1sp7jp6': '通話をキャンセルしました',
			'k_1045haa': '承諾を待機中...',
			'k_1gq7jv7': 'あなたと通話しようとしています...',
			'k_003m7ey': '拒否',
			'k_03ectox': 'スピーカー',
			'k_003q2a4': '通話',
			'k_03ftugq': 'カメラ',
			'k_10setgr': '音声通話に切り替える',
			'k_1g7i9jz': 'カメラに切り替える',
			'k_15ml1ls': '応答待ち',
			'k_0nj9x9s': 'グループ通話に招待されました',
			'k_1vtto3l': '通話に参加している人:',
			'k_0h147mx': '通話中',
			'k_0j6aylo': ({required Object option1}) => '通話時間：$option1',
			'k_1fu9ahv': '全員発言禁止中',
			'k_1ualc52': '相手が持ってきたデータを見てみよう',
			'k_0szluvp': '相手のオンライン状態を設定',
			'k_0f4rnf8': 'このユーザはすでに友達として追加されています',
			'k_1tdkom4': 'あなたはすでにグループメンバーになっています',
			'k_1p2lyuz': '相手が入力中...',
			'k_1g8wfpy': ({required Object option1}) => '...計$option1人',
			'k_12rv9vw': '応答の詳細',
			'k_0n9p7g8': 'グループは存在しません',
			'k_1tdh5vn': 'あなたはグループメンバーではありません',
			'k_0h1q57v': 'グループメンバーはありません',
			'k_0y5drq1': ({required Object option1}) => '[詳細を表示 >>]($option1)',
			'k_03pjp61': '[顔絵文字メッセージ]',
			'k_1jpvzul': '[カスタムメッセージ]',
			'k_03u3bh1': '[ファイルメッセージ]',
			'k_1odsnsw': '[グループメッセージ]',
			'k_03sel4t': '[画像メッセージ]',
			'k_03sfw3r': '[位置メッセージ]',
			'k_03xpuwq': '[メッセージをまとめる]',
			'k_07ycxwo': '[エレメントはありません]',
			'k_03rc9vz': '[テキストメッセージ]',
			'k_046uopf': '[ビデオメッセージ]',
			'k_0ehmsun': 'デバイスのストレージ容量が不足しています。ユーザーエクスペリエンスを確保するために、不要なデータをクリアしてください',
			'k_003kmos': '画像',
			'k_002s86q': 'ビデオ',
			'k_06bk5ei': 'ビデオメッセージはmp4フォーマットのみをサポートします',
			'k_13opfxf': 'Web側では検索がサポートされていません',
			'k_1i0o0y2': '現在、対応OSはAndroid/iOSのみです',
			'k_045dtzl': ({required Object option1}) => '$option1とのチャット履歴',
			'k_0t0131u': 'グループプロフィール情報',
			'k_18ok8xz': 'メッセージの受信方法',
			'k_03ax3ks': 'グループプロフィール',
			'k_0sqvoqo': ({required Object option1}) => '$option1を管理者として設定',
			'k_1gbg1v8': ({required Object option1}) => '$option1を管理者から削除',
			'k_17k64g4': 'グループチャットを作成しました。',
			'k_05mn217': 'ステッカープラグインはまだインストールされていません。ステッカーに関連する機能を使用するには、こちらのドキュメントに従ってインストールしてください。https://cloud.tencent.com/document/product/269/70746',
			'k_14j17nz': 'ステッカーはありません',
			'k_1tmlcf0': '新しい着信がありましたが、権限がないため出られません。カメラ/マイクがオンになっていることを確認してください。',
			'k_0fvjexh': 'ダウンロード中...',
			'k_1cdagzz': 'ダウンロード待ちキューに追加されました。他のファイルをダウンロード中です',
			'k_0g4vojc': 'ダウンロードを開始',
			'k_026hiq5': 'メッセージリストを読み込み中',
			'k_0b9q00i': 'テンセントビル/////深セン市南山区深南大道10000番',
			'k_03fw6h1': '深セン市',
			'k_0f7mdn7': '検索に失敗しました',
			'k_158cssa': 'Tencent地図',
			'k_157htdw': 'AMap',
			'k_157im4z': 'Baidu地図',
			'k_157m20e': 'Apple Map',
			'k_1bqk7kl': 'AMapが見つかりませんでした',
			'k_12ba1nv': 'Tencent地図が見つかりませんでした',
			'k_1dz8sci': 'Baidu地図が見つかりませんでした',
			'k_0f7fvky': '開けませんでした',
			'k_1l2v0we': 'テンセントビル内、招商銀行信息研開ビルと約18メートル離れているところ',
			'k_10o8gk2': '場所を検索',
			'k_10o86v7': '不明な場所',
			'k_0elt0kw': 'グループチャットを追加',
			'k_03f15qk': 'ブラックリスト',
			'k_0s3p3ji': 'ブラックリストはありません',
			'k_0uc5cnb': '内部テスト中のため、チャネルの作成はサポートされていません。',
			'k_0s5ey0o': 'Tencent Real-Time Communication (TRTC)',
			'k_03gpl3d': 'こんにちは',
			'k_0352fjr': 'ネットワークに接続していないため、チャネルに入ることができませんでした',
			'k_0d7n018': 'トピックを終了',
			'k_0d826hk': 'トピックをピン留め',
			'k_15wcgna': '終了しました',
			'k_15wo7xu': 'ピン留めしました',
			'k_02slfpm': ({required Object errorMessage}) => 'エラーが発生しました$errorMessage',
			'k_0h22snw': '音声通話',
			'k_0h20hg5': 'ビデオ通話',
			'k_002s934': 'トピック',
			'k_18g3zdo': 'Tencent Cloud Chat',
			'k_1m8vyp0': '新しい連絡先',
			'k_0elz70e': 'マイグループチャット',
			'k_18tb4mo': '連絡先はありません',
			'k_18nuh87': 'お問い合わせ',
			'k_1uf134v': 'フィードバックやアドバイスのために、qqグループ:788910197に参加してください',
			'k_0xlhhrn': '受付時間：月曜日~金曜日の午前10時~午後8時',
			'k_0gmpgcg': 'セッションはありません',
			'k_1m8zuj4': '連絡先を選択',
			'k_002tu9r': 'パフォーマンス',
			'k_0vwtop2': ({required Object getMsg}) => '取得したメッセージ:$getMsg',
			'k_0upijvs': ({required Object message}) => 'フォーラムリストの取得に失敗しました$message',
			'k_1tmcw5c': 'トピックのタイトルを補足してください',
			'k_1cnmslk': 'タグを選択する必要があります',
			'k_0v5hlay': ({required Object message}) => 'トピックの作成に失敗しました$message',
			'k_0z3ytji': 'トピックを作成しました',
			'k_1a8vem3': '作成者エラー',
			'k_0eskkr1': 'フォーラムを選択',
			'k_0d7plb5': 'トピックを作成',
			'k_144t0ho': '---- 関連のディスカッション ----',
			'k_0pnz619': 'トピックのタイトルを入力してください',
			'k_136v279': '+タグ（最低限1つ追加すること）',
			'k_04hjhvp': 'フォーラムパラメータエラー',
			'k_002r79h': 'すべて',
			'k_03ejkb6': '参加済み',
			'k_172tngw': 'トピック（未接続）',
			'k_0rnmfc4': 'このフォーラムにはトピックがありません',
			'k_1pq0ybn': 'いかなるトピックも参加していません',
			'k_0bh95w0': 'ネットワークに接続していないため、トピックへの参加に失敗しました',
			'k_0em28sp': 'グループチャットはありません',
			'k_04dqh36': '新しい連絡先はありません',
			'k_08k00l9': '読み込み中…',
			'k_197r4f7': 'Tencentサービスに接続しました',
			'k_1s5xnir': 'SDKの初始化に失敗しました',
			'k_0owk5ss': ({required Object failedReason}) => 'ログインに失敗しました$failedReason',
			'k_15bxnkw': 'ネットワーク接続が切断されました',
			'k_0glj9us': '通話を開始',
			'k_1631kyh': 'ワークグループを作成',
			'k_1644yii': 'ソーシャルコミュニケーショングループを作成',
			'k_1fxfx04': '会議グループを作成',
			'k_1cnkqc9': 'ライブストリーミンググループを作成',
			'k_002r09z': 'チャネル',
			'k_003nvk2': 'メッセージ',
			'k_1jwxwgt': '接続中...',
			'k_03gm52d': '連絡先',
			'k_003k7dc': 'マイ',
			'k_14yh35u': 'ログイン',
			'k_0st7i3e': 'グループチャット、音声/ビデオ通話などの機能を体験',
			'k_0cr1atw': '中国大陸',
			'k_0mnxjg7': 'Tencent Cloud Chatへようこそ。個人情報を保護するために、『プライバシーポリシー』を更新しました。主な更新内容として、ユーザ情報を収集するにあたっての具体的な収集内容、収集目的の修正と、サードパーティsdkの利用などの内容追加です。',
			'k_1545beg': '次の　',
			'k_0opnzp6': '『利用規約』',
			'k_00041m1': 'と',
			'k_0orhtx0': '『プライバシーポリシー』',
			'k_11x8pvm': 'を読んでください。内容に同意すれば、「同意して続行」をクリックして製品とサービスをご利用ください!',
			'k_17nw8gq': '同意して続行',
			'k_1nynslj': '同意せず終了',
			'k_0jsvmjm': '携帯番号を入力してください',
			'k_1lg8qh2': '携帯番号のフォーマットが正しくありません',
			'k_03jia4z': 'ネットワークに接続していません',
			'k_007jqt2': '認証コードを送信しました',
			'k_1a55aib': '認証コードエラー',
			'k_1mw45lz': ({required Object errorReason}) => 'ログインに失敗しました$errorReason',
			'k_16r3sej': '国/地域',
			'k_15hlgzr': '国番号を選択してください',
			'k_1bnmt3h': '英語で検索してください',
			'k_03fei8z': '携帯番号',
			'k_03aj66h': '認証コード',
			'k_1m9jtmw': '認証コードを入力してください',
			'k_0y1wbxk': '認証コードを取得',
			'k_002ri2g': 'ログイン',
			'k_161ecly': 'ネットワークはありません',
			'k_11uz2i8': 'ネットワークへ再接続',
			'k_1vhzltr': 'Tencent Cloud Chat',
			'k_0j433ys': 'Tencent Real-Time Communication (TRTC)',
			'k_0epvs61': 'スキンを変更',
			'k_12u8g8l': '免責事項',
			'k_1p0j8i3': 'Tencent Cloud Chat（以降、本製品）は、Tencent Cloudが提供するテスト用製品です。本製品の著作権および所有権はTencent Cloudに帰属します。本製品は機能を体験するためのものであり、商用目的で使用することはできません。監督部門の要件を満たすために、本製品を使用し音声またはビデオでやり取りする全過程が記録されます。本製品を利用中に、ポルノ、暴言、暴力・テロ、政治関連など違法なコンテンツの流布は固く禁じられています。',
			'k_0k7qoht': '任意ユーザからの友達追加を許可',
			'k_1j91bvz': 'TUIKitがあなたのプロファイル画像を選択しますか？',
			'k_1wmkneq': '私を友達として追加する時に認証する',
			'k_1eitsd0': 'Tencent Cloud Chatについて',
			'k_1919d6m': 'プライバシーポリシー',
			'k_0wqhgor': '個人情報収集リスト',
			'k_12rfxml': '第三者への情報共有リスト',
			'k_131g7q4': 'アカウントを登録解除',
			'k_03fel2u': 'バーション番号',
			'k_16kts8h': 'ログアウト',
			'k_13spdki': 'メッセージを送信',
			'k_14c600t': '備考を変更',
			'k_1f811a4': '英数字、下線のみを使用できます',
			'k_11z7ml4': '詳細情報',
			'k_1ajt0b1': '現在の位置の取得に失敗しました',
			'k_0lhm9xq': '検索の要求に成功しました',
			'k_0fdeled': '検索の要求に失敗しました',
			'k_1yh0a50': 'mapdidload-地図の読込みが完了しました',
			'k_1t2zg6h': '画像認証コードでの認証に失敗しました',
			'k_03ibfd2': '日曜日',
			'k_1o7lf2y': ({required Object errorMessage}) => 'サーバエラー：$errorMessage',
			'k_118l7sq': ({required Object requestErrorMessage}) => 'リクエストエラー：$requestErrorMessage',
			'k_003nfx9': '沈着',
			'k_003rvjp': '軽やか',
			'k_003rtht': '明るい',
			'k_003qxiw': 'ファンタジー',
			'k_0s5zoi3': ({required Object option1}) => 'エラーが発生しました$option1',
			'k_0i8egqa': ({required Object option8}) => '取得したメッセージ:$option8',
			'k_0pokyns': ({required Object option8}) => 'フォーラムリストの取得に失敗しました$option8',
			'k_1y03m8a': ({required Object option8}) => 'トピックの作成に失敗しました$option8',
			'k_1v6uh9c': ({required Object option8}) => 'ログインに失敗しました$option8',
			'k_0t5a9hl': ({required Object option1}) => 'ログインに失敗しました$option1',
			'k_0k3uv02': ({required Object option8}) => 'サーバエラー:$option8',
			'k_1g9o3kz': ({required Object option8}) => 'リクエストエラー:$option8',
			'k_14cahuz': 'Tencent Cloud Chatについて',
			'k_0llnalm': 'Chat SDKバーション番号',
			'k_13dyfii': 'アプリバーション番号',
			'k_12h52zh': 'プライバシーポリシー',
			'k_0fxhhwb': '利用規約',
			'k_18z2e6q': 'Tencent Cloud Chatは、Tencent Cloudが提供するテスト用製品です。本製品の著作権および所有権はTencent Cloudに帰属します。本製品は機能を体験するためのものであり、商用目的で使用することはできません。本製品を利用中に、ポルノ、暴言、暴力・テロ、政治関連など違法なコンテンツの流布は固く禁じられています。',
			'k_0zu7dd7': '情報収集リスト',
			'k_0mcqhgh': '情報共有リスト',
			'k_12eqaty': 'アカウントを登録解除します',
			'k_0ziqsr6': 'アカウントを登録解除しました',
			'k_002qtgt': '登録解除',
			'k_0rvdu91': ({required Object option1}) => '登録解除後に、このアカウントを使用できなくなり、関連データが削除され復元できません。現在のアカウントid: $option1',
			'k_15d22qk': 'アカウントを登録解除',
			'k_036uv3f': 'Tencent Cloud Chat',
			'k_167916k': 'WeChatの友達',
			'k_03euwr1': 'モーメンツ',
			'k_0cxccci': 'ビデオ通話に招待されました',
			'k_06lhh4b': '音声通話に招待されました',
			'k_1ywo9ut': 'Tencent Cloud Chatは、qqのim機能をベースにして開発され、sdkを導入するだけで、チャット、セッション、グループ、プロファイル管理、ライブストリーミング弾幕などの機能を簡単に統合できます。また、シグナリングメッセージでホワイトボードなど他の製品と連携することで、あらゆる業務向け運用シーンをカバーできます。なお、数多くのプラットフォームのミニプログラムへのアクセスと使用をサポートし、すべてのコミュニケーションニーズを満たします。',
			'k_0ios26v': 'WeChatが見つかりませんでした',
			'k_1jg6d5x': '『プライバシーポリシー概要』',
			'k_0selni4': '『プライバシーポリシー』',
			'k_10s6v2i': '『情報収集リスト』',
			'k_0pasxq8': '『情報共有リスト』',
			'k_003r6vf': 'ログイン',
			'k_03f2zbs': 'へ共有',
			'k_0cfkcaz': 'メッセージプッシュ',
			'k_1rmkb2w': '新しいチャットメッセージをプッシュ',
			'k_1lg375c': '新しいメッセージの着信通知',
			'k_1t0akzp': ({required Object option1}) => '登録解除後に、このアカウントを使用できなくなり、関連データが削除され復元できません。現在のアカウントid: $option1',
			'k_1699p6d': 'テンセントビル',
			'k_1ngd60h': '深セン市深南大道10000番',
			'k_1na29vg': '位置メッセージをメンテナンス中',
			'k_1xmms9t': 'グループ参加申請リスト',
			'k_0dla4vp': 'フィードバックやアドバイスのために、QQグループに参加してください',
			'k_1odrjd1': '受付時間：月曜日~金曜日の午前10時~午後8時',
			'k_1bh903m': 'QQグループ番号をコピーしました',
			'k_16264lp': 'グループ番号をコピー',
			'k_18ger86': 'Tencent Cloud Chat',
			'k_1vd70l1': '数億のqqユーザにサービスを提供するim技術',
			'k_036phup': 'Tencent Cloud Chat',
			'k_0gfsln9': '情報が変更されました',
			'k_0ow4akh': 'demoのreadmeに従って、baidu akを設定し、demoの位置メッセージ機能を体験しましょう',
			'k_1kzh3lo': 'こちらのドキュメントhttps://docs.qq.com/doc/dsvliwe9acurta2dlに従って、位置メッセージ機能を体験しましょう',
			'k_161zzkm': 'ユーザ名を入力してください',
			'k_1veosyv': '環境変数にKeyを書き込む',
			'k_03exdnb': 'ユーザ名',
			'k_16kquu8': '現在のディレクトリ',
			'k_0fbvuqs': 'コピーを開始',
			'k_16j153h': 'Tencent Cloud Chat app（以降、本製品）は、Tencent Cloudが提供するテスト用製品です。本製品の著作権および所有権はTencent Cloudに帰属します。本製品は機能を体験するためのものであり、商用目的で使用することはできません。本製品を利用中に、ポルノ、暴言、暴力・テロ、政治関連など違法なコンテンツの流布は固く禁じられています。',
			'k_13ghyf8': '[注意事項]本製品はTencent Cloud Chatの機能を体験するためのものであり、商談とビジネス開拓の目的で使用することはできません。詐欺の可能性があるため、振込みや懸賞当選などお金の絡む情報に警戒心を持ち、知らない番号に電話をかけないでください。',
			'k_0gt6cro': 'クレームはこちら',
			'k_03595fk': ({required Object option1}) => ' など$option1人',
			'k_1gpzgni': ({required Object option2}) => '$option2人グループ',
			'k_02lfg57': '新しいグループチャット',
			'k_17ifd8i': ' appへようこそ！Tencent Cloud Chatを楽しんでください',
			'k_1f0ms23': 'メッセージの開封状態',
			'k_1c0x9ha': '無効にすると、送受信したメッセージには開封状態がなくなり、相手がメッセージを読んでいるかが分からず、相手もあなたに送信したメッセージが読まれているかが分かりません。',
			'k_1dzhdr5': 'オンライン状態を表示',
			'k_0mwsniq': '無効にすると、セッションリストとアドレス帳で友達のオンライン状態またはオフライン状態の通知が見えなくなります。',
			'k_0f7h6ay': '接続に失敗しました',
			'k_0wreawq': 'ウェブページ版ではbaidu地図のプラグインがサポートされません。位置メッセージの機能を体験するには、携帯端末appのdemoを使用してください。',
			'k_03c56co': '選択しない',
			'k_1klqdh1': '中国語、英数字、下線のみを使用できます',
			'k_03el5lp': '未入力',
			'k_0554lam': '友達ワークグループ(Work)',
			'k_1hyz1ua': '知らない人とのソーシャルグループ(Public)',
			'k_1s8hjin': '一時会議グループ(Meeting)',
			'k_16ejs8f': 'ライブ配信グループ(AVChatRoom)',
			'k_1rqdzbh': 'コミュニティグループ(Community)',
			'k_1aue1b6': '一般WeChatグループのようなものです。作成後に、すでにグループにいる友達のみがグループに招待できます。また、招待された方の承諾またはグループマスターの承認は不要です。',
			'k_0uldek7': 'QQグループのようなものです。作成後に、グループマスターがグループ管理者を指定できます。ユーザはグループidを検索しグループ参加申請を送信した後、グループマスターまたは管理者の承認がないと、グループに参加できません。',
			'k_1nv4w25': '作成後に自由に参加・退出できます。また、グループ参加前のメッセージを閲覧するができます。音声/ビデオ会議やeラーニングなど、trtc製品と連携する運用シーンに向いています。',
			'k_1wbmoof': '作成後に自由に参加・退出できます。グループメンバー数には上限がなく、メッセージ履歴を保存しません。css製品と連携し、弾幕でチャットする運用シーンに向いています。',
			'k_11mlyaa': '作成後に自由に参加・退出できます。最大10万人をサポートし、メッセージ履歴を保存できます。ユーザはグループidを検索しグループ参加申請を送信した後、グループ管理者の承認なしでグループに参加できます。',
			'k_0ylgdrb': 'コミュニティdemoは開発中で、まもなくリリースされます',
			'k_0elsjm2': 'グループチャットを作成',
			'k_1iw4gdk': 'すべての人を許可',
			'k_0i5ffqf': '要認証',
			'k_111mgqj': '私を友達として追加するのを許可しない',
			'k_03go2lu': '未指定',
			'k_15zb99m': '私を友達として追加する方法',
			'k_1llp7tu': 'ユーザが存在しません',
			'k_0tbyqyb': '読み込み中…',
			'k_0td1p3f': '保存中…',
			'k_1ui0gai': '指定した内容を検索',
			'k_03agld7': 'グループリマインダーメッセージ',
			'k_002wkr3': '翻訳',
			'k_13g4hxv': '翻訳完了',
			'k_1qqgjra': ({required Object option3}) => '$option3 件の新着メッセージ',
			'k_0uubyjr': '新着メッセージ',
			'k_0kg1wsx': 'グループタイプを選択',
			'k_003m6xh': '設定',
			'k_18nszwl': '私たちについて',
			'k_003txiw': '約',
			'k_12fp4oc': '公式ウェブサイト',
			'k_1391sy5': '一度の開発で、すべてのプラットフォームにパッケージ化してデプロイし、ワイドスクリーン、ナロースクリーンの両方に自動適応します',
			'k_002vu95': 'ようこそ',
			'k_0o6nt4d': '私は次に同意しました',
			'k_12l2415': 'Tencent Cloudのすべての契約および規則',
			'k_0rcqou9': 'Copyright © 2013-2023 Tencent Cloud. All Rights Reserved.',
			'k_003lmhx': 'グループ',
			'k_1s251fa': '連絡先とグループ',
			'k_0cjp3hx': '詳細を確認するには、連絡先またはグループを選択してください',
			'k_12veoax': 'チャンネル切り替え：',
			'k_002rfh9': '国際的な',
			'k_0864lq3': '使用中に何か疑問がある場合は、次の方法でお問い合わせください',
			'k_12625cy': 'グループに入る',
			'k_131lvxd': '私のアカウント',
			'k_002qep7': 'インターフェイス',
			'k_002vbyp': '外観',
			'k_16owrwc': 'ライトモード',
			'k_01zair9': 'ダークモード（開発中）',
			'k_002skx2': 'テーマ',
			'k_002wzvs': '言語',
			'k_002woft': '英語',
			'k_129eldp': '繁体字中国語',
			'k_129ekqk': '簡体字中国語',
			'k_002whil': '日本語',
			'k_002wqld': '韓国語',
			'k_003is6v': '共通',
			'k_12s2mfc': '詳細を見る',
			'k_12fsjye': '関連するWebサイト',
			'k_16uejmj': 'プロフィール',
			'k_0dtyory': 'フィードバック',
			'k_03oy6z4': 'すべてのSDK',
			'k_03bh54n': 'ソースコード',
			'k_0s3sgel': 'ブラックリストから削除',
			'k_16as7eq': 'エモティコンリアクション',
			'k_003s12u': '返信',
			'k_003s38r': 'もっと',
			'k_003molk': 'エモート',
			'k_165bbw6': 'メッセージ履歴',
			'k_13sqc0z': 'メッセージをクリア',
			'k_0glns86': '会話を削除',
			'k_13s99rx': 'メッセージをクリア',
			'k_11vsa3j': 'グループから退出',
			'k_11vvszp': 'グループを解散',
			'k_15i9w72': 'グループ管理者',
			'k_0p3espj': '備考を設定',
			'k_118sw9v': 'すぐに検索',
			'k_003mmoz': 'ロケット',
			'k_003nogx': '飛行機',
			'k_003pjj6': 'クラウン',
			'k_000340k': '花',
			'k_0cv8ngo': ({required Object option1}) => '$option1を贈る',
			'k_03a2zjl': 'ギフトを贈る',
			'k_0003yq8': 'つぼみ',
			'k_13k5228': 'ライブルームを賞賛しました',
			'k_1k0rrvn': '何か言って...',
			'k_13jzi5y': 'ライブルームに入る',
			'k_14asoqo': 'フォローを取り消す',
			'k_003ohwe': 'フォローする',
			'k_1h33pzv': ({required Object option1}) => 'ファン $option1 |',
			'k_07skbgr': ({required Object option2}) => ' $option2をフォローする',
			'k_1c99nb3': ({required Object option1}) => '$option1万+',
			'k_19mfrrb': 'オンライン視聴者',
			'k_13m65um': 'オーディエンス情報',
			'k_19kj6te': ({required Object option1}) => '$option1この場でいいね',
			'k_1xn4cn2': 'ランタイム環境の検出',
			'k_0sy25ey': 'このプログラムを使用する前に、Microsoft Edge WebView2ランタイム環境をインストールしてください。',
			'k_0g4tlsb': '今すぐダウンロード',
			'k_13ozr8k': '現在はサポートされていません',
			'k_16yiku8': 'Web版ではローカル検索はサポートされていません。Mobile AppまたはDesktop版をご利用ください。',
			'k_003lz6t': '相手',
			'k_1xf4yre': ({required Object option1}) => '$option1に送信',
			'k_003por5': 'スクリーンショット',
			'k_0c67rdb': '複数選択を許可する',
			'k_11lav8q': '匿名投票',
			'k_137cjfq': '公開結果',
			'k_0e3jces': 'オプションを入力してください',
			'k_0dcbhiz': 'オプションを追加する',
			'k_003r4qf': '投稿する',
			'k_1xa5q8q': '投票のタイトルを入力してください',
			'k_003nv7m': '投票済み',
			'k_002ym5d': '票、',
			'k_003pfxt': '割合',
			'k_0fxdch1': '投票プラグインが初期化されていません。まず初期化してください。',
			'k_1lzoopr': '投票メッセージではありません。確認してください。',
			'k_03ahybu': '投票済み',
			'k_11lamu8': '今すぐ投票する',
			'k_0b9h7nq': '投票が終了しました',
			'k_0c7zem1': '再送信',
			'k_11l1qvo': '投票を終了する',
			'k_0z314c0': '[複数選択]',
			'k_0z2zcm7': '[単一選択]',
			'k_0y8ap8v': '[公開]',
			'k_0y4cs5n': '[プライベート]',
			'k_0y6agtt': '[匿名]',
			'k_0y68wmo': '[実名]',
			'k_1pssgjf': ({required Object option1}) => '参加予定者数：$option1',
			'k_0x9zkqf': ({required Object option2}) => '実際の参加者数：$option2',
			'k_09ikyqj': 'すべてのオプションを表示',
			'k_0h2jp2z': ({required Object option1}) => '$option1票',
			'k_0y2zr3y': '[投票]',
			'k_11lci1l': '投票を作成する',
			'k_003l988': '投票',
			'k_1rw7s82': ' ビデオへのアクセス権限。写真やビデオの送信などの機能を使用することに必要です。',
			'k_003rcwm': '開く',
			'k_1698c42': 'Finderで表示',
			'k_066fxsz': 'フォルダを表示',
			'k_0k432y2': 'フォルダが含まれているため送信できません',
			'k_002wb4y': 'チャット',
			'k_0od4qyh': 'ビデオが異常です',
			'k_1cdzld5': '商品情報',
			'k_19qt9y2': 'サービス評価',
			'k_13s7ltw': 'カードメッセージ',
			'k_13ajr25': 'オンラインカスタマーサービス',
			'k_0ti5mfz': 'オンラインカスタマーサービスはありません',
			'k_1bfkxg9': '0KBファイルの転送はサポートされていません',
			'k_0vvsw7g': 'ファイル処理の例外',
			'k_06e224q': '[管理者によってメッセージが取り消されました]',
			'k_1u1mjcl': '[メッセージが取り消されました]',
			'k_1qcqxea': '複数の会話を選択',
			'k_1qgmc20': '会話を選択',
			'k_1d8nx6f': '新しいウィンドウで開く',
			'k_1hz05ax': '元のリソースをダウンロードしています。お待ちください...',
			'k_1fszgep': '私たちとチャット：',
			'k_1xtvvs9': 'プロフェッショナルな公式技術サポート',
			'k_0cdljc3': '参加',
			'k_167dvo3': '連絡先を選択',
			'k_1u1jwb8': 'テレグラム',
		};
	}
}

extension on _StringsKo {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'k_1yemzyd': '1개의 메시지를 받았습니다',
			'k_0ylosxn': '사용자 정의 메시지',
			'k_13sajrj': '이모티콘 메시지',
			'k_13sjeb7': '파일 메시지',
			'k_0yd2ft8': '그룹 알림 메시지',
			'k_13s7mxn': '사진 메시지',
			'k_13satlt': '위치 메시지',
			'k_00bbtsx': '메시지를 병합하여 전달',
			'k_13sqwu4': '음성 메시지',
			'k_13sqjjp': '비디오 메시지',
			'k_1fdhj9g': '이 버전에서는 이 메시지가 지원되지 않습니다',
			'k_06pujtm': '모든 친구 추가 허용',
			'k_0gyhkp5': '인증 필요',
			'k_121ruco': '모든 친구 추가 거부',
			'k_05nspni': '사용자 정의 필드',
			'k_03fchyy': '그룹 프로필 사진',
			'k_03i9mfe': '그룹 소개',
			'k_03agq58': '그룹 이름',
			'k_039xqny': '그룹 공지',
			'k_003tr0a': '그룹 소유자',
			'k_03c49qt': '승인하기',
			'k_002wddw': '음소거',
			'k_0got6f7': '음소거 해제',
			'k_1uaqed6': '[직접 설정]',
			'k_0z2z7rx': '[음성]',
			'k_0y39ngu': '[이모티콘]',
			'k_0y1a2my': '[사진]',
			'k_0z4fib8': '[비디오]',
			'k_0y24mcg': '[위치]',
			'k_0pewpd1': '[채팅 기록]',
			'k_13s8d9p': '알 수 없는 메시지',
			'k_1c3us5n': '현재 그룹은 모든 사람을 멘션하기가 지원되지 않습니다',
			'k_11k579v': '메시지에 부적절한 언어가 있습니다',
			'k_003qkx2': '캘린더',
			'k_003n2pz': '카메라',
			'k_03idjo0': '대화 상대',
			'k_003ltgm': '위치',
			'k_02k3k86': '마이크',
			'k_003pm7l': '앨범',
			'k_15ao57x': '앨범에 저장',
			'k_164m3jd': '로컬 스토리지',
			'k_03r6qyx': '정보를 가져오려면 귀하의 동의가 필요합니다',
			'k_02noktt': '허용되지 않음',
			'k_00043x4': '좋음',
			'k_003qzac': '어제',
			'k_003r39d': '2일 전',
			'k_03fqp9o': '일요일',
			'k_03ibg5h': '월요일',
			'k_03i7hu1': '화요일',
			'k_03iaiks': '수요일',
			'k_03el9pa': '목요일',
			'k_03i7ok1': '금요일',
			'k_03efxyg': '토요일',
			'k_003q7ba': '오후',
			'k_003q7bb': '오전',
			'k_003pu3h': '현재',
			'k_0n9pyxz': '사용자가 존재하지 않습니다',
			'k_1bjwemh': 'id 검색',
			'k_003kv3v': '검색',
			'k_16758qw': '친구 추가',
			'k_0i553x0': '인증 정보 입력',
			'k_031ocwx': '설명 및 그룹을 입력하세요',
			'k_003ojje': '설명',
			'k_003lsav': '그룹',
			'k_167bdvq': '나의 친구',
			'k_156b4ut': '친구 신청 완료',
			'k_002r305': '전송',
			'k_03gu05e': '채팅방',
			'k_03b4f3p': '회의 그룹',
			'k_03avj1p': '공개 그룹',
			'k_03asq2g': '업무 그룹',
			'k_03b3hbi': '알 수 없는 그룹',
			'k_1loix7s': ({required Object groupType}) => '그룹 유형: $groupType',
			'k_1lqbsib': '이 그룹 채팅은 존재하지 않습니다',
			'k_03h153m': '그룹 id 검색',
			'k_0oxak3r': '그룹 신청 완료',
			'k_002rflt': '삭제',
			'k_1don84v': '원본 메시지를 찾을 수 없습니다',
			'k_003q5fi': '복사',
			'k_003prq0': '전달',
			'k_002r1h2': '다중 선택',
			'k_003j708': '인용',
			'k_003pqpr': '취소',
			'k_03ezhho': '복사됨',
			'k_11ctfsz': '아직 구현되지 않음',
			'k_1hbjg5g': '[그룹 시스템 메시지]',
			'k_03tvswb': '[알 수 없는 메시지]',
			'k_155cj23': '메시지를 취소했습니다. ',
			'k_0gapun3': '재편집',
			'k_1aszp2k': '이 메시지를 다시 보내시겠습니까?',
			'k_003rzap': '확인',
			'k_003nevv': '취소',
			'k_0003z7x': '당신',
			'k_002wfe4': '읽음',
			'k_002wjlg': '읽지 않음',
			'k_0h1ygf8': '전화 걸기',
			'k_0h169j0': '통화 취소',
			'k_0h13jjk': '전화 받기',
			'k_0h19hfx': '통화 거절',
			'k_0obi9lh': '시간 초과, 응답 없음',
			'k_001nmhu': '다른 애플리케이션으로 열기',
			'k_1ht1b80': '수신 중',
			'k_105682d': '사진 로딩 실패',
			'k_0pytyeu': '사진 저장 성공',
			'k_0akceel': '사진 저장 실패',
			'k_003rk1s': '저장',
			'k_04a0awq': '[음성 메시지]',
			'k_105c3y3': '비디오 로딩 실패',
			'k_176rzr7': '채팅 기록',
			'k_0d5z4m5': '대상 선택',
			'k_003ngex': '완료',
			'k_1665ltg': '호출하기',
			'k_003n8b0': '캡처',
			'k_003kthh': '사진',
			'k_003tnp0': '파일',
			'k_0jhdhtp': '전송 실패. 비디오는 100mb를 초과할 수 없습니다.',
			'k_119ucng': '사진은 비워둘 수 없습니다',
			'k_13dsw4l': '취소하려면 놓기',
			'k_0am7r68': '위로 스와이프하여 전송 취소',
			'k_15jl6qw': '메세지가 너무 짧습니다!',
			'k_0gx7vl6': '누르고 말하기',
			'k_15dlafd': '1개씩 전달',
			'k_15dryxy': '병합하여 전달',
			'k_1eyhieh': '선택한 메시지 삭제',
			'k_17fmlyf': '채팅 삭제',
			'k_0dhesoz': '상단 고정 취소',
			'k_002sk7x': '상단 고정',
			'k_003ll77': '임시보관',
			'k_03icaxo': '사용자 정의',
			'k_1uaov41': '채팅 내용 검색',
			'k_003kfai': '알 수 없음',
			'k_13dq4an': '자동 승인',
			'k_0l13cde': '관리자 승인',
			'k_11y8c6a': '그룹 참여 금지',
			'k_1kvyskd': '네트워크를 사용할 수 없습니다',
			'k_16payqf': '그룹 참여 방법',
			'k_0vzvn8r': '그룹 이름 수정',
			'k_038lh6u': '그룹 관리',
			'k_0k5wyiy': '관리자 설정',
			'k_0goiuwk': '모든 구성원 음소거',
			'k_1g889xx': '모든 구성원 음소거를 활성화하면 그룹 소유자와 관리자만 메시지를 보낼 수 있습니다.',
			'k_0wlrefq': '음소거할 그룹 구성원 추가',
			'k_0goox5g': '음소거 설정',
			'k_08daijh': '관리자 권한 취소 성공',
			'k_0k5u935': '관리자 추가',
			'k_03enyx5': '그룹 구성원',
			'k_0h1svv1': '그룹 구성원 삭제',
			'k_0h1g636': '그룹 구성원 추가',
			'k_0uj7208': '네트워크를 사용할 수 없습니다',
			'k_0hpukyx': '더 많은 그룹 구성원 보기',
			'k_0qtsar0': '방해 금지 모드',
			'k_0ef2a12': '그룹 닉네임 수정',
			'k_1aajych': '2-20자의 중국어, 알파벳, 숫자 및 언더바만 사용할 수 있습니다',
			'k_137pab5': '그룹 닉네임',
			'k_0ivim6d': '그룹 공지가 없습니다',
			'k_03eq6cn': '그룹 공지',
			'k_002vxya': '편집',
			'k_17fpl3y': '채팅 상단 고정',
			'k_03es1ox': '그룹 유형',
			'k_003mz1i': '동의',
			'k_003lpre': '거절',
			'k_003qk66': '프로필 사진',
			'k_003lhvk': '닉네임',
			'k_003ps50': '계정',
			'k_15lx52z': '개인 서명',
			'k_003qgkp': '성별',
			'k_003m6hr': '생일',
			'k_0003v6a': '남자',
			'k_00043x2': '여자',
			'k_03bcjkv': '미설정',
			'k_11s0gdz': '닉네임 수정',
			'k_0p3j4sd': '중국어, 알파벳, 숫자, 언더바만 사용할 수 있습니다',
			'k_15lyvdt': '서명 수정',
			'k_0vylzjp': '작성된 내용이 없습니다',
			'k_1hs7ese': '온라인 상태일 때 변경할 수 있습니다',
			'k_03exjk7': '별칭',
			'k_0s3skfd': '블록리스트 추가',
			'k_0p3b31s': '별칭 수정',
			'k_0003y9x': '없음',
			'k_11zgnfs': '개인 프로필',
			'k_1tez2xl': '개인 서명이 없습니다',
			'k_118prbn': '전체 검색',
			'k_1m9dftc': '모든 대화 상대',
			'k_0em4gyz': '모든 그룹 채팅',
			'k_002twmj': '그룹 채팅',
			'k_09kga0d': '채팅 기록 더 보기',
			'k_09khmso': '관련 채팅 기록',
			'k_0vjj2kp': '그룹 채팅 기록',
			'k_003n2rp': '선택',
			'k_03ignw6': '전체',
			'k_03erpei': '관리자',
			'k_0qi9tno': '그룹 소유자, 관리자',
			'k_1m9exwh': '최근 대화 상대',
			'k_119nwqr': '입력란은 비워둘 수 없습니다',
			'k_0pzwbmg': '비디오 저장 성공',
			'k_0aktupv': '비디오 저장 실패',
			'k_1qbg9xc': ({required Object option8}) => '$option8은(는) ',
			'k_1wq5ubm': ({required Object option7}) => '$option7 수정',
			'k_0y5pu80': ({required Object option6}) => '$option6이(가) 그룹에서 나갔습니다',
			'k_0nl7cmd': ({required Object option5}) => '$option5을(를) 그룹에 초대합니다',
			'k_1ju5iqw': ({required Object option4}) => '$option4을(를) 그룹에서 강제 퇴장합니다',
			'k_1ovt677': ({required Object option3}) => '$option3이(가) 그룹 채팅에 들어왔습니다',
			'k_0k05b8b': ({required Object option2}) => '$option2이(가) ',
			'k_0wm4xeb': ({required Object option2}) => '시스템 메시지 $option2',
			'k_0nbq9v3': ({required Object option2}) => '통화 시간: $option2',
			'k_0i1kf53': ({required Object option2}) => '[파일] $option2',
			'k_1gnnby6': ({required Object option2}) => '이(가) 당신의 $option2에 액세스하려고 합니다',
			'k_1wh4atg': ({required Object option2}) => '$option2분 전',
			'k_07sh7g1': ({required Object option2}) => '어제 $option2',
			'k_1pj8xzh': ({required Object option2}) => 'id: $option2',
			'k_0py1evo': ({required Object option2}) => '개인 서명: $option2',
			'k_1kvj4i2': ({required Object option2}) => '$option2이(가) 메시지를 취소했습니다',
			'k_1v0lbpp': ({required Object option2}) => '‘$option2’은(는) 이 유형의 파일을 열 수 없습니다. 다른 애플리케이션을 사용하여 열고 미리보기할 수 있습니다.',
			'k_0torwfz': ({required Object option2}) => '$option2 선택 성공',
			'k_0i1bjah': ({required Object option1}) => '$option1이(가) 메시지를 취소했습니다',
			'k_1qzxh9q': ({required Object option3}) => '통화 시간: $option3',
			'k_0wrgmom': ({required Object option1}) => '[음성 통화]: $option1',
			'k_06ix2f0': ({required Object option2}) => '[영상 통화]: $option2',
			'k_08o3z5w': ({required Object option1}) => '[파일] $option1',
			'k_0ezbepg': ({required Object option2}) => '$option2[누군가 나를 멘션함]',
			'k_1ccnht1': ({required Object option2}) => '$option2[모든 사람을 멘션]',
			'k_1k3arsw': ({required Object option2}) => '관리자 ($option2/10)',
			'k_1d4golg': ({required Object option1}) => '그룹 구성원($option1명)',
			'k_1bg69nt': ({required Object option1}) => '$option1명',
			'k_00gjqxj': ({required Object option1}) => '개인 서명: $option1',
			'k_0c29cxr': ({required Object option1}) => '관련 채팅 기록 $option1개',
			'k_1twk5rz': ({required Object option1}) => '$option1와(과)의 채팅 기록',
			'k_1vn4xq1': ({required Object adminMember}) => '$adminMember의 관리자 권한 취소',
			'k_0e35hsw': '촬영한 사진이나 동영상을 친구에게 보내고 영상 통화를 하기 위해 카메라에 액세스하여 사진과 동영상을 찍을 수 있도록 허용해 주세요.',
			'k_0dj6yr7': '음성 메시지 전송, 동영상 촬영, 음성 및 영상 통화를 원활하게 할 수 있도록 마이크 사용을 허용해 주세요.',
			'k_003qnsl': '스토리지',
			'k_0s3rtpw': '앨범의 사진과 비디오를 친구에게 보내고 콘텐츠를 기기에 저장하기 위해 사진과 미디어 콘텐츠에 액세스할 수 있도록 허용해 주세요.',
			'k_0tezv85': ({required Object option2}) => ' $option2 가져오기 요청',
			'k_002rety': '권한',
			'k_18o68ro': '다음 권한 필요:',
			'k_1onpf8u': ' 사진, 동영상, 영상 통화 등의 기능을 사용하기 위한 카메라 권한입니다.',
			'k_17irga5': ' 음성 메시지 전송, 동영상 촬영, 음성 및 영상 통화 등의 기능을 사용하기 위한 마이크 권한입니다.',
			'k_0572kc4': ' 사진, 동영상 전송 등의 기능을 사용하기 위해 사진 권한에 액세스합니다.',
			'k_0slykws': ' 사진, 동영상 저장 등의 기능을 사용하기 위해 앨범 저장 권한에 액세스합니다.',
			'k_119pkcd': ' 채팅 중 사진 보기, 선택, 전송 등 기능을 사용하기 위한 파일 읽기 및 쓰기 권한입니다.',
			'k_0gqewd3': '나중에',
			'k_03eq4s1': '활성화하기',
			'k_0nt2uyg': '마지막 위치로 돌아가기',
			'k_04l16at': ({required Object option1}) => '$option1개의 새 메시지',
			'k_13p3w93': '누군가 나를 멘션함',
			'k_18w5uk6': '모든 사람을 멘션',
			'k_0jmujgh': '다른 파일을 수신하는 중입니다.',
			'k_12s5ept': '메시지 상세 정보',
			'k_0mxa4f4': ({required Object option1}) => '$option1명 읽음',
			'k_061tue3': ({required Object option2}) => '$option2명 읽지 않음',
			'k_18qjstb': '그룹 소유권 양도',
			'k_0on1aj2': ({required Object option2}) => '$option2개의 나를 멘션한 메시지가 있습니다',
			'k_09j4izl': '[누군가 나를 멘션함] ',
			'k_1oqtjw0': '[모든 사람을 멘션] ',
			'k_1x5a9vb': ({required Object option1}) => '나: $option1',
			'k_14n31e7': '그룹 참여 요청',
			'k_08nc5j1': ({required Object option1}) => '그룹 유형: $option1',
			'k_1josu12': ({required Object option1}) => '$option1개의 그룹 참여 요청',
			'k_0n2x5s0': ({required Object option2}) => '인증 정보: $option2',
			'k_03c1nx0': '동의함',
			'k_03aw9w8': '거부함',
			'k_038ryos': '처리하기',
			'k_0gw8pum': '그룹 참여 신청',
			'k_1gcvfrj': '설명을 입력하세요',
			'k_002v9zj': '확인',
			'k_10oqrki': '탭하여 사진 찍기',
			'k_0f8b3ws': '로딩 실패',
			'k_11cm5lm': '수동 초점',
			'k_002uzrd': '미리보기',
			'k_003qkn3': '녹화',
			'k_003k6a7': '촬영',
			'k_0bqpqco': '촬영 버튼',
			'k_1626ozl': '녹화 중지',
			'k_003lvmu': '앞쪽',
			'k_003lued': '뒤쪽',
			'k_003lwzh': '외부',
			'k_002qzi3': '비활성화',
			'k_003pufb': '자동',
			'k_0apm0ze': '촬영 시 플래시 사용',
			'k_157zog5': '플래시 항상 사용',
			'k_0cfyqhy': ({required Object option1}) => '$option1 화면 미리보기',
			'k_0phctlz': ({required Object option2}) => '플래시 모드: $option2',
			'k_02vfqe0': ({required Object option3}) => '$option3 카메라로 전환',
			'k_0f0y9ex': '메시지가 너무 짧습니다',
			'k_0ln70tk': 'url을 열 수 없습니다',
			'k_11a3jdv': '사진을 찍으려면 탭하고, 녹화하려면 길게 누르세요',
			'k_1k18miv': '그룹 퇴장 라이프사이클 함수를 입력하여 첫 화면 또는 다른 페이지로 이동하는 방법을 제공해 주세요.',
			'k_0gmwbnd': '모든 구성원 음소거 중',
			'k_0got2zr': '음소거되었습니다',
			'k_0y9jck8': 'search bar를 사용자 정의하고 클릭 리디렉션 처리를 해야 합니다',
			'k_0yum3tv': '사용자 정의 영역을 사용하는 경우 profilewidgetbuilder에 해당 컴포넌트를 전달하세요',
			'k_09kalj0': '채팅 기록 지우기',
			'k_14j5iul': '삭제 및 종료',
			'k_125ru1w': '그룹 삭제',
			'k_0jtutmw': '종료하면 이 그룹의 채팅 메시지를 받을 수 없습니다',
			'k_0jtzmqa': '삭제하면 이 그룹의 채팅 메시지를 받을 수 없습니다',
			'k_0r8fi93': '친구 추가 성공',
			'k_02qw14e': '친구 신청 완료',
			'k_0n3md5x': '현재 사용자는 블록리스트에 있습니다',
			'k_094phq4': '친구 추가 실패',
			'k_129scag': '친구 삭제 성공',
			'k_129uzfn': '친구 삭제 실패',
			'k_1666isy': '친구 삭제',
			'k_1679vrd': '친구 추가',
			'k_0h18bbi': '통화 종료',
			'k_154q2hn': '통화 시간 초과, 응답 없음',
			'k_1mnjtnc': '상대방이 전화를 끊음',
			'k_0l0mysn': '오류 발생:',
			'k_03fn6rg': '응답이 없습니다',
			'k_003luo3': '통화 중',
			'k_154jvfi': '강제 로그아웃 되었습니다',
			'k_1sp7jp6': '통화가 취소됨',
			'k_1045haa': '상대방이 초대에 수락하기를 기다리는 중...',
			'k_1gq7jv7': '당신을 통화에 초대합니다...',
			'k_003m7ey': '끊기',
			'k_03ectox': '스피커',
			'k_003q2a4': '받기',
			'k_03ftugq': '카메라',
			'k_10setgr': '음성 통화로 전환',
			'k_1g7i9jz': '카메라 전환',
			'k_15ml1ls': '수신 대기',
			'k_0nj9x9s': '이(가) 당신을 그룹 통화에 초대합니다',
			'k_1vtto3l': '통화 참여자:',
			'k_0h147mx': '통화 중',
			'k_0j6aylo': ({required Object option1}) => '통화 시간: $option1',
			'k_1fu9ahv': '모든 구성원 음소거 상태',
			'k_1ualc52': '상대방이 가져온 데이터 보기',
			'k_0szluvp': '상대방의 온라인 상태 설정',
			'k_0f4rnf8': '이 사용자는 이미 친구입니다',
			'k_1tdkom4': '당신은 이미 그룹 구성원입니다',
			'k_1p2lyuz': '상대방이 현재 입력 중입니다...',
			'k_1g8wfpy': ({required Object option1}) => '...총 $option1명',
			'k_12rv9vw': '응답 세부정보',
			'k_0n9p7g8': '그룹이 존재하지 않습니다',
			'k_1tdh5vn': '당신은 그룹 구성원이 아닙니다',
			'k_0h1q57v': '그룹 구성원이 없습니다',
			'k_0y5drq1': ({required Object option1}) => '[상세 보기 >>]($option1)',
			'k_03pjp61': '[이모티콘 메시지]',
			'k_1jpvzul': '[사용자 정의 메시지]',
			'k_03u3bh1': '[파일 메시지]',
			'k_1odsnsw': '[그룹 메시지]',
			'k_03sel4t': '[사진 메시지]',
			'k_03sfw3r': '[위치 메시지]',
			'k_03xpuwq': '[메시지 병합]',
			'k_07ycxwo': '[요소 없음]',
			'k_03rc9vz': '[텍스트 메시지]',
			'k_046uopf': '[비디오 메시지]',
			'k_0ehmsun': '기기 저장공간이 부족합니다. 원활한 사용을 위해 저장공간을 충분히 확보해주세요.',
			'k_003kmos': '사진',
			'k_002s86q': '비디오',
			'k_06bk5ei': '비디오 메시지는 mp4 형식만 지원됩니다',
			'k_13opfxf': 'web 페이지에서는 검색이 지원되지 않습니다',
			'k_1i0o0y2': '현재 Android/iOS만 지원됩니다',
			'k_045dtzl': ({required Object option1}) => '$option1의 채팅 기록',
			'k_0t0131u': '그룹 프로필 정보',
			'k_18ok8xz': '메시지 수신 방법',
			'k_03ax3ks': '그룹 프로필',
			'k_0sqvoqo': ({required Object option1}) => '$option1을(를) 관리자로 설정',
			'k_1gbg1v8': ({required Object option1}) => '$option1의 관리자 권한 취소',
			'k_17k64g4': '그룹 채팅 생성 성공!',
			'k_05mn217': '이모티콘 패키지 플러그인이 설치되어 있지 않습니다. 관련 기능을 사용하려면 https://cloud.tencent.com/document/product/269/70746 문서에 따라 설치하시기 바랍니다.',
			'k_14j17nz': '이모티콘 패키지가 없습니다',
			'k_1tmlcf0': '새 전화가 걸려왔지만 권한 부족으로 수신할 수 없습니다. 카메라/마이크 권한이 활성화되어 있는지 확인하세요.',
			'k_0fvjexh': '다운로드 중',
			'k_1cdagzz': '다운로드 대기열에 추가되었습니다. 다른 파일을 다운로드하는 중입니다.',
			'k_0g4vojc': '다운로드 시작',
			'k_026hiq5': '메시지 목록 로딩 중',
			'k_0b9q00i': 'tencent building////10000 shennan blvd, nanshan, shenzhen',
			'k_03fw6h1': '선전시',
			'k_0f7mdn7': '검색 실패',
			'k_158cssa': 'Tencent Map',
			'k_157htdw': 'AMap',
			'k_157im4z': 'Baidu Map',
			'k_157m20e': 'Apple Map',
			'k_1bqk7kl': 'AMa=이 감지되지 않습니다',
			'k_12ba1nv': 'Tencent Map가 감지되지 않습니다',
			'k_1dz8sci': 'Baidu Map가 감지되지 않습니다',
			'k_0f7fvky': '열기 실패',
			'k_1l2v0we': 'Tencent building 내, 초상은행 정보 연구 개발 빌딩 18m 근방',
			'k_10o8gk2': '위치 검색',
			'k_10o86v7': '알 수 없는 위치',
			'k_0elt0kw': '그룹 채팅 추가',
			'k_03f15qk': '블록리스트',
			'k_0s3p3ji': '블록리스트가 없습니다',
			'k_0uc5cnb': '현재 베타 테스트 중으로 채널 생성이 지원되지 않습니다.',
			'k_0s5ey0o': 'Tencent Real-Time Communication(TRTC)',
			'k_03gpl3d': '안녕하세요, ',
			'k_0352fjr': '네트워크를 사용할 수 없습니다',
			'k_0d7n018': '토픽 종료',
			'k_0d826hk': '토픽 상단 고정',
			'k_15wcgna': '종료 성공',
			'k_15wo7xu': '상단 고정 성공',
			'k_02slfpm': ({required Object errorMessage}) => '$errorMessage 오류 발생',
			'k_0h22snw': '음성 통화',
			'k_0h20hg5': '영상 통화',
			'k_002s934': '토픽',
			'k_18g3zdo': 'Tencent Cloud Chat',
			'k_1m8vyp0': '새 대화 상대',
			'k_0elz70e': '그룹 채팅',
			'k_18tb4mo': '대화 상대가 없습니다',
			'k_18nuh87': '문의하기',
			'k_1uf134v': '피드백 및 건의 사항: QQ 그룹 788910197',
			'k_0xlhhrn': '서비스 시간: 월요일 - 금요일, 오전 10시 - 오후 8시',
			'k_0gmpgcg': '아직 대화가 없습니다',
			'k_1m8zuj4': '대화 상대 선택',
			'k_002tu9r': '성능',
			'k_0vwtop2': ({required Object getMsg}) => '메시지: $getMsg',
			'k_0upijvs': ({required Object message}) => '실패: $message',
			'k_1tmcw5c': '토픽 제목을 완성하세요',
			'k_1cnmslk': '반드시 하나 이상의 태그를 선택해야 합니다',
			'k_0v5hlay': ({required Object message}) => '토픽 생성 실패 $message',
			'k_0z3ytji': '토픽 생성 성공',
			'k_1a8vem3': '실패',
			'k_0eskkr1': '토픽 선택',
			'k_0d7plb5': '토픽 생성',
			'k_144t0ho': '---- 관련 토픽 ----',
			'k_0pnz619': '토픽 제목 입력',
			'k_136v279': '+태그(하나 이상 추가)',
			'k_04hjhvp': '실패',
			'k_002r79h': '전체',
			'k_03ejkb6': '추가됨',
			'k_172tngw': '토픽(연결되지 않음)',
			'k_0rnmfc4': '토픽이 없습니다',
			'k_1pq0ybn': '토픽이 추가되지 않았습니다',
			'k_0bh95w0': '네트워크를 사용할 수 없습니다',
			'k_0em28sp': '그룹 채팅이 없습니다',
			'k_04dqh36': '새 대화 상대가 없습니다',
			'k_08k00l9': '로딩 중…',
			'k_197r4f7': 'tencent 서비스 연결 성공',
			'k_1s5xnir': 'Tencent Cloud Chat sdk 초기화 실패',
			'k_0owk5ss': ({required Object failedReason}) => '로그인 실패 $failedReason',
			'k_15bxnkw': '네트워크 연결 끊김',
			'k_0glj9us': '대화 시작',
			'k_1631kyh': '업무 그룹 생성',
			'k_1644yii': '소셜 그룹 생성',
			'k_1fxfx04': '회의 그룹 생성',
			'k_1cnkqc9': '라이브 방송 그룹 생성',
			'k_002r09z': '채널',
			'k_003nvk2': '메시지',
			'k_1jwxwgt': '연결 중…',
			'k_03gm52d': '연락처',
			'k_003k7dc': '나',
			'k_14yh35u': '로그인 · Tencent Cloud Chat',
			'k_0st7i3e': '그룹 채팅, 음성/영상 대화 등 기능을 체험해보세요',
			'k_0cr1atw': '중국대륙',
			'k_0mnxjg7': 'Tencent Cloud Chat에 오신 것을 환영합니다. 고객님의 개인정보 보호를 위해 <개인정보 보호정책>에 이용자 정보 수집의 구체적인 내용과 목적을 기재하고, 타사 sdk 사용 등 관련 내용을 추가하였습니다.',
			'k_1545beg': ' ',
			'k_0opnzp6': '<사용자 이용 약관>',
			'k_00041m1': ' 및 ',
			'k_0orhtx0': '<개인 정보 처리 방침>',
			'k_11x8pvm': '을(를) 클릭하여 읽으신 후, 내용에 동의하시면 ‘동의하고 계속’을 클릭하여 제품 및 서비스 사용을 시작하세요!',
			'k_17nw8gq': '동의하고 계속하기',
			'k_1nynslj': '동의하지 않고 종료하기',
			'k_0jsvmjm': '휴대폰 번호를 입력하세요',
			'k_1lg8qh2': '휴대폰 번호 형식 오류',
			'k_03jia4z': '네트워크를 사용할 수 없습니다',
			'k_007jqt2': '인증코드가 전송되었습니다',
			'k_1a55aib': '인증코드 오류',
			'k_1mw45lz': ({required Object errorReason}) => '로그인 실패 $errorReason',
			'k_16r3sej': '국가/지역',
			'k_15hlgzr': '국가 코드를 선택하세요',
			'k_1bnmt3h': '영어로 검색하세요',
			'k_03fei8z': '휴대폰 번호',
			'k_03aj66h': '인증코드',
			'k_1m9jtmw': '인증코드를 입력하세요',
			'k_0y1wbxk': '인증코드 받기',
			'k_002ri2g': '로그인',
			'k_161ecly': '현재 네트워크가 없습니다',
			'k_11uz2i8': '네트워크 재시도',
			'k_1vhzltr': 'Tencent Cloud Chat',
			'k_0j433ys': 'Tencent Cloud TRTC',
			'k_0epvs61': '스킨 변경',
			'k_12u8g8l': '면책 성명',
			'k_1p0j8i3': 'Tencent Cloud Chat(‘본 제품’)은 Tencent Cloud가 제공하는 테스트 제품으로 모든 저작권과 소유권은 Tencent Cloud에게 있습니다. 본 제품은 기능 체험용으로만 사용할 수 있으며 상업적 용도로는 사용할 수 없습니다. 관련 규제 요구 사항을 충족하기 위해 본 제품의 음성/영상 상호 작용은 전 과정에 걸쳐 녹음 및 녹화되어 보관되며 사용 중 음란물, 욕설, 폭력, 테러, 정치 관련 및 기타 불법 콘텐츠를 유포하는 것은 엄격히 금지됩니다.',
			'k_0k7qoht': '모든 친구 추가 허용',
			'k_1j91bvz': 'tuikit이 프로필 사진을 선택해 드릴까요?',
			'k_1wmkneq': '승인을 거쳐 친구 추가',
			'k_1eitsd0': 'Tencent Cloud Chat에 대해',
			'k_1919d6m': '개인정보 정책',
			'k_0wqhgor': '개인 정보 수집 목록',
			'k_12rfxml': '제 3자 정보 공유 목록',
			'k_131g7q4': '계정 해지',
			'k_03fel2u': '버전 번호',
			'k_16kts8h': '로그아웃',
			'k_13spdki': '메시지 전송',
			'k_14c600t': '설명 수정',
			'k_1f811a4': '숫자, 영어, 언더바를 사용할 수 있습니다.',
			'k_11z7ml4': '상세 프로필',
			'k_1ajt0b1': '현재 위치를 가져오지 못했습니다',
			'k_0lhm9xq': '검색 성공',
			'k_0fdeled': '검색 실패',
			'k_1yh0a50': 'mapdidload-지도 로딩 완료',
			'k_1t2zg6h': '이미지 인증코드 인증 실패',
			'k_03ibfd2': '일요일',
			'k_1o7lf2y': ({required Object errorMessage}) => '서버 오류: $errorMessage',
			'k_118l7sq': ({required Object requestErrorMessage}) => '요청 오류: $requestErrorMessage',
			'k_003nfx9': '어두운',
			'k_003rvjp': '밝은',
			'k_003rtht': '따뜻한',
			'k_003qxiw': '몽환적인',
			'k_0s5zoi3': ({required Object option1}) => '오류 발생 $option1',
			'k_0i8egqa': ({required Object option8}) => '메시지: $option8',
			'k_0pokyns': ({required Object option8}) => '실패: $option8',
			'k_1y03m8a': ({required Object option8}) => '토픽 생성 실패 $option8',
			'k_1v6uh9c': ({required Object option8}) => '로그인 실패 $option8',
			'k_0t5a9hl': ({required Object option1}) => '로그인 실패 $option1',
			'k_0k3uv02': ({required Object option8}) => '서버 오류: $option8',
			'k_1g9o3kz': ({required Object option8}) => '요청 오류: $option8',
			'k_14cahuz': 'Tencent Cloud Chat에 대해',
			'k_0llnalm': 'sdk 버전 번호',
			'k_13dyfii': '애플리케이션 버전 번호',
			'k_12h52zh': '개인정보 보호정책',
			'k_0fxhhwb': '사용자 이용 약관',
			'k_18z2e6q': 'Tencent Cloud Chat(‘본 제품’)은 Tencent Cloud가 제공하는 테스트 제품으로 모든 저작권과 소유권은 Tencent Cloud에게 있습니다. 본 제품은 기능 체험용으로만 사용할 수 있으며 상업적 용도로는 사용할 수 없습니다. 사용 중 음란물, 욕설, 폭력, 테러, 정치 관련 및 기타 불법 콘텐츠를 유포하는 것은 엄격히 금지됩니다.',
			'k_0zu7dd7': '수집하는 정보 목록',
			'k_0mcqhgh': '공유하는 정보 목록',
			'k_12eqaty': '계정 해지',
			'k_0ziqsr6': '계정 해지 성공!',
			'k_002qtgt': '해지',
			'k_0rvdu91': ({required Object option1}) => '해지하면 해당 계정을 사용할 수 없으며 관련 데이터도 삭제되어 복구할 수 없습니다. 계정 id: $option1',
			'k_15d22qk': '계정 해지',
			'k_036uv3f': 'Tencent Cloud Chat',
			'k_167916k': 'WeChat 친구',
			'k_03euwr1': 'WeChat moment',
			'k_0cxccci': '이(가) 당신을 영상 통화에 초대합니다',
			'k_06lhh4b': '이(가) 당신을 음성 통화에 초대합니다',
			'k_1ywo9ut': 'Tencent Cloud Chat은 qq의 기본 Tencent Cloud Chat 기능을 기반으로 개발되었습니다. sdk 연결만으로 채팅, 대화, 그룹 및 프로필 정보 관리 기능을 손쉽게 통합하고, 신호 메시지로 화이트보드 등 다른 서비스와 연결할 수 있습니다. Tencent Cloud Chat 기능을 여러 플랫폼의 미니 프로그램에 통합할 수 있어 다양한 커뮤니케이션 니즈를 충족시킵니다.',
			'k_0ios26v': 'WeChat이 설치되지 않았습니다',
			'k_1jg6d5x': '<개인정보 보호정책 요약>',
			'k_0selni4': '<개인정보 보호정책>',
			'k_10s6v2i': '<정보 수집 목록>',
			'k_0pasxq8': '<정보 공유 목록>',
			'k_003r6vf': '로그인',
			'k_03f2zbs': '에 공유',
			'k_0cfkcaz': '메시지 푸시',
			'k_1rmkb2w': '새 채팅 메시지 푸시',
			'k_1lg375c': '새 메시지 알림',
			'k_1t0akzp': ({required Object option1}) => '해지하면 현재 계정을 사용할 수 없으며 관련 데이터도 삭제되어 복구할 수 없습니다. 현재 계정 id: $option1',
			'k_1699p6d': 'tencent building',
			'k_1ngd60h': '10000 shennan blvd, nanshan, shenzhen',
			'k_1na29vg': '위치 메시지 점검 중',
			'k_1xmms9t': '그룹 참여 신청 목록',
			'k_0dla4vp': 'qq 그룹에 참여하여 피드백 및 제안을 전달해주시기 바랍니다',
			'k_1odrjd1': '서비스 시간: 월요일 - 금요일, 오전 10시 - 오후 8시',
			'k_1bh903m': 'qq 그룹 번호 복사 성공',
			'k_16264lp': '그룹 번호 복사',
			'k_18ger86': 'Tencent Cloud Chat',
			'k_1vd70l1': '수억 명의 qq 사용자에게 서비스를 제공하는 Tencent Cloud Chat 기술',
			'k_036phup': 'Tencent Cloud Chat',
			'k_0gfsln9': '정보가 변경됨',
			'k_0ow4akh': 'demo의 readme 가이드에 따라 baidu ak를 구성하고 demo의 위치 정보 기능을 체험해보세요.',
			'k_1kzh3lo': 'https://docs.qq.com/doc/dsvliwe9acurta2dl 문서를 참고하여 위치 메시지 기능을 빠르게 체험해보세요.',
			'k_161zzkm': '사용자 이름을 입력하세요',
			'k_1veosyv': '환경 변수에 key를 입력하세요',
			'k_03exdnb': '사용자 이름',
			'k_16kquu8': '현재 목록',
			'k_0fbvuqs': '복사 시작',
			'k_16j153h': 'Tencent Cloud Chat app(‘본 제품’)은 Tencent Cloud가 제공하는 테스트 제품으로 모든 저작권과 소유권은 Tencent Cloud에게 있습니다. 본 제품은 기능 체험용으로만 사용할 수 있으며 상업적 용도로는 사용할 수 없습니다. 사용 중 음란물, 욕설, 폭력, 테러, 정치 관련 및 기타 불법 콘텐츠를 유포하는 것은 엄격히 금지됩니다.',
			'k_13ghyf8': '[보안 팁] 본 app은 Tencent Cloud Chat 제품의 기능을 체험용으로만 사용할 수 있으며 비즈니스 협상 및 확장 용도로 사용할 수 없습니다. 송금, 당첨금 등 금전 관련 정보와 모르는 전화번호를 신뢰하지 마시고, 사기 행위에 유의하시기 바랍니다.',
			'k_0gt6cro': '신고하기',
			'k_03595fk': ({required Object option1}) => ' 등 $option1명',
			'k_1gpzgni': ({required Object option2}) => '$option2명 그룹',
			'k_02lfg57': '새 그룹 채팅',
			'k_17ifd8i': '환영합니다. 이 app을 통해 Tencent Cloud Chat 제품 및 서비스를 체험해 보실 수 있습니다.',
			'k_1f0ms23': '메시지 읽음 상태',
			'k_1c0x9ha': '비활성화하면 메시지에 읽음 상태가 표시되지 않아 상대방이 메시지를 읽었는지 알 수 없습니다.',
			'k_1dzhdr5': '온라인 상태 표시',
			'k_0mwsniq': '비활성화하면 대화 목록 및 연락처에서 친구의 접속 상태(온라인/오프라인)를 볼 수 없습니다.',
			'k_0f7h6ay': '연결 실패',
			'k_0wreawq': 'baidu 지도 플러그인은 웹 버전이 지원되지 않습니다. 위치 정보 기능을 체험하려면 모바일 app demo를 사용하세요.',
			'k_03c56co': '선택하지 않음',
			'k_1klqdh1': '한자, 영어, 숫자, 언더바만 사용할 수 있습니다',
			'k_03el5lp': '미입력',
			'k_0554lam': '업무 그룹(Work)',
			'k_1hyz1ua': '공개 그룹(Public)',
			'k_1s8hjin': '회의 그룹(Meeting)',
			'k_16ejs8f': '라이브 방송 그룹(AVChatRoom)',
			'k_1rqdzbh': '커뮤니티(Community)',
			'k_1aue1b6': '일반 WeChat 그룹과 유사하며, 사용자가 그룹 구성원인 친구의 초대를 받아 그룹에 참여할 수 있습니다. 초대 받은 사람의 동의나 그룹 소유자의 승인이 필요 없습니다.',
			'k_0uldek7': 'qq 그룹과 유사하며, 그룹 소유자가 그룹 관리자를 지정할 수 있습니다. 사용자가 그룹 id를 검색하여 그룹 참여 신청을 보내고, 그룹 소유자 또는 관리자의 승인을 받아야 그룹에 참여할 수 있습니다.',
			'k_1nv4w25': '사용자가 자유롭게 입/퇴장할 수 있으며, 사용자 그룹 참여 전의 메시지 기록 보기를 지원합니다. 회의 그룹은 멀티미디어 회의, 온라인 교육 등 tencent real-time communication(TRTC) 제품 통합 시나리오에 적합합니다.',
			'k_1wbmoof': '사용자가 자유롭게 입/퇴장할 수 있으며, 구성원 인원 제한 및 메시지 기록 저장 기능이 없습니다. 라이브 스트리밍 제품과 통합하여 댓글 자막 채팅 시나리오에 활용할 수 있습니다.',
			'k_11mlyaa': '생성 후에는 마음대로 입장/퇴장 가능하고, 최대 지원 인원은 10만 명이며, 메시지 기록 보관이 지원됩니다. 사용자가 그룹 id를 검색하여 그룹 참여를 요청하면 관리자 승인 없이 그룹에 참여할 수 있습니다.',
			'k_0ylgdrb': '커뮤니티 demo는 현재 개발 중으로 곧 출시될 예정입니다',
			'k_0elsjm2': '그룹 채팅 생성',
			'k_1iw4gdk': '모두 수락',
			'k_0i5ffqf': '승인 필요',
			'k_111mgqj': '모두 거부',
			'k_03go2lu': '미지정',
			'k_15zb99m': '상대방의 친구 추가 신청',
			'k_1llp7tu': '이 사용자는 존재하지 않습니다',
			'k_0tbyqyb': '로딩 중……',
			'k_0td1p3f': '저장 중…',
			'k_1ui0gai': '다음에서 검색',
			'k_03agld7': '그룹 알림',
			'k_002wkr3': '번역',
			'k_13g4hxv': '번역 완료',
			'k_1qqgjra': ({required Object option3}) => '읽지 않은 메세지 수 : $option3',
			'k_0rcqou9': 'Copyright © 2013-2023 Tencent Cloud. All Rights Reserved. 腾讯云 版权所有',
			'k_0uubyjr': '읽지 않은 메시지',
			'k_0kg1wsx': '그룹 유형 선택',
			'k_003m6xh': '설정',
			'k_18nszwl': '회사 정보',
			'k_003txiw': '약',
			'k_12fp4oc': '공식 웹 사이트',
			'k_1391sy5': '일괄적인 개발, 모든 플랫폼에 배포 가능, 와이드 스크린 및 슬림 스크린 모두를 대응합니다.',
			'k_002vu95': '환영합니다',
			'k_0o6nt4d': ' \'텐센트 클라우드 IM 전체 규약 및 규정\'을 읽고 이에 동의합니다.',
			'k_12l2415': ' (C) 2013-2023 Tencent Cloud. All Rights Reserved. Tencent Cloud. All Rights Reserved.',
			'k_003lmhx': '그룹',
			'k_1s251fa': '연락처 및 그룹',
			'k_0cjp3hx': '자세한 정보를 확인하려면 연락처 또는 그룹을 선택하세요.',
			'k_12veoax': '채널 전환:',
			'k_002rfh9': '국제',
			'k_0864lq3': '사용 중 궁금한 사항이 있으면 다음 채널을 통해 문의하십시오.',
			'k_12625cy': '그룹에 참여하기',
			'k_131lvxd': '내 계정',
			'k_002qep7': '인터페이스',
			'k_002vbyp': '외관',
			'k_16owrwc': '라이트 모드',
			'k_01zair9': '다크 모드 (개발 중)',
			'k_002skx2': '테마',
			'k_002wzvs': '언어',
			'k_002woft': '영어',
			'k_129eldp': '번체 중국어',
			'k_129ekqk': '간체 중국어',
			'k_002whil': '일본어',
			'k_002wqld': '한국어',
			'k_003is6v': '일반',
			'k_12s2mfc': '자세한 정보 보기',
			'k_12fsjye': '관련 웹 사이트',
			'k_16uejmj': '개인 센터',
			'k_0dtyory': '의견 제안',
			'k_03oy6z4': '모든 SDK',
			'k_03bh54n': '소스 코드',
			'k_0s3sgel': '블랙리스트에서 제거',
			'k_16as7eq': '이모티콘 반응',
			'k_003s12u': '답장',
			'k_003s38r': '더보기',
			'k_003molk': '이모티콘',
			'k_165bbw6': '메시지 기록',
			'k_13sqc0z': '메시지 삭제',
			'k_0glns86': '대화방 나가기',
			'k_13s99rx': '메시지 초기화',
			'k_11vsa3j': '그룹 나가기',
			'k_11vvszp': '그룹 해체',
			'k_15i9w72': '그룹 관리자',
			'k_0p3espj': '별명 설정',
			'k_118sw9v': '지금 검색',
			'k_003mmoz': '로켓',
			'k_003nogx': '비행기',
			'k_003pjj6': '왕관',
			'k_000340k': '꽃',
			'k_0cv8ngo': ({required Object option1}) => '$option1을 선물하기',
			'k_03a2zjl': '선물하기',
			'k_0003yq8': '개',
			'k_13k5228': '방송 방을 좋아했습니다',
			'k_1k0rrvn': '무엇을 말할까요...',
			'k_13jzi5y': '방송 방으로 이동',
			'k_14asoqo': '팔로우 취소',
			'k_003ohwe': '팔로우',
			'k_1h33pzv': ({required Object option1}) => '팬 $option1 |',
			'k_07skbgr': ({required Object option2}) => ' $option2 팔로우',
			'k_1c99nb3': ({required Object option1}) => '$option1 만+',
			'k_19mfrrb': '온라인 시청객',
			'k_13m65um': '시청자 정보',
			'k_19kj6te': ({required Object option1}) => '$option1 이번 방에서 좋아요',
			'k_1xn4cn2': '운영 환경 검사',
			'k_0sy25ey': '이 프로그램을 사용하려면 먼저 Microsoft Edge WebView2 운영 환경을 설치하세요.',
			'k_0g4tlsb': '지금 다운로드',
			'k_13ozr8k': '현재 지원되지 않습니다',
			'k_16yiku8': 'Web 버전에서는 로컬 검색이 지원되지 않습니다. Mobile App 또는 Desktop 버전을 사용해보세요.',
			'k_003lz6t': '상대방',
			'k_1xf4yre': ({required Object option1}) => '$option1에게 보내기',
			'k_003por5': '스크린샷',
			'k_0c67rdb': '다중 선택 허용',
			'k_11lav8q': '익명 투표',
			'k_137cjfq': '공개 결과',
			'k_0e3jces': '옵션을 입력하세요',
			'k_0dcbhiz': '옵션 추가',
			'k_003r4qf': '게시',
			'k_1xa5q8q': '투표 제목을 입력하세요',
			'k_003nv7m': '투표 완료',
			'k_002ym5d': '표,',
			'k_003pfxt': '비율',
			'k_0fxdch1': '투표 플러그인이 초기화되지 않았습니다. 먼저 초기화하십시오.',
			'k_1lzoopr': '투표 메시지가 아닙니다. 확인하십시오.',
			'k_03ahybu': '투표 완료',
			'k_11lamu8': '투표 바로가기',
			'k_0b9h7nq': '투표가 종료되었습니다',
			'k_0c7zem1': '다시 보내기',
			'k_11l1qvo': '투표 종료',
			'k_0z314c0': '[선다형]',
			'k_0z2zcm7': '[택일형]',
			'k_0y8ap8v': '[공개]',
			'k_0y4cs5n': '[비공개]',
			'k_0y6agtt': '[익명]',
			'k_0y68wmo': '[실명]',
			'k_1pssgjf': ({required Object option1}) => '참여 예정자 수 :$option1',
			'k_0x9zkqf': ({required Object option2}) => '실제 참여자 수 : $option2',
			'k_09ikyqj': '모든옵션보기',
			'k_0h2jp2z': ({required Object option1}) => '$option1표',
			'k_0y2zr3y': '[투표]',
			'k_11lci1l': '투표 생성하기',
			'k_003l988': '투표',
			'k_1rw7s82': ' 사진, 동영상 전송 등의 기능을 사용하기 위해 사진 권한에 액세스합니다.',
			'k_003rcwm': '열기',
			'k_1698c42': 'Finder에서 보기',
			'k_066fxsz': '폴더 보기',
			'k_0k432y2': '폴더가 포함되어 있어서 전송할 수 없습니다',
			'k_002wb4y': '채팅',
			'k_0od4qyh': '비디오 예외',
			'k_1cdzld5': '제품 정보를 입력하십시오',
			'k_19qt9y2': '서비스 평가',
			'k_13s7ltw': '카드 메시지',
			'k_13ajr25': '온라인 고객 서비스',
			'k_0ti5mfz': '온라인 고객 서비스가 없습니다',
			'k_1bfkxg9': '0KB 파일 전송이 지원되지 않습니다',
			'k_0vvsw7g': '파일 처리 예외',
			'k_06e224q': '[메시지가 관리자에 의해 취소되었습니다]',
			'k_1u1mjcl': '[메시지가 취소되었습니다]',
			'k_1qcqxea': '여러 대화 선택',
			'k_1qgmc20': '대화 선택',
			'k_1d8nx6f': '새 창에서 열기',
			'k_1hz05ax': '원래 리소스를 다운로드 중입니다. 잠시 기다려주세요...',
			'k_1fszgep': '저희와 채팅하기:',
			'k_1xtvvs9': '전문 공식 기술 지원',
			'k_0cdljc3': '참가',
			'k_167dvo3': '연락처 선택',
			'k_1u1jwb8': '텔레그램',
		};
	}
}

extension on _StringsZhHans {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'k_1yemzyd': '收到一条消息',
			'k_0ylosxn': '自定义消息',
			'k_13sajrj': '表情消息',
			'k_13sjeb7': '文件消息',
			'k_0yd2ft8': '群提示消息',
			'k_13s7mxn': '图片消息',
			'k_13satlt': '位置消息',
			'k_00bbtsx': '合并转发消息',
			'k_13sqwu4': '语音消息',
			'k_13sqjjp': '视频消息',
			'k_1fdhj9g': '该版本不支持此消息',
			'k_06pujtm': '同意任何用户添加好友',
			'k_0gyhkp5': '需要验证',
			'k_121ruco': '拒绝任何人加好友',
			'k_05nspni': '自定义字段',
			'k_03fchyy': '群头像',
			'k_03i9mfe': '群简介',
			'k_03agq58': '群名称',
			'k_039xqny': '群通知',
			'k_003tr0a': '群主',
			'k_03c49qt': '去授权',
			'k_002wddw': '禁言',
			'k_0got6f7': '解除禁言',
			'k_1uaqed6': '[自定义]',
			'k_0z2z7rx': '[语音]',
			'k_0y39ngu': '[表情]',
			'k_0y1a2my': '[图片]',
			'k_0z4fib8': '[视频]',
			'k_0y24mcg': '[位置]',
			'k_0pewpd1': '[聊天记录]',
			'k_13s8d9p': '未知消息',
			'k_1c3us5n': '当前群组不支持@全体成员',
			'k_11k579v': '发言中有非法语句',
			'k_003qkx2': '日历',
			'k_003n2pz': '相机',
			'k_03idjo0': '联系人',
			'k_003ltgm': '位置',
			'k_02k3k86': '麦克风',
			'k_003pm7l': '相册',
			'k_15ao57x': '相册写入',
			'k_164m3jd': '本地存储',
			'k_03r6qyx': '我们需要您的同意才能获取信息',
			'k_02noktt': '不允许',
			'k_00043x4': '好',
			'k_003qzac': '昨天',
			'k_003r39d': '前天',
			'k_03fqp9o': '星期天',
			'k_03ibg5h': '星期一',
			'k_03i7hu1': '星期二',
			'k_03iaiks': '星期三',
			'k_03el9pa': '星期四',
			'k_03i7ok1': '星期五',
			'k_03efxyg': '星期六',
			'k_003q7ba': '下午',
			'k_003q7bb': '上午',
			'k_003pu3h': '现在',
			'k_0n9pyxz': '用户不存在',
			'k_1bjwemh': '搜索用户 ID',
			'k_003kv3v': '搜索',
			'k_16758qw': '添加好友',
			'k_0i553x0': '填写验证信息',
			'k_031ocwx': '请填写备注和分组',
			'k_003ojje': '备注',
			'k_003lsav': '分组',
			'k_167bdvq': '我的好友',
			'k_156b4ut': '好友申请已发送',
			'k_002r305': '发送',
			'k_03gu05e': '聊天室',
			'k_03b4f3p': '会议群',
			'k_03avj1p': '公开群',
			'k_03asq2g': '工作群',
			'k_03b3hbi': '未知群',
			'k_1loix7s': ({required Object groupType}) => '群类型: $groupType',
			'k_1lqbsib': '该群聊不存在',
			'k_03h153m': '搜索群ID',
			'k_0oxak3r': '群申请已发送',
			'k_002rflt': '删除',
			'k_1don84v': '无法定位到原消息',
			'k_003q5fi': '复制',
			'k_003prq0': '转发',
			'k_002r1h2': '多选',
			'k_003j708': '引用',
			'k_003pqpr': '撤回',
			'k_03ezhho': '已复制',
			'k_11ctfsz': '暂未实现',
			'k_1hbjg5g': '[群系统消息]',
			'k_03tvswb': '[未知消息]',
			'k_155cj23': '您撤回了一条消息，',
			'k_0gapun3': '重新编辑',
			'k_1aszp2k': '您确定要重发这条消息么？',
			'k_003rzap': '确定',
			'k_003nevv': '取消',
			'k_0003z7x': '您',
			'k_002wfe4': '已读',
			'k_002wjlg': '未读',
			'k_0h1ygf8': '发起通话',
			'k_0h169j0': '取消通话',
			'k_0h13jjk': '接受通话',
			'k_0h19hfx': '拒绝通话',
			'k_0obi9lh': '超时未接听',
			'k_001nmhu': '用其他应用打开',
			'k_1ht1b80': '正在接收中',
			'k_105682d': '图片加载失败',
			'k_0pytyeu': '图片保存成功',
			'k_0akceel': '图片保存失败',
			'k_003rk1s': '保存',
			'k_04a0awq': '[语音消息]',
			'k_105c3y3': '视频加载失败',
			'k_176rzr7': '聊天记录',
			'k_0d5z4m5': '选择提醒人',
			'k_003ngex': '完成',
			'k_1665ltg': '发起呼叫',
			'k_003n8b0': '拍摄',
			'k_003kthh': '照片',
			'k_003tnp0': '文件',
			'k_0jhdhtp': '发送失败,视频不能大于100MB',
			'k_119ucng': '图片不能为空',
			'k_13dsw4l': '松开取消',
			'k_0am7r68': '手指上滑，取消发送',
			'k_15jl6qw': '说话时间太短!',
			'k_0gx7vl6': '按住说话',
			'k_15dlafd': '逐条转发',
			'k_15dryxy': '合并转发',
			'k_1eyhieh': '确定删除已选消息',
			'k_17fmlyf': '清除聊天',
			'k_0dhesoz': '取消置顶',
			'k_002sk7x': '置顶',
			'k_003ll77': '草稿',
			'k_03icaxo': '自定义',
			'k_1uaov41': '查找聊天内容',
			'k_003kfai': '未知',
			'k_13dq4an': '自动审批',
			'k_0l13cde': '管理员审批',
			'k_11y8c6a': '禁止加群',
			'k_1kvyskd': '无网络连接，无法修改',
			'k_16payqf': '加群方式',
			'k_0vzvn8r': '修改群名称',
			'k_038lh6u': '群管理',
			'k_0k5wyiy': '设置管理员',
			'k_0goiuwk': '全员禁言',
			'k_1g889xx': '全员禁言开启后，只允许群主和管理员发言。',
			'k_0wlrefq': '添加需要禁言的群成员',
			'k_0goox5g': '设置禁言',
			'k_08daijh': '成功取消管理员身份',
			'k_0k5u935': '添加管理员',
			'k_03enyx5': '群成员',
			'k_0h1svv1': '删除群成员',
			'k_0h1g636': '添加群成员',
			'k_0uj7208': '无网络连接，无法查看群成员',
			'k_0hpukyx': '查看更多群成员',
			'k_0qtsar0': '消息免打扰',
			'k_0ef2a12': '修改我的群昵称',
			'k_1aajych': '仅限中文、字母、数字和下划线，2-20个字',
			'k_137pab5': '我的群昵称',
			'k_0ivim6d': '暂无群公告',
			'k_03eq6cn': '群公告',
			'k_002vxya': '编辑',
			'k_17fpl3y': '置顶聊天',
			'k_03es1ox': '群类型',
			'k_003mz1i': '同意',
			'k_003lpre': '拒绝',
			'k_003qk66': '头像',
			'k_003lhvk': '昵称',
			'k_003ps50': '账号',
			'k_15lx52z': '个性签名',
			'k_003qgkp': '性别',
			'k_003m6hr': '生日',
			'k_0003v6a': '男',
			'k_00043x2': '女',
			'k_03bcjkv': '未设置',
			'k_11s0gdz': '修改昵称',
			'k_0p3j4sd': '仅限中字、字母、数字和下划线',
			'k_15lyvdt': '修改签名',
			'k_0vylzjp': '这个人很懒，什么也没写',
			'k_1hs7ese': '等上线再改这个',
			'k_03exjk7': '备注名',
			'k_0s3skfd': '加入黑名单',
			'k_0p3b31s': '修改备注名',
			'k_0003y9x': '无',
			'k_11zgnfs': '个人资料',
			'k_1tez2xl': '暂无个性签名',
			'k_118prbn': '全局搜索',
			'k_1m9dftc': '全部联系人',
			'k_0em4gyz': '全部群聊',
			'k_002twmj': '群聊',
			'k_09kga0d': '更多聊天记录',
			'k_09khmso': '相关聊天记录',
			'k_0vjj2kp': '群聊的聊天记录',
			'k_003n2rp': '选择',
			'k_03ignw6': '所有人',
			'k_03erpei': '管理员',
			'k_0qi9tno': '群主、管理员',
			'k_1m9exwh': '最近联系人',
			'k_119nwqr': '输入不能为空',
			'k_0pzwbmg': '视频保存成功',
			'k_0aktupv': '视频保存失败',
			'k_1qbg9xc': ({required Object option8}) => '$option8为 ',
			'k_1wq5ubm': ({required Object option7}) => '$option7修改',
			'k_0y5pu80': ({required Object option6}) => '$option6退出群聊',
			'k_0nl7cmd': ({required Object option5}) => '邀请$option5加入群组',
			'k_1ju5iqw': ({required Object option4}) => '将$option4踢出群组',
			'k_1ovt677': ({required Object option3}) => '用户$option3加入了群聊',
			'k_0k05b8b': ({required Object option2}) => '$option2 被',
			'k_0wm4xeb': ({required Object option2}) => '系统消息 $option2',
			'k_0nbq9v3': ({required Object option2}) => '通话时间：$option2',
			'k_0i1kf53': ({required Object option2}) => '[文件] $option2',
			'k_1gnnby6': ({required Object option2}) => '想访问您的$option2',
			'k_1wh4atg': ({required Object option2}) => '$option2 分钟前',
			'k_07sh7g1': ({required Object option2}) => '昨天 $option2',
			'k_1pj8xzh': ({required Object option2}) => '我的用户ID: $option2',
			'k_0py1evo': ({required Object option2}) => '个性签名: $option2',
			'k_1kvj4i2': ({required Object option2}) => '$option2撤回了一条消息',
			'k_1v0lbpp': ({required Object option2}) => '“$option2”暂不可以打开此类文件，你可以使用其他应用打开并预览',
			'k_0torwfz': ({required Object option2}) => '选择成功$option2',
			'k_0i1bjah': ({required Object option1}) => '$option1撤回了一条消息',
			'k_1qzxh9q': ({required Object option3}) => '通话时间：$option3',
			'k_0wrgmom': ({required Object option1}) => '[语音通话]：$option1',
			'k_06ix2f0': ({required Object option2}) => '[视频通话]：$option2',
			'k_08o3z5w': ({required Object option1}) => '[文件] $option1',
			'k_0ezbepg': ({required Object option2}) => '$option2[有人@我]',
			'k_1ccnht1': ({required Object option2}) => '$option2[@所有人]',
			'k_1k3arsw': ({required Object option2}) => '管理员 ($option2/10)',
			'k_1d4golg': ({required Object option1}) => '群成员($option1人)',
			'k_1bg69nt': ({required Object option1}) => '$option1人',
			'k_00gjqxj': ({required Object option1}) => '个性签名: $option1',
			'k_0c29cxr': ({required Object option1}) => '$option1条相关聊天记录',
			'k_1twk5rz': ({required Object option1}) => '与$option1的聊天记录',
			'k_1vn4xq1': ({required Object adminMember}) => '将 $adminMember 取消管理员',
			'k_0e35hsw': '为方便您将所拍摄的照片或视频发送给朋友，以及进行视频通话，请允许我们访问摄像头进行拍摄照片和视频。',
			'k_0dj6yr7': '为方便您发送语音消息、拍摄视频以及音视频通话，请允许我们使用麦克风进行录音。',
			'k_003qnsl': '存储',
			'k_0s3rtpw': '为方便您查看和选择相册里的图片视频发送给朋友，以及保存内容到设备，请允许我们访问您设备上的照片、媒体内容。',
			'k_0tezv85': ({required Object option2}) => ' 申请获取$option2',
			'k_002rety': '权限',
			'k_18o68ro': '需要授予',
			'k_1onpf8u': ' 相机权限，以正常使用拍摄图片视频、视频通话等功能。',
			'k_17irga5': ' 麦克风权限，以正常使用发送语音消息、拍摄视频、音视频通话等功能。',
			'k_0572kc4': ' 访问照片权限，以正常使用发送图片、视频等功能。',
			'k_0slykws': ' 访问相册写入权限，以正常使用存储图片、视频等功能。',
			'k_119pkcd': ' 文件读写权限，以正常使用在聊天功能中的图片查看、选择能力和发送文件的能力。',
			'k_0gqewd3': '以后再说',
			'k_03eq4s1': '去开启',
			'k_0nt2uyg': '回到最新位置',
			'k_04l16at': ({required Object option1}) => '$option1条新消息',
			'k_13p3w93': '有人@我',
			'k_18w5uk6': '@所有人',
			'k_0jmujgh': '其他文件正在接收中',
			'k_12s5ept': '消息详情',
			'k_0mxa4f4': ({required Object option1}) => '$option1人已读',
			'k_061tue3': ({required Object option2}) => '$option2人未读',
			'k_18qjstb': '转让群主',
			'k_0on1aj2': ({required Object option2}) => '有$option2条@我消息',
			'k_09j4izl': '[有人@我] ',
			'k_1oqtjw0': '[@所有人] ',
			'k_1x5a9vb': ({required Object option1}) => '我是: $option1',
			'k_14n31e7': '进群请求',
			'k_08nc5j1': ({required Object option1}) => '群类型: $option1',
			'k_1josu12': ({required Object option1}) => '$option1 条入群请求',
			'k_0n2x5s0': ({required Object option2}) => '验证消息: $option2',
			'k_03c1nx0': '已同意',
			'k_03aw9w8': '已拒绝',
			'k_038ryos': '去处理',
			'k_0gw8pum': '进群申请',
			'k_1gcvfrj': '请填写备注',
			'k_002v9zj': '确认',
			'k_10oqrki': '轻触拍照',
			'k_0f8b3ws': '加载失败',
			'k_11cm5lm': '手动聚焦',
			'k_002uzrd': '预览',
			'k_003qkn3': '录像',
			'k_003k6a7': '拍照',
			'k_0bqpqco': '拍照按钮',
			'k_1626ozl': '停止录像',
			'k_003lvmu': '前置',
			'k_003lued': '后置',
			'k_003lwzh': '外置',
			'k_002qzi3': '关闭',
			'k_003pufb': '自动',
			'k_0apm0ze': '拍照时闪光',
			'k_157zog5': '始终闪光',
			'k_0cfyqhy': ({required Object option1}) => '$option1 画面预览',
			'k_0phctlz': ({required Object option2}) => '闪光模式: $option2',
			'k_02vfqe0': ({required Object option3}) => '切换至 $option3 摄像头',
			'k_0f0y9ex': '说话时间太短',
			'k_0ln70tk': '无法打开URL',
			'k_11a3jdv': '轻触拍照，长按摄像',
			'k_1k18miv': '请传入离开群组生命周期函数，提供返回首页或其他页面的导航方法。',
			'k_0gmwbnd': '全员禁言中',
			'k_0got2zr': '您被禁言',
			'k_0y9jck8': '你必须自定义search bar，并处理点击跳转',
			'k_0yum3tv': '如使用自定义区域，请在profileWidgetBuilder传入对应组件',
			'k_09kalj0': '清空聊天记录',
			'k_14j5iul': '删除并退出',
			'k_125ru1w': '解散该群',
			'k_0jtutmw': '退出后不会接收到此群聊消息',
			'k_0jtzmqa': '解散后不会接收到此群聊消息',
			'k_0r8fi93': '好友添加成功',
			'k_02qw14e': '好友申请已发出',
			'k_0n3md5x': '当前用户在黑名单',
			'k_094phq4': '好友添加失败',
			'k_129scag': '好友删除成功',
			'k_129uzfn': '好友删除失败',
			'k_1666isy': '清除好友',
			'k_1679vrd': '加为好友',
			'k_0h18bbi': '结束通话',
			'k_154q2hn': '通话超时未应答',
			'k_1mnjtnc': '对方已挂断',
			'k_0l0mysn': '发生错误:',
			'k_03fn6rg': '无响应',
			'k_003luo3': '忙线',
			'k_154jvfi': '你被踢下线了',
			'k_1sp7jp6': '取消了通话',
			'k_1045haa': '等待对方接受邀请...',
			'k_1gq7jv7': '邀请您通话...',
			'k_003m7ey': '挂断',
			'k_03ectox': '扬声器',
			'k_003q2a4': '接听',
			'k_03ftugq': '摄像头',
			'k_10setgr': '切到语音通话',
			'k_1g7i9jz': '切换摄像头',
			'k_15ml1ls': '等待接听',
			'k_0nj9x9s': '邀请你加入多人通话',
			'k_1vtto3l': '参与通话的还有:',
			'k_0h147mx': '正在通话',
			'k_0j6aylo': ({required Object option1}) => '通话时间：$option1',
			'k_1fu9ahv': '全员禁言状态',
			'k_1ualc52': '看看对方带来的数据是啥',
			'k_0szluvp': '设置对方在线状态',
			'k_0f4rnf8': '该用户已是好友',
			'k_1tdkom4': '您已是群成员',
			'k_1p2lyuz': '对方正在输入中...',
			'k_1g8wfpy': ({required Object option1}) => '...共$option1人',
			'k_12rv9vw': '回应详情',
			'k_0n9p7g8': '群组不存在',
			'k_1tdh5vn': '您不是群成员',
			'k_0h1q57v': '暂无群成员',
			'k_0y5drq1': ({required Object option1}) => '[查看详情 >>]($option1)',
			'k_03pjp61': '[表情消息]',
			'k_1jpvzul': '[自定义消息]',
			'k_03u3bh1': '[文件消息]',
			'k_1odsnsw': '[群消息]',
			'k_03sel4t': '[图片消息]',
			'k_03sfw3r': '[位置消息]',
			'k_03xpuwq': '[合并消息]',
			'k_07ycxwo': '[没有元素]',
			'k_03rc9vz': '[文本消息]',
			'k_046uopf': '[视频消息]',
			'k_0ehmsun': '设备存储空间不足，建议清理，以获得更好使用体验',
			'k_003kmos': '图片',
			'k_002s86q': '视频',
			'k_06bk5ei': '视频消息仅限 mp4 格式',
			'k_13opfxf': 'Web网页端不支持搜索',
			'k_1i0o0y2': '暂时仅限 Android/iOS 端',
			'k_045dtzl': ({required Object option1}) => '$option1的聊天记录',
			'k_0t0131u': '群资料信息',
			'k_18ok8xz': '消息接收方式',
			'k_03ax3ks': '群资料',
			'k_0sqvoqo': ({required Object option1}) => '将 $option1 设置为管理员',
			'k_1gbg1v8': ({required Object option1}) => '将 $option1 取消管理员',
			'k_17k64g4': '群聊创建成功！',
			'k_05mn217': '暂未安装表情包插件，如需使用表情相关功能，请根据本文档安装：https://cloud.tencent.com/document/product/269/70746',
			'k_14j17nz': '暂无表情包',
			'k_1tmlcf0': '新通话呼入，但因权限不足，无法接听。请确认摄像头/麦克风权限已开启。',
			'k_0fvjexh': '正在下载中',
			'k_1cdagzz': '已加入待下载队列，其他文件下载中',
			'k_0g4vojc': '开始下载',
			'k_026hiq5': '消息列表加载中',
			'k_0b9q00i': '腾讯大厦/////深圳市南山区深南大道10000号',
			'k_03fw6h1': '深圳市',
			'k_0f7mdn7': '检索失败',
			'k_158cssa': '腾讯地图',
			'k_157htdw': '高德地图',
			'k_157im4z': '百度地图',
			'k_157m20e': '苹果地图',
			'k_1bqk7kl': '未检测到高德地图',
			'k_12ba1nv': '未检测到腾讯地图',
			'k_1dz8sci': '未检测到百度地图',
			'k_0f7fvky': '打开失败',
			'k_1l2v0we': '腾讯大厦内，招行信息研发大厦附近18米',
			'k_10o8gk2': '搜索地点',
			'k_10o86v7': '未知地点',
			'k_0elt0kw': '添加群聊',
			'k_03f15qk': '黑名单',
			'k_0s3p3ji': '暂无黑名单',
			'k_0uc5cnb': '我们还在内测中，暂不支持创建频道。',
			'k_0s5ey0o': '实时音视频 TRTC',
			'k_03gpl3d': '大家好',
			'k_0352fjr': '无网络连接，进入频道失败',
			'k_0d7n018': '结束话题',
			'k_0d826hk': '置顶话题',
			'k_15wcgna': '结束成功',
			'k_15wo7xu': '置顶成功',
			'k_02slfpm': ({required Object errorMessage}) => '发生错误 $errorMessage',
			'k_0h22snw': '语音通话',
			'k_0h20hg5': '视频通话',
			'k_002s934': '话题',
			'k_18g3zdo': '云通信·IM',
			'k_1m8vyp0': '新的联系人',
			'k_0elz70e': '我的群聊',
			'k_18tb4mo': '无联系人',
			'k_18nuh87': '联系我们',
			'k_1uf134v': '反馈及建议可以加入QQ群：788910197',
			'k_0xlhhrn': '在线时间，周一到周五，早上10点 - 晚上8点',
			'k_0gmpgcg': '暂无会话',
			'k_1m8zuj4': '选择联系人',
			'k_002tu9r': '性能',
			'k_0vwtop2': ({required Object getMsg}) => '获取到的消息:$getMsg',
			'k_0upijvs': ({required Object message}) => '获取讨论区列表失败 $message',
			'k_1tmcw5c': '请完善话题标题',
			'k_1cnmslk': '必须选择一个标签',
			'k_0v5hlay': ({required Object message}) => '创建话题失败 $message',
			'k_0z3ytji': '创建话题成功',
			'k_1a8vem3': '创建者异常',
			'k_0eskkr1': '选择讨论区',
			'k_0d7plb5': '创建话题',
			'k_144t0ho': '---- 相关讨论 ----',
			'k_0pnz619': '填写话题标题',
			'k_136v279': '+标签（至少添加一个）',
			'k_04hjhvp': '讨论区参数异常',
			'k_002r79h': '全部',
			'k_03ejkb6': '已加入',
			'k_172tngw': '话题（未连接）',
			'k_0rnmfc4': '该讨论区下暂无话题',
			'k_1pq0ybn': '暂未加入任何话题',
			'k_0bh95w0': '无网络连接，进入话题失败',
			'k_0em28sp': '暂无群聊',
			'k_04dqh36': '暂无新联系人',
			'k_08k00l9': '正在加载...',
			'k_197r4f7': '即时通信服务连接成功',
			'k_1s5xnir': '即时通信 SDK初始化失败',
			'k_0owk5ss': ({required Object failedReason}) => '登录失败 $failedReason',
			'k_15bxnkw': '网络连接丢失',
			'k_0glj9us': '发起会话',
			'k_1631kyh': '创建工作群',
			'k_1644yii': '创建社交群',
			'k_1fxfx04': '创建会议群',
			'k_1cnkqc9': '创建直播群',
			'k_002r09z': '频道',
			'k_003nvk2': '消息',
			'k_1jwxwgt': '连接中...',
			'k_03gm52d': '通讯录',
			'k_003k7dc': '我的',
			'k_14yh35u': '登录·即时通信',
			'k_0st7i3e': '体验群组聊天，音视频对话等IM功能',
			'k_0cr1atw': '中国大陆',
			'k_0mnxjg7': '欢迎使用腾讯云即时通信 IM，为保护您的个人信息安全，我们更新了《隐私政策》，主要完善了收集用户信息的具体内容和目的、增加了第三方SDK使用等方面的内容。',
			'k_1545beg': '请您点击',
			'k_0opnzp6': '《用户协议》',
			'k_00041m1': '和',
			'k_0orhtx0': '《隐私协议》',
			'k_11x8pvm': '并仔细阅读，如您同意以上内容，请点击“同意并继续”，开始使用我们的产品与服务！',
			'k_17nw8gq': '同意并继续',
			'k_1nynslj': '不同意并退出',
			'k_0jsvmjm': '请输入手机号',
			'k_1lg8qh2': '手机号格式错误',
			'k_03jia4z': '无网络连接',
			'k_007jqt2': '验证码发送成功',
			'k_1a55aib': '验证码异常',
			'k_1mw45lz': ({required Object errorReason}) => '登录失败$errorReason',
			'k_16r3sej': '国家/地区',
			'k_15hlgzr': '选择你的国家区号',
			'k_1bnmt3h': '请使用英文搜索',
			'k_03fei8z': '手机号',
			'k_03aj66h': '验证码',
			'k_1m9jtmw': '请输入验证码',
			'k_0y1wbxk': '获取验证码',
			'k_002ri2g': '登陆',
			'k_161ecly': '当前无网络',
			'k_11uz2i8': '重试网络',
			'k_1vhzltr': '腾讯云即时通信IM',
			'k_0j433ys': '腾讯云TRTC',
			'k_0epvs61': '更换皮肤',
			'k_12u8g8l': '免责声明',
			'k_1p0j8i3': 'IM即时通信（“本产品”）是由腾讯云提供的一款测试产品，腾讯云享有本产品的著作权和所有权。本产品仅用于功能体验，不得用于任何商业用途。为配合相关部门监管要求，本产品音视频互动全程均有录音录像存档，严禁在使用中有任何色情、辱骂、暴恐、涉政等违法内容传播。',
			'k_0k7qoht': '同意任何用户加好友',
			'k_1j91bvz': 'TUIKIT 为你选择一个头像?',
			'k_1wmkneq': '加我为好友时需要验证',
			'k_1eitsd0': '关于腾讯云·通信',
			'k_1919d6m': '隐私条例',
			'k_0wqhgor': '个人信息收集清单',
			'k_12rfxml': '第三方信息共享清单',
			'k_131g7q4': '注销账户',
			'k_03fel2u': '版本号',
			'k_16kts8h': '退出登录',
			'k_13spdki': '发送消息',
			'k_14c600t': '修改备注',
			'k_1f811a4': '支持数字、英文、下划线',
			'k_11z7ml4': '详细资料',
			'k_1ajt0b1': '获取当前位置失败',
			'k_0lhm9xq': '发起检索成功',
			'k_0fdeled': '发起检索失败',
			'k_1yh0a50': 'mapDidLoad-地图加载完成',
			'k_1t2zg6h': '图片验证码校验失败',
			'k_03ibfd2': '星期七',
			'k_1o7lf2y': ({required Object errorMessage}) => '服务器错误：$errorMessage',
			'k_118l7sq': ({required Object requestErrorMessage}) => '请求错误：$requestErrorMessage',
			'k_003nfx9': '深沉',
			'k_003rvjp': '轻快',
			'k_003rtht': '明媚',
			'k_003qxiw': '梦幻',
			'k_0s5zoi3': ({required Object option1}) => '发生错误 $option1',
			'k_0i8egqa': ({required Object option8}) => '获取到的消息:$option8',
			'k_0pokyns': ({required Object option8}) => '获取讨论区列表失败 $option8',
			'k_1y03m8a': ({required Object option8}) => '创建话题失败 $option8',
			'k_1v6uh9c': ({required Object option8}) => '登录失败 $option8',
			'k_0t5a9hl': ({required Object option1}) => '登录失败$option1',
			'k_0k3uv02': ({required Object option8}) => '服务器错误：$option8',
			'k_1g9o3kz': ({required Object option8}) => '请求错误：$option8',
			'k_14cahuz': '关于腾讯云 · IM',
			'k_0llnalm': 'SDK版本号',
			'k_13dyfii': '应用版本号',
			'k_12h52zh': '隐私政策',
			'k_0fxhhwb': '用户协议',
			'k_18z2e6q': 'IM即时通信（“本产品”）是由腾讯云提供的一款测试产品，腾讯云享有本产品的著作权和所有权。本产品仅用于功能体验，不得用于任何商业用途。严禁在使用中有任何色情、辱骂、暴恐、涉政等违法内容传播。',
			'k_0zu7dd7': '信息收集清单',
			'k_0mcqhgh': '信息共享清单',
			'k_12eqaty': '确认注销账户',
			'k_0ziqsr6': '账户注销成功！',
			'k_002qtgt': '注销',
			'k_0rvdu91': ({required Object option1}) => '注销后，您将无法使用当前账号，相关数据也将删除且无法找回。当前账号ID: $option1',
			'k_15d22qk': '注销账号',
			'k_036uv3f': '腾讯云IM',
			'k_167916k': '微信好友',
			'k_03euwr1': '朋友圈',
			'k_0cxccci': '邀请你视频通话',
			'k_06lhh4b': '邀请你语音通话',
			'k_1ywo9ut': '即时通信 IM (Instant Messaging)基于 QQ 底层 IM 能力开发，仅需植入 SDK 即可轻松集成聊天、会话、群组、资料管理和直播弹幕能力，也支持通过信令消息与白板等其他产品打通，全面覆盖您的业务场景，支持各大平台小程序接入使用，全面满足通信需要',
			'k_0ios26v': '未检测到微信安装',
			'k_1jg6d5x': '《隐私政策摘要》',
			'k_0selni4': '《隐私政策》',
			'k_10s6v2i': '《信息收集清单》',
			'k_0pasxq8': '《信息共享清单》',
			'k_003r6vf': '登录',
			'k_03f2zbs': '分享到',
			'k_0cfkcaz': '消息推送',
			'k_1rmkb2w': '推送新聊天消息',
			'k_1lg375c': '新消息提醒',
			'k_1t0akzp': ({required Object option1}) => '注销后，您将无法使用当前账号，相关数据也将删除且无法找回。当前账号ID: $option1',
			'k_1699p6d': '腾讯大厦',
			'k_1ngd60h': '深圳市深南大道10000号',
			'k_1na29vg': '位置消息维护中',
			'k_1xmms9t': '进群申请列表',
			'k_0dla4vp': '反馈及建议可以加入QQ群',
			'k_1odrjd1': '在线时间: 周一到周五，早上10点 - 晚上8点',
			'k_1bh903m': 'QQ群号复制成功',
			'k_16264lp': '复制群号',
			'k_18ger86': '腾讯云 · IM',
			'k_1vd70l1': '服务亿级 QQ 用户的即时通讯技术',
			'k_036phup': '腾讯云IM',
			'k_0gfsln9': '信息已变更',
			'k_0ow4akh': '请根据Demo的README指引，配置百度AK，体验DEMO的位置消息能力',
			'k_1kzh3lo': '请根据本文档指引 https://docs.qq.com/doc/DSVliWE9acURta2dL ， 快速体验位置消息能力',
			'k_161zzkm': '请输入用户名',
			'k_1veosyv': '请在环境变量中写入key',
			'k_03exdnb': '用户名',
			'k_16kquu8': '当前目录',
			'k_0fbvuqs': '开始拷贝',
			'k_16j153h': '腾讯云IM APP（“本产品”）是由腾讯云提供的一款测试产品，腾讯云享有本产品的著作权和所有权。本产品仅用于功能体验，不得用于任何商业用途。严禁在使用中有任何色情、辱骂、暴恐、涉政等违法内容传播。',
			'k_13ghyf8': '【安全提示】本 APP 仅用于体验腾讯云即时通信 IM 产品功能，不可用于业务洽谈与拓展。请勿轻信汇款、中奖等涉及钱款的信息，勿轻易拨打陌生电话，谨防上当受骗。',
			'k_0gt6cro': '点此投诉',
			'k_03595fk': ({required Object option1}) => ' 等$option1人',
			'k_1gpzgni': ({required Object option2}) => '$option2人群',
			'k_02lfg57': '新群聊',
			'k_17ifd8i': '欢迎使用本 APP 体验腾讯云 IM 产品服务',
			'k_1f0ms23': '消息阅读状态',
			'k_1c0x9ha': '关闭后，您收发的消息均不带消息阅读状态，您将无法看到对方是否已读，同时对方也无法看到你是否已读。',
			'k_1dzhdr5': '显示在线状态',
			'k_0mwsniq': '关闭后，您将不可以在会话列表和通讯录中看到好友在线或离线的状态提示。',
			'k_0f7h6ay': '连接失败',
			'k_0wreawq': '百度地图插件暂不支持网页版，请使用手机APP DEMO体验位置消息能力。',
			'k_03c56co': '不选择',
			'k_1klqdh1': '仅限汉字、英文、数字和下划线',
			'k_03el5lp': '未填写',
			'k_0554lam': '好友工作群（Work）',
			'k_1hyz1ua': '陌生人社交群（Public）',
			'k_1s8hjin': '临时会议群（Meeting）',
			'k_16ejs8f': '直播群（AVChatRoom）',
			'k_1rqdzbh': '社群（Community）',
			'k_1aue1b6': '类似普通微信群，创建后仅支持已在群内的好友邀请加群，且无需被邀请方同意或群主审批。',
			'k_0uldek7': '类似 QQ 群，创建后群主可以指定群管理员，用户搜索群 ID 发起加群申请后，需要群主或管理员审批通过才能入群。',
			'k_1nv4w25': '创建后可以随意进出，且支持查看入群前消息；适合用于音视频会议场景、在线教育场景等与实时音视频产品结合的场景。',
			'k_1wbmoof': '创建后可以随意进出，没有群成员数量上限，但不支持历史消息存储；适合与直播产品结合，用于弹幕聊天场景。',
			'k_11mlyaa': '创建后可以随意进出，最多支持10w人，支持历史消息存储，用户搜索群 ID 发起加群申请后，无需管理员审批即可进群。',
			'k_0ylgdrb': '社群DEMO正在开发中，即将上线',
			'k_0elsjm2': '创建群聊',
			'k_1iw4gdk': '允许任何人',
			'k_0i5ffqf': '需要验证信息',
			'k_111mgqj': '禁止加我为好友',
			'k_03go2lu': '未指定',
			'k_15zb99m': '加我为好友的方式',
			'k_1llp7tu': '该用户不存在',
			'k_0tbyqyb': '加载中…',
			'k_0td1p3f': '保存中…',
			'k_1ui0gai': '搜索指定内容',
			'k_03agld7': '群提示',
			'k_002wkr3': '翻译',
			'k_13g4hxv': '翻译完成',
			'k_003mmoz': '火箭',
			'k_003nogx': '飞机',
			'k_003pjj6': '皇冠',
			'k_000340k': '花',
			'k_0cv8ngo': ({required Object option1}) => '送出$option1',
			'k_03a2zjl': '送礼物',
			'k_0003yq8': '朵',
			'k_13k5228': '赞了直播间',
			'k_1k0rrvn': '说点啥...',
			'k_13jzi5y': '进入直播间',
			'k_14asoqo': '取消关注',
			'k_003ohwe': '关注',
			'k_1h33pzv': ({required Object option1}) => '粉丝 $option1 |',
			'k_07skbgr': ({required Object option2}) => ' 关注 $option2',
			'k_1c99nb3': ({required Object option1}) => '$option1 万+',
			'k_19mfrrb': '在线观众',
			'k_13m65um': '观众信息',
			'k_19kj6te': ({required Object option1}) => '$option1 本场点赞',
			'k_1qqgjra': ({required Object option3}) => '$option3条未读消息',
			'k_0uubyjr': '以下为未读消息',
			'k_0kg1wsx': '选择群类型',
			'k_003m6xh': '设置',
			'k_18nszwl': '关于我们',
			'k_003txiw': '关于',
			'k_12fp4oc': '官方网站',
			'k_1391sy5': '一次开发，打包部署至所有平台，宽屏窄屏均可自适应',
			'k_002vu95': '欢迎',
			'k_0o6nt4d': '我已阅读并同意 ',
			'k_12l2415': '腾讯云IM各项协议及规定',
			'k_0rcqou9': 'Copyright © 2013-2023 Tencent Cloud. All Rights Reserved. 腾讯云 版权所有',
			'k_003lmhx': '群组',
			'k_1s251fa': '联系人 & 群组',
			'k_0cjp3hx': '请选择联系人或群组，以查看详情',
			'k_12veoax': '渠道切换：',
			'k_002rfh9': '国际',
			'k_0864lq3': '如果您在使用过程中有任何疑问，请通过如下渠道联系我们',
			'k_12625cy': '立即进群',
			'k_131lvxd': '我的账户',
			'k_002qep7': '界面',
			'k_002vbyp': '外观',
			'k_16owrwc': '浅色模式',
			'k_01zair9': '深色模式 (开发中)',
			'k_002skx2': '主题',
			'k_002wzvs': '语言',
			'k_002woft': '英语',
			'k_129eldp': '繁体中文',
			'k_129ekqk': '简体中文',
			'k_002whil': '日语',
			'k_002wqld': '韩语',
			'k_003is6v': '通用',
			'k_12s2mfc': '查看详情',
			'k_12fsjye': '相关网站',
			'k_16uejmj': '个人中心',
			'k_0dtyory': '意见反馈',
			'k_03oy6z4': '所有 SDK',
			'k_03bh54n': '源代码',
			'k_0s3sgel': '移出黑名单',
			'k_16as7eq': '表情回应',
			'k_003s12u': '回复',
			'k_003s38r': '更多',
			'k_003molk': '表情',
			'k_165bbw6': '消息历史',
			'k_13sqc0z': '清除消息',
			'k_0glns86': '删除会话',
			'k_13s99rx': '清空消息',
			'k_11vsa3j': '退出群组',
			'k_11vvszp': '解散群组',
			'k_15i9w72': '群管理员',
			'k_0p3espj': '设置备注名',
			'k_118sw9v': '立即搜索',
			'k_1xn4cn2': '运行环境检测',
			'k_0sy25ey': '请先安装 Microsoft Edge WebView2 运行环境，以使用本程序。',
			'k_0g4tlsb': '立即下载',
			'k_13ozr8k': '暂不支持',
			'k_16yiku8': 'Web 端暂不支持本地搜索，请使用 Mobile App 或 Desktop 端体验',
			'k_003lz6t': '对方',
			'k_1xf4yre': ({required Object option1}) => '发送给$option1',
			'k_003por5': '截图',
			'k_0c67rdb': '允许多选',
			'k_11lav8q': '匿名投票',
			'k_137cjfq': '公开结果',
			'k_0e3jces': '请输入选项',
			'k_0dcbhiz': '新增选项',
			'k_003r4qf': '发布',
			'k_1xa5q8q': '请输入投票主题',
			'k_003nv7m': '已投',
			'k_002ym5d': '票，',
			'k_003pfxt': '占比',
			'k_0fxdch1': '未初始化投票插件，请先初始化',
			'k_1lzoopr': '非投票消息，请检查',
			'k_03ahybu': '已投票',
			'k_11lamu8': '立即投票',
			'k_0b9h7nq': '投票已结束',
			'k_0c7zem1': '再次发送',
			'k_11l1qvo': '结束投票',
			'k_0z314c0': '[多选]',
			'k_0z2zcm7': '[单选]',
			'k_0y8ap8v': '[公开]',
			'k_0y4cs5n': '[私有]',
			'k_0y6agtt': '[匿名]',
			'k_0y68wmo': '[实名]',
			'k_1pssgjf': ({required Object option1}) => '应参与人数：$option1',
			'k_0x9zkqf': ({required Object option2}) => '实际参与人数：$option2',
			'k_09ikyqj': '查看全部选项',
			'k_0h2jp2z': ({required Object option1}) => '$option1票',
			'k_0y2zr3y': '[投票]',
			'k_11lci1l': '创建投票',
			'k_003l988': '投票',
			'k_1rw7s82': ' 访问相册中视频权限，以正常使用发送视频等功能。',
			'k_003rcwm': '打开',
			'k_1698c42': '在访达中打开',
			'k_066fxsz': '查看文件夹',
			'k_0k432y2': '无法发送，包含文件夹',
			'k_002wb4y': '会话',
			'k_0od4qyh': '视频文件异常',
			'k_1cdzld5': '请填写商品信息',
			'k_19qt9y2': '服务评价',
			'k_13s7ltw': '卡片消息',
			'k_13ajr25': '在线客服',
			'k_0ti5mfz': '暂无在线客服',
			'k_1bfkxg9': '不支持 0KB 文件的传输',
			'k_0vvsw7g': '文件处理异常',
			'k_06e224q': '[消息被管理员撤回]',
			'k_1u1mjcl': '[消息被撤回]',
			'k_1qcqxea': '选择多个会话',
			'k_1qgmc20': '选择一个会话',
			'k_1d8nx6f': '在新窗口中打开',
			'k_1hz05ax': '正在下载原始资源，请稍候...',
			'k_1fszgep': '欢迎前往知聊社区参与讨论',
			'k_1xtvvs9': '此社区使用本 App 同款 Flutter UIKit 完成全平台开发',
			'k_0cdljc3': '前往知聊社区',
			'k_167dvo3': '选择好友',
			'k_1u1jwb8': 'zhiliao.qq.com',
		};
	}
}

extension on _StringsZhHant {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'k_1yemzyd': '收到一條訊息',
			'k_0ylosxn': '自訂訊息',
			'k_13sajrj': '貼圖訊息',
			'k_13sjeb7': '檔案訊息',
			'k_0yd2ft8': '群提示訊息',
			'k_13s7mxn': '相片訊息',
			'k_13satlt': '位置訊息',
			'k_00bbtsx': '合併轉發訊息',
			'k_13sqwu4': '語音訊息',
			'k_13sqjjp': '影片',
			'k_1fdhj9g': '此版本不支援此訊息',
			'k_06pujtm': '同意任何用戶加為好友',
			'k_0gyhkp5': '需要驗證',
			'k_121ruco': '拒絕任何人加為好友',
			'k_05nspni': '自訂欄位',
			'k_03fchyy': '群組頭像',
			'k_03i9mfe': '群組簡介',
			'k_03agq58': '群組名稱',
			'k_039xqny': '群組通知',
			'k_003tr0a': '群組擁有者',
			'k_03c49qt': '移交群組',
			'k_002wddw': '禁言',
			'k_0got6f7': '解除禁言',
			'k_1uaqed6': '[自訂]',
			'k_0z2z7rx': '[語音]',
			'k_0y39ngu': '[貼圖]',
			'k_0y1a2my': '[相片]',
			'k_0z4fib8': '[影片]',
			'k_0y24mcg': '[位置]',
			'k_0pewpd1': '[聊天記錄]',
			'k_13s8d9p': '未知訊息',
			'k_1c3us5n': '當前群組不支援@全體成員',
			'k_11k579v': '發言中有非法語句',
			'k_003qkx2': '日曆',
			'k_003n2pz': '相機',
			'k_03idjo0': '聯絡人',
			'k_003ltgm': '位置',
			'k_02k3k86': '米高峰',
			'k_003pm7l': '相簿',
			'k_15ao57x': '相簿寫入',
			'k_164m3jd': '本地存儲',
			'k_03r6qyx': '我們需要您的同意才能獲取信息',
			'k_02noktt': '不允許',
			'k_00043x4': '好',
			'k_003qzac': '昨天',
			'k_003r39d': '前天',
			'k_03fqp9o': '星期日',
			'k_03ibg5h': '星期一',
			'k_03i7hu1': '星期二',
			'k_03iaiks': '星期三',
			'k_03el9pa': '星期四',
			'k_03i7ok1': '星期五',
			'k_03efxyg': '星期六',
			'k_003q7ba': '下午',
			'k_003q7bb': '上午',
			'k_003pu3h': '現在',
			'k_0n9pyxz': '用戶不存在',
			'k_1bjwemh': '搜尋用戶 ID',
			'k_003kv3v': '搜尋',
			'k_16758qw': '加為好友',
			'k_0i553x0': '填寫驗證信息',
			'k_031ocwx': '請填寫備註和分組',
			'k_003ojje': '備註',
			'k_003lsav': '分組',
			'k_167bdvq': '我的好友',
			'k_156b4ut': '好友請求已發送',
			'k_002r305': '發送',
			'k_03gu05e': '聊天室',
			'k_03b4f3p': '會議群',
			'k_03avj1p': '公開群',
			'k_03asq2g': '工作群',
			'k_03b3hbi': '未知群組',
			'k_1lqbsib': '該群組不存在',
			'k_03h153m': '搜尋群組 ID',
			'k_0oxak3r': '群組請求已發送',
			'k_002rflt': '刪除',
			'k_1don84v': '無法定位到原訊息',
			'k_003q5fi': '復製',
			'k_003prq0': '轉發',
			'k_002r1h2': '多選',
			'k_003j708': '引用',
			'k_003pqpr': '回收',
			'k_03ezhho': '已復製',
			'k_11ctfsz': '暫未實現',
			'k_1hbjg5g': '[群系統訊息]',
			'k_03tvswb': '[未知訊息]',
			'k_155cj23': '您回收了一條訊息，',
			'k_0gapun3': '重新編輯',
			'k_1aszp2k': '您確定要重發這條訊息麽？',
			'k_003rzap': '確定',
			'k_003nevv': '取消',
			'k_0003z7x': '您',
			'k_002wfe4': '已讀',
			'k_002wjlg': '未讀',
			'k_0h1ygf8': '發起通話',
			'k_0h169j0': '取消通話',
			'k_0h13jjk': '接受通話',
			'k_0h19hfx': '拒絕通話',
			'k_0obi9lh': '超時未接聽',
			'k_001nmhu': '用其他應用開啟',
			'k_1ht1b80': '正在接收中',
			'k_105682d': '圖片載入失敗',
			'k_0pytyeu': '圖片保存成功',
			'k_0akceel': '圖片保存失敗',
			'k_003rk1s': '保存',
			'k_04a0awq': '[語音訊息]',
			'k_105c3y3': '影片載入失敗',
			'k_176rzr7': '聊天記錄',
			'k_0d5z4m5': '選擇提醒人',
			'k_003ngex': '完成',
			'k_1665ltg': '發起呼叫',
			'k_003n8b0': '拍攝',
			'k_003kthh': '照片',
			'k_003tnp0': '檔案',
			'k_0jhdhtp': '發送失敗,影片不能大於100MB',
			'k_119ucng': '圖片不能為空',
			'k_13dsw4l': '松開取消',
			'k_0am7r68': '手指上滑，取消發送',
			'k_15jl6qw': '說話時間太短!',
			'k_0gx7vl6': '按住說話',
			'k_15dlafd': '逐條轉發',
			'k_15dryxy': '合並轉發',
			'k_1eyhieh': '確定刪除已選訊息',
			'k_17fmlyf': '清除聊天',
			'k_0dhesoz': '取消置頂',
			'k_002sk7x': '置頂',
			'k_003ll77': '草稿',
			'k_03icaxo': '自定義',
			'k_1uaov41': '查找聊天內容',
			'k_003kfai': '未知',
			'k_13dq4an': '自動審批',
			'k_0l13cde': '管理員審批',
			'k_11y8c6a': '禁止加群',
			'k_1kvyskd': '無網絡連接，無法修改',
			'k_16payqf': '加群方式',
			'k_0vzvn8r': '修改群名稱',
			'k_038lh6u': '群管理',
			'k_0k5wyiy': '設置管理員',
			'k_0goiuwk': '全員禁言',
			'k_1g889xx': '全員禁言開啟後，只允許群主和管理員發言。',
			'k_0wlrefq': '添加需要禁言的群成員',
			'k_0goox5g': '設置禁言',
			'k_08daijh': '成功取消管理員身份',
			'k_0k5u935': '添加管理員',
			'k_03enyx5': '群成員',
			'k_0h1svv1': '刪除群成員',
			'k_0h1g636': '添加群成員',
			'k_0uj7208': '無網絡連接，無法查看群成員',
			'k_0hpukyx': '查看更多群成員',
			'k_0qtsar0': '訊息免打擾',
			'k_0ef2a12': '修改我的群昵稱',
			'k_1aajych': '僅限中文、字母、數字和下劃線，2-20個字',
			'k_137pab5': '我的群昵稱',
			'k_0ivim6d': '暫無群公告',
			'k_03eq6cn': '群公告',
			'k_002vxya': '編輯',
			'k_17fpl3y': '置頂聊天',
			'k_03es1ox': '群類型',
			'k_003mz1i': '同意',
			'k_003lpre': '拒絕',
			'k_003qk66': '頭像',
			'k_003lhvk': '昵稱',
			'k_003ps50': '賬號',
			'k_15lx52z': '個性簽名',
			'k_003qgkp': '性別',
			'k_003m6hr': '生日',
			'k_0003v6a': '男',
			'k_00043x2': '女',
			'k_03bcjkv': '未設置',
			'k_11s0gdz': '修改昵稱',
			'k_0p3j4sd': '僅限中字、字母、數字和下劃線',
			'k_15lyvdt': '修改簽名',
			'k_0vylzjp': '這個人很懶，什麽也沒寫',
			'k_1hs7ese': '等上線再改這個',
			'k_03exjk7': '備註名',
			'k_0s3skfd': '加入黑名單',
			'k_0p3b31s': '修改備註名',
			'k_0003y9x': '無',
			'k_11zgnfs': '個人資料',
			'k_1tez2xl': '暫無個性簽名',
			'k_118prbn': '全局搜尋',
			'k_1m9dftc': '全部聯絡人',
			'k_0em4gyz': '全部群組',
			'k_002twmj': '群組',
			'k_09kga0d': '更多聊天記錄',
			'k_09khmso': '相關聊天記錄',
			'k_0vjj2kp': '群組的聊天記錄',
			'k_003n2rp': '選擇',
			'k_03ignw6': '所有人',
			'k_03erpei': '管理員',
			'k_0qi9tno': '群主、管理員',
			'k_1m9exwh': '最近聯絡人',
			'k_119nwqr': '輸入不能為空',
			'k_0pzwbmg': '影片保存成功',
			'k_0aktupv': '影片保存失敗',
			'k_1qbg9xc': ({required Object option8}) => '$option8為 ',
			'k_1wq5ubm': ({required Object option7}) => '$option7修改',
			'k_0y5pu80': ({required Object option6}) => '$option6退出群組',
			'k_0nl7cmd': ({required Object option5}) => '邀請$option5加入群組',
			'k_1ju5iqw': ({required Object option4}) => '將$option4踢出群組',
			'k_1ovt677': ({required Object option3}) => '用戶$option3加入了群組',
			'k_0k05b8b': ({required Object option2}) => '$option2 被',
			'k_0wm4xeb': ({required Object option2}) => '系統訊息 $option2',
			'k_0nbq9v3': ({required Object option2}) => '通話時間：$option2',
			'k_0i1kf53': ({required Object option2}) => '[檔案] $option2',
			'k_1gnnby6': ({required Object option2}) => ' 想訪問您的$option2',
			'k_1wh4atg': ({required Object option2}) => '$option2 分鐘前',
			'k_07sh7g1': ({required Object option2}) => '昨天 $option2',
			'k_1pj8xzh': ({required Object option2}) => '我的用戶ID: $option2',
			'k_0py1evo': ({required Object option2}) => '個性簽名: $option2',
			'k_1kvj4i2': ({required Object option2}) => '$option2回收了一條訊息',
			'k_1v0lbpp': ({required Object option2}) => '「$option2」暫不可以開啟此類檔案，你可以使用其他應用開啟並預覽',
			'k_0torwfz': ({required Object option2}) => '選擇成功$option2',
			'k_0i1bjah': ({required Object option1}) => '$option1回收了一條訊息',
			'k_1qzxh9q': ({required Object option3}) => '通話時間：$option3',
			'k_0wrgmom': ({required Object option1}) => '[語音通話]：$option1',
			'k_06ix2f0': ({required Object option2}) => '[視訊通話]：$option2',
			'k_08o3z5w': ({required Object option1}) => '[檔案] $option1',
			'k_0ezbepg': ({required Object option2}) => '$option2[有人@我]',
			'k_1ccnht1': ({required Object option2}) => '$option2[@所有人]',
			'k_1k3arsw': ({required Object option2}) => '管理員 ($option2/10)',
			'k_1d4golg': ({required Object option1}) => '群成員($option1人)',
			'k_1bg69nt': ({required Object option1}) => '$option1人',
			'k_00gjqxj': ({required Object option1}) => '個性簽名: $option1',
			'k_0c29cxr': ({required Object option1}) => '$option1條相關聊天記錄',
			'k_1twk5rz': ({required Object option1}) => '與$option1的聊天記錄',
			'k_1vn4xq1': ({required Object adminMember}) => '將 $adminMember 取消管理員',
			'k_0e35hsw': '為方便您將所拍攝的照片或影片發送給朋友，以及進行視訊通話，請允許我們訪問攝像頭進行拍攝照片和影片。',
			'k_0dj6yr7': '為方便您發送語音訊息、拍攝影片以及音視訊通話，請允許我們使用咪高風進行錄音。',
			'k_003qnsl': '存儲',
			'k_0s3rtpw': '為方便您查看和選擇相冊裏的圖片影片發送給朋友，以及保存內容到設備，請允許我們訪問您設備上的照片、媒體內容。',
			'k_0tezv85': ({required Object option2}) => ' 申請獲取$option2',
			'k_002rety': '權限',
			'k_18o68ro': '需要授予',
			'k_1onpf8u': ' 相機權限，以正常使用拍攝圖片/影片、視訊通話等功能。',
			'k_17irga5': ' 咪高風權限，以正常使用發送語音訊息、拍攝影片、音視訊通話等功能。',
			'k_0572kc4': ' 訪問照片權限，以正常使用發送圖片、影片等功能。',
			'k_0slykws': ' 訪問相冊寫入權限，以正常使用存儲圖片、影片等功能。',
			'k_119pkcd': ' 檔案讀寫權限，以正常使用在聊天功能中的圖片查看、選擇能力和發送檔案的能力。',
			'k_0gqewd3': '以後再說',
			'k_03eq4s1': '去開啟',
			'k_0nt2uyg': '回到最新位置',
			'k_04l16at': ({required Object option1}) => '$option1條新訊息',
			'k_13p3w93': '有人@我',
			'k_18w5uk6': '@所有人',
			'k_0jmujgh': '其他檔案正在接收中',
			'k_12s5ept': '訊息詳情',
			'k_0mxa4f4': ({required Object option1}) => '$option1人已讀',
			'k_061tue3': ({required Object option2}) => '$option2人未讀',
			'k_18qjstb': '轉讓群主',
			'k_0on1aj2': ({required Object option2}) => '有$option2條@我訊息',
			'k_09j4izl': '[有人@我] ',
			'k_1oqtjw0': '[@所有人] ',
			'k_1x5a9vb': ({required Object option1}) => '我是: $option1',
			'k_14n31e7': '進群請求',
			'k_08nc5j1': ({required Object option1}) => '群類型: $option1',
			'k_1josu12': ({required Object option1}) => '$option1 條入群請求',
			'k_0n2x5s0': ({required Object option2}) => '驗證訊息: $option2',
			'k_03c1nx0': '已同意',
			'k_03aw9w8': '已拒絕',
			'k_038ryos': '去處理',
			'k_0gw8pum': '進群申請',
			'k_1gcvfrj': '請填寫備註名',
			'k_002v9zj': '確認',
			'k_10oqrki': '輕觸拍照',
			'k_0f8b3ws': '加載失敗',
			'k_11cm5lm': '手動聚焦',
			'k_002uzrd': '預覽',
			'k_003qkn3': '錄像',
			'k_003k6a7': '拍照',
			'k_0bqpqco': '拍照按鈕',
			'k_1626ozl': '停止錄像',
			'k_003lvmu': '前置',
			'k_003lued': '後置',
			'k_003lwzh': '外置',
			'k_002qzi3': '關閉',
			'k_003pufb': '自動',
			'k_0apm0ze': '拍照時閃光',
			'k_157zog5': '始終閃光',
			'k_0cfyqhy': ({required Object option1}) => '$option1 畫面預覽',
			'k_0phctlz': ({required Object option2}) => '閃光模式: $option2',
			'k_02vfqe0': ({required Object option3}) => '切換至 $option3 攝像頭',
			'k_0f0y9ex': '說話時間太短',
			'k_0ln70tk': '無法打開URL',
			'k_11a3jdv': '輕觸拍照，長按攝像',
			'k_1k18miv': '請傳入離開群組生命周期函數，提供返回首頁或其他頁面的導航方法。',
			'k_0gmwbnd': '全員禁言中',
			'k_0got2zr': '您被禁言',
			'k_0y9jck8': '你必須自定義search bar，並處理點擊跳轉',
			'k_0yum3tv': '如使用自定義區域，請在profileWidgetBuilder傳入對應組件',
			'k_09kalj0': '清空聊天記錄',
			'k_14j5iul': '刪除並退出',
			'k_125ru1w': '解散該群',
			'k_0jtutmw': '退出後不會接收到此群聊訊息',
			'k_0jtzmqa': '解散後不會接收到此群聊訊息',
			'k_0r8fi93': '好友添加成功',
			'k_02qw14e': '好友申請已發出',
			'k_0n3md5x': '當前用戶在黑名單',
			'k_094phq4': '好友添加失敗',
			'k_129scag': '好友刪除成功',
			'k_129uzfn': '好友刪除失敗',
			'k_1666isy': '清除好友',
			'k_1679vrd': '加為好友',
			'k_0h18bbi': '結束通話',
			'k_154q2hn': '通話超時未應答',
			'k_1mnjtnc': '對方已掛斷',
			'k_0l0mysn': '發生錯誤:',
			'k_03fn6rg': '無響應',
			'k_003luo3': '忙線',
			'k_154jvfi': '你被踢下線了',
			'k_1sp7jp6': '取消了通話',
			'k_1045haa': '等待對方接受邀請...',
			'k_1gq7jv7': '邀請您通話...',
			'k_003m7ey': '掛斷',
			'k_03ectox': '揚聲器',
			'k_003q2a4': '接聽',
			'k_03ftugq': '攝像頭',
			'k_10setgr': '切到語音通話',
			'k_1g7i9jz': '切換攝像頭',
			'k_15ml1ls': '等待接聽',
			'k_0nj9x9s': '邀請你加入多人通話',
			'k_1vtto3l': '參與通話的還有:',
			'k_0h147mx': '正在通話',
			'k_0j6aylo': ({required Object option1}) => '通話時長：$option1',
			'k_1fu9ahv': '全員禁言狀態',
			'k_1ualc52': '看看對方帶來的數據是啥',
			'k_0szluvp': '設置對方在線狀態',
			'k_0f4rnf8': '該用戶已是好友',
			'k_1tdkom4': '您已是群成員',
			'k_1p2lyuz': '對方正在輸入中...',
			'k_1g8wfpy': ({required Object option1}) => '...共$option1人',
			'k_12rv9vw': '回應詳情',
			'k_0n9p7g8': '群組不存在',
			'k_1tdh5vn': '您不是群成員',
			'k_0h1q57v': '暫無群成員',
			'k_0y5drq1': ({required Object option1}) => '[查看詳情 >>]($option1)',
			'k_03pjp61': '[表情訊息]',
			'k_1jpvzul': '[自定義訊息]',
			'k_03u3bh1': '[文件訊息]',
			'k_1odsnsw': '[群訊息]',
			'k_03sel4t': '[圖片訊息]',
			'k_03sfw3r': '[位置訊息]',
			'k_03xpuwq': '[合並訊息]',
			'k_07ycxwo': '[沒有元素]',
			'k_03rc9vz': '[文本訊息]',
			'k_046uopf': '[視頻訊息]',
			'k_0ehmsun': '設備存儲空間不足，建議清理，以獲得更好使用體驗',
			'k_003kmos': '圖片',
			'k_002s86q': '視頻',
			'k_06bk5ei': '視頻訊息僅限 mp4 格式',
			'k_13opfxf': 'Web網頁端不支持搜索',
			'k_1i0o0y2': '暫時僅限 Android/iOS 端',
			'k_045dtzl': ({required Object option1}) => '$option1的聊天記錄',
			'k_0t0131u': '群資料',
			'k_18ok8xz': '訊息接收方式',
			'k_03ax3ks': '群資料',
			'k_0sqvoqo': ({required Object option1}) => '將 $option1 設置為管理員',
			'k_1gbg1v8': ({required Object option1}) => '將 $option1 取消管理員',
			'k_17k64g4': '群聊創建成功！',
			'k_05mn217': '暫未安裝表情包插件，如需使用表情相關功能，請根據本文檔安裝：https://cloud.tencent.com/document/product/269/70746',
			'k_14j17nz': '暫無表情包',
			'k_1tmlcf0': '新通話呼入，但因權限不足，無法接聽。請確認攝像頭/麥克風權限已開啟。',
			'k_0fvjexh': '正在下載中',
			'k_1cdagzz': '已加入待下載隊列，其他文件下載中',
			'k_0g4vojc': '開始下載',
			'k_026hiq5': '訊息列表加載中',
			'k_0b9q00i': '騰訊大廈/////深圳市南山區深南大道10000號',
			'k_03fw6h1': '深圳市',
			'k_0f7mdn7': '檢索失敗',
			'k_158cssa': '騰訊地圖',
			'k_157htdw': '高德地圖',
			'k_157im4z': '百度地圖',
			'k_157m20e': '蘋果地圖',
			'k_1bqk7kl': '未檢測到高德地圖',
			'k_12ba1nv': '未檢測到騰訊地圖',
			'k_1dz8sci': '未檢測到百度地圖',
			'k_0f7fvky': '打開失敗',
			'k_1l2v0we': '騰訊大廈內，招行信息研發大廈附近18米',
			'k_10o8gk2': '搜索地點',
			'k_10o86v7': '未知地點',
			'k_0elt0kw': '添加群組',
			'k_03f15qk': '黑名單',
			'k_0s3p3ji': '暫無黑名單',
			'k_0uc5cnb': '我們還在內測中，暫不支持創建頻道。',
			'k_0s5ey0o': '實時音視訊 TRTC',
			'k_03gpl3d': '大家好',
			'k_0352fjr': '無網絡連接，進入頻道失敗',
			'k_0d7n018': '結束話題',
			'k_0d826hk': '置頂話題',
			'k_15wcgna': '結束成功',
			'k_15wo7xu': '置頂成功',
			'k_02slfpm': ({required Object errorMessage}) => '發生錯誤 $errorMessage',
			'k_0h22snw': '語音通話',
			'k_0h20hg5': '視訊通話',
			'k_002s934': '話題',
			'k_18g3zdo': '雲通信·IM',
			'k_1m8vyp0': '新的聯絡人',
			'k_0elz70e': '我的群組',
			'k_18tb4mo': '無聯絡人',
			'k_18nuh87': '聯絡我們',
			'k_1uf134v': '反饋及建議可以加入QQ群：788910197',
			'k_0xlhhrn': '在線時間，周一到周五，早上10點 - 晚上8點',
			'k_0gmpgcg': '暫無會話',
			'k_1m8zuj4': '選擇聯絡人',
			'k_002tu9r': '性能',
			'k_0vwtop2': ({required Object getMsg}) => '獲取到的訊息:$getMsg',
			'k_0upijvs': ({required Object message}) => '獲取討論區列表失敗 $message',
			'k_1tmcw5c': '請完善話題標題',
			'k_1cnmslk': '必須選擇一個標簽',
			'k_0v5hlay': ({required Object message}) => '創建話題失敗 $message',
			'k_0z3ytji': '創建話題成功',
			'k_1a8vem3': '創建者異常',
			'k_0eskkr1': '選擇討論區',
			'k_0d7plb5': '創建話題',
			'k_144t0ho': '---- 相關討論 ----',
			'k_0pnz619': '填寫話題標題',
			'k_136v279': '+標簽（至少添加一個）',
			'k_04hjhvp': '討論區參數異常',
			'k_002r79h': '全部',
			'k_03ejkb6': '已加入',
			'k_172tngw': '話題（未連接）',
			'k_0rnmfc4': '該討論區下暫無話題',
			'k_1pq0ybn': '暫未加入任何話題',
			'k_0bh95w0': '無網絡連接，進入話題失敗',
			'k_0em28sp': '暫無群組',
			'k_04dqh36': '暫無新聯絡人',
			'k_08k00l9': '正在載入...',
			'k_197r4f7': '即時通信服務連接成功',
			'k_1s5xnir': '即時通信 SDK初始化失敗',
			'k_0owk5ss': ({required Object failedReason}) => '登入失敗 $failedReason',
			'k_15bxnkw': '網絡連接丟失',
			'k_0glj9us': '發起會話',
			'k_1631kyh': '創建工作群',
			'k_1644yii': '創建社交群',
			'k_1fxfx04': '創建會議群',
			'k_1cnkqc9': '創建直播群',
			'k_002r09z': '頻道',
			'k_003nvk2': '訊息',
			'k_1jwxwgt': '連接中...',
			'k_03gm52d': '通訊錄',
			'k_003k7dc': '我的',
			'k_14yh35u': '登入·即時通信',
			'k_0st7i3e': '體驗群組聊天，音視訊對話等IM功能',
			'k_0cr1atw': '中國大陸',
			'k_0mnxjg7': '歡迎使用騰訊雲即時通信 IM，為保護您的個人信息安全，我們更新了《私隱政策》，主要完善了收集用戶信息的具體內容和目的、增加了第三方SDK使用等方面的內容。',
			'k_1545beg': '請您點擊',
			'k_0opnzp6': '《用戶協議》',
			'k_00041m1': '和',
			'k_0orhtx0': '《私隱協議》',
			'k_11x8pvm': '並仔細閱讀，如您同意以上內容，請點擊「同意並繼續」，開始使用我們的產品與服務！',
			'k_17nw8gq': '同意並繼續',
			'k_1nynslj': '不同意並退出',
			'k_0jsvmjm': '請輸入手機號碼',
			'k_1lg8qh2': '手機號碼格式錯誤',
			'k_03jia4z': '無網絡連接',
			'k_007jqt2': '驗證碼發送成功',
			'k_1a55aib': '驗證碼異常',
			'k_1mw45lz': ({required Object errorReason}) => '登入失敗$errorReason',
			'k_16r3sej': '國家/地區',
			'k_15hlgzr': '選擇你的國家區號',
			'k_1bnmt3h': '請使用英文搜尋',
			'k_03fei8z': '手機號碼',
			'k_03aj66h': '驗證碼',
			'k_1m9jtmw': '請輸入驗證碼',
			'k_0y1wbxk': '獲取驗證碼',
			'k_002ri2g': '登陸',
			'k_161ecly': '當前無網絡',
			'k_11uz2i8': '重試網絡',
			'k_1vhzltr': '騰訊雲即時通信IM',
			'k_0j433ys': '騰訊雲TRTC',
			'k_0epvs61': '更換皮膚',
			'k_12u8g8l': '免責聲明',
			'k_1p0j8i3': 'IM即時通信（「本產品」）是由騰訊雲提供的一款測試產品，騰訊雲享有本產品的著作權和所有權。本產品僅用於功能體驗，不得用於任何商業用途。為配合相關部門監管要求，本產品音視訊互動全程均有錄音錄像存檔，嚴禁在使用中有任何色情、辱罵、暴恐、涉政等違法內容傳播。',
			'k_0k7qoht': '同意任何用戶加好友',
			'k_1j91bvz': 'TUIKIT 為你選擇一個頭像?',
			'k_1wmkneq': '加我為好友時需要驗證',
			'k_1eitsd0': '關於騰訊雲·通信',
			'k_1919d6m': '私隱條例',
			'k_0wqhgor': '個人資料收集清單',
			'k_12rfxml': '第三方資料共用清單',
			'k_131g7q4': '註銷賬戶',
			'k_03fel2u': '版本號',
			'k_16kts8h': '登出',
			'k_13spdki': '發送訊息',
			'k_14c600t': '修改備註',
			'k_1f811a4': '支持數字、英文、下劃線',
			'k_11z7ml4': '詳細資料',
			'k_1ajt0b1': '獲取當前位置失敗',
			'k_0lhm9xq': '發起檢索成功',
			'k_0fdeled': '發起檢索失敗',
			'k_1yh0a50': 'mapDidLoad-地圖載入完成',
			'k_1t2zg6h': '圖片驗證碼校驗失敗',
			'k_03ibfd2': '星期七',
			'k_1o7lf2y': ({required Object errorMessage}) => '服務器錯誤：$errorMessage',
			'k_118l7sq': ({required Object requestErrorMessage}) => '請求錯誤：$requestErrorMessage',
			'k_003nfx9': '深沈',
			'k_003rvjp': '輕快',
			'k_003rtht': '明媚',
			'k_003qxiw': '夢幻',
			'k_0s5zoi3': ({required Object option1}) => '發生錯誤 $option1',
			'k_0i8egqa': ({required Object option8}) => '獲取到的訊息:$option8',
			'k_0pokyns': ({required Object option8}) => '獲取討論區列表失敗 $option8',
			'k_1y03m8a': ({required Object option8}) => '創建話題失敗 $option8',
			'k_1v6uh9c': ({required Object option8}) => '登入失敗 $option8',
			'k_0t5a9hl': ({required Object option1}) => '登入失敗$option1',
			'k_0k3uv02': ({required Object option8}) => '服務器錯誤：$option8',
			'k_1g9o3kz': ({required Object option8}) => '請求錯誤：$option8',
			'k_14cahuz': '關於騰訊雲 · IM',
			'k_0llnalm': 'SDK版本號',
			'k_13dyfii': '應用版本號',
			'k_12h52zh': '私隱政策',
			'k_0fxhhwb': '用戶協議',
			'k_18z2e6q': 'IM即時通信（「本產品」）是由騰訊雲提供的一款測試產品，騰訊雲享有本產品的著作權和所有權。本產品僅用於功能體驗，不得用於任何商業用途。嚴禁在使用中有任何色情、辱罵、暴恐、涉政等違法內容傳播。',
			'k_0zu7dd7': '個人資料收集清單',
			'k_0mcqhgh': '第三方資料共用清單',
			'k_12eqaty': '確認註銷賬戶',
			'k_0ziqsr6': '賬戶註銷成功！',
			'k_002qtgt': '註銷',
			'k_0rvdu91': ({required Object option1}) => '註銷後，您將無法使用當前賬號，相關數據也將刪除且無法找回。當前賬號ID: $option1',
			'k_15d22qk': '註銷賬號',
			'k_036uv3f': '雲通信IM',
			'k_167916k': '微信好友',
			'k_03euwr1': '朋友圈',
			'k_0cxccci': '邀請你視訊通話',
			'k_06lhh4b': '邀請你語音通話',
			'k_1ywo9ut': '即時通信 IM (Instant Messaging)基於 QQ 底層 IM 能力開發，僅需植入 SDK 即可輕松集成聊天、會話、群組、資料管理和直播彈幕能力，也支持通過信令訊息與白板等其他產品打通，全面覆蓋您的業務場景，支持各大平臺小程序接入使用，全面滿足通信需要',
			'k_0ios26v': '未檢測到微信安裝',
			'k_1jg6d5x': '《私隱政策摘要》',
			'k_0selni4': '《私隱政策》',
			'k_10s6v2i': '《個人資料收集清單》',
			'k_0pasxq8': '《第三方資料共用清單》',
			'k_003r6vf': '登入',
			'k_03f2zbs': '分享到',
			'k_0cfkcaz': '訊息推送',
			'k_1rmkb2w': '推送新聊天訊息',
			'k_1lg375c': '新訊息提醒',
			'k_1t0akzp': ({required Object option1}) => '註銷後，您將無法使用當前賬號，相關數據也將刪除且無法找回。當前賬號ID: $option1',
			'k_1699p6d': '騰訊大廈',
			'k_1ngd60h': '深圳市深南大道10000號',
			'k_1na29vg': '位置訊息維護中',
			'k_1xmms9t': '進群申請列表',
			'k_0dla4vp': '反饋及建議可以加入QQ群組',
			'k_1odrjd1': '在線時間: 周一到周五，早上10點 - 晚上8點',
			'k_1bh903m': '群組復製成功',
			'k_16264lp': '復製群組號',
			'k_18ger86': '騰訊雲 · IM',
			'k_1vd70l1': '服務億級 QQ 用戶的即時通訊技術',
			'k_036phup': '騰訊雲IM',
			'k_0gfsln9': '信息已變更',
			'k_0ow4akh': '請根據Demo的README指引，配置百度AK，體驗DEMO的位置訊息能力',
			'k_1kzh3lo': '請根據本文檔指引 https://docs.qq.com/doc/DSVliWE9acURta2dL ， 快速體驗位置訊息能力',
			'k_161zzkm': '請輸入用戶名',
			'k_1veosyv': '請在環境變量中寫入key',
			'k_03exdnb': '用戶名',
			'k_16kquu8': '當前目錄',
			'k_0fbvuqs': '開始拷貝',
			'k_16j153h': '騰訊雲IM APP（「本產品」）是由騰訊雲提供的一款測試產品，騰訊雲享有本產品的著作權和所有權。本產品僅用於功能體驗，不得用於任何商業用途。嚴禁在使用中有任何色情、辱罵、暴恐、涉政等違法內容傳播。',
			'k_13ghyf8': '【安全提示】本 APP 僅用於體驗騰訊雲即時通信 IM 產品功能，不可用於業務洽談與拓展。請勿輕信匯款、中獎等涉及錢款的信息，勿輕易撥打陌生電話，謹防上當受騙。',
			'k_0gt6cro': '點此投訴',
			'k_03595fk': ({required Object option1}) => ' 等$option1人',
			'k_1gpzgni': ({required Object option2}) => '$option2人群',
			'k_02lfg57': '新群組',
			'k_17ifd8i': '歡迎使用本 APP 體驗騰訊雲 IM 產品服務',
			'k_1f0ms23': '訊息閱讀狀態',
			'k_1c0x9ha': '關閉後，您收發的訊息均不帶訊息閱讀狀態，您將無法看到對方是否已讀，同時對方也無法看到你是否已讀。',
			'k_1dzhdr5': '顯示在線狀態',
			'k_0mwsniq': '關閉後，您將不可以在會話列表和通訊錄中看到好友在線或離線的狀態提示。',
			'k_0f7h6ay': '連接失敗',
			'k_0wreawq': '百度地圖插件暫不支持網頁版，請使用手機APP DEMO體驗位置訊息能力。',
			'k_03c56co': '不選擇',
			'k_1klqdh1': '僅限漢字、英文、數字和下劃線',
			'k_03el5lp': '未填寫',
			'k_0554lam': '好友工作群（Work）',
			'k_1hyz1ua': '陌生人社交群（Public）',
			'k_1s8hjin': '臨時會議群（Meeting）',
			'k_16ejs8f': '直播群（AVChatRoom）',
			'k_1rqdzbh': '社群（Community）',
			'k_1aue1b6': '類似普通微信群，創建後僅支持已在群內的好友邀請加群，且無需被邀請方同意或群主審批。',
			'k_0uldek7': '類似 QQ 群，創建後群主可以指定群管理員，用戶搜索群 ID 發起加群申請後，需要群主或管理員審批通過才能入群。',
			'k_1nv4w25': '創建後可以隨意進出，且支持查看入群前訊息；適合用於音視頻會議場景、在線教育場景等與實時音視頻產品結合的場景。',
			'k_1wbmoof': '創建後可以隨意進出，沒有群成員數量上限，但不支持歷史訊息存儲；適合與直播產品結合，用於彈幕聊天場景。',
			'k_11mlyaa': '創建後可以隨意進出，最多支持10w人，支持歷史訊息存儲，用戶搜索群 ID 發起加群申請後，無需管理員審批即可進群。',
			'k_0ylgdrb': '社群DEMO正在開發中，即將上線',
			'k_0elsjm2': '創建群組',
			'k_1iw4gdk': '允許任何人',
			'k_0i5ffqf': '需要驗證訊息',
			'k_111mgqj': '禁止加我為好友',
			'k_03go2lu': '未指定',
			'k_15zb99m': '加我為聯絡人的方式',
			'k_1llp7tu': '該用戶不存在',
			'k_0tbyqyb': '加載中…',
			'k_0td1p3f': '保存中…',
			'k_1ui0gai': '搜索指定內容',
			'k_1loix7s': ({required Object groupType}) => '群類型: $groupType',
			'k_03agld7': '群提示',
			'k_002wkr3': '翻譯',
			'k_13g4hxv': '翻譯完成',
			'k_003mmoz': '火箭',
			'k_003nogx': '飛機',
			'k_003pjj6': '皇冠',
			'k_000340k': '花',
			'k_0cv8ngo': ({required Object option1}) => '送出$option1',
			'k_03a2zjl': '送禮物',
			'k_0003yq8': '朵',
			'k_13k5228': '讚了直播間',
			'k_1k0rrvn': '說點啥...',
			'k_13jzi5y': '進入直播間',
			'k_14asoqo': '取消關注',
			'k_003ohwe': '關注',
			'k_1h33pzv': ({required Object option1}) => '粉絲 $option1 |',
			'k_07skbgr': ({required Object option2}) => ' 關注 $option2',
			'k_1c99nb3': ({required Object option1}) => '$option1 萬+',
			'k_19mfrrb': '在線觀眾',
			'k_13m65um': '觀眾信息',
			'k_19kj6te': ({required Object option1}) => '$option1 本場點贊',
			'k_1qqgjra': ({required Object option3}) => '$option3條未讀訊息',
			'k_0uubyjr': '以下為未讀訊息',
			'k_0kg1wsx': '選擇群類型',
			'k_003m6xh': '設置',
			'k_18nszwl': '關於我們',
			'k_003txiw': '關於',
			'k_12fp4oc': '官方網站',
			'k_1391sy5': '一次開發，打包部署至所有平臺，寬屏窄屏均可自適應',
			'k_002vu95': '歡迎',
			'k_0o6nt4d': '我已閱讀並同意 ',
			'k_12l2415': '騰訊雲IM各項協議及規定',
			'k_0rcqou9': 'Copyright © 2013-2023 Tencent Cloud. All Rights Reserved. 騰訊雲 版權所有',
			'k_003lmhx': '群組',
			'k_1s251fa': '聯系人 & 群組',
			'k_0cjp3hx': '請選擇聯系人或群組，以查看詳情',
			'k_12veoax': '渠道切換：',
			'k_002rfh9': '國際',
			'k_0864lq3': '如果您在使用過程中有任何疑問，請通過如下渠道聯系我們',
			'k_12625cy': '立即進群',
			'k_131lvxd': '我的賬戶',
			'k_002qep7': '界面',
			'k_002vbyp': '外觀',
			'k_16owrwc': '淺色模式',
			'k_01zair9': '深色模式 (開發中)',
			'k_002skx2': '主題',
			'k_002wzvs': '語言',
			'k_002woft': '英語',
			'k_129eldp': '繁體中文',
			'k_129ekqk': '簡體中文',
			'k_002whil': '日語',
			'k_002wqld': '韓語',
			'k_003is6v': '通用',
			'k_12s2mfc': '查看詳情',
			'k_12fsjye': '相關網站',
			'k_16uejmj': '個人中心',
			'k_0dtyory': '意見反饋',
			'k_03oy6z4': '所有 SDK',
			'k_03bh54n': '源代碼',
			'k_0s3sgel': '移出黑名單',
			'k_16as7eq': '表情回應',
			'k_003s12u': '回復',
			'k_003s38r': '更多',
			'k_003molk': '表情',
			'k_165bbw6': '訊息歷史',
			'k_13sqc0z': '清除訊息',
			'k_0glns86': '刪除會話',
			'k_13s99rx': '清空訊息',
			'k_11vsa3j': '退出群組',
			'k_11vvszp': '解散群組',
			'k_15i9w72': '群管理員',
			'k_0p3espj': '設置備註名',
			'k_118sw9v': '立即搜索',
			'k_1xn4cn2': '執行環境檢測',
			'k_0sy25ey': '請先安裝 Microsoft Edge WebView2 執行環境，以使用本程式。',
			'k_0g4tlsb': '立即下載',
			'k_13ozr8k': '暫不支援',
			'k_16yiku8': 'Web 端暫不支援本地搜尋，請使用 Mobile App 或 Desktop 端體驗',
			'k_003lz6t': '對方',
			'k_1xf4yre': ({required Object option1}) => '發送給$option1',
			'k_003por5': '截圖',
			'k_0c67rdb': '允許多選',
			'k_11lav8q': '匿名投票',
			'k_137cjfq': '公開結果',
			'k_0e3jces': '請輸入選項',
			'k_0dcbhiz': '新增選項',
			'k_003r4qf': '發佈',
			'k_1xa5q8q': '請輸入投票主題',
			'k_003nv7m': '已投',
			'k_002ym5d': '票，',
			'k_003pfxt': '佔比',
			'k_0fxdch1': '未初始化投票插件，請先初始化',
			'k_1lzoopr': '非投票訊息，請檢查',
			'k_03ahybu': '已投票',
			'k_11lamu8': '立即投票',
			'k_0b9h7nq': '投票已結束',
			'k_0c7zem1': '再次發送',
			'k_11l1qvo': '結束投票',
			'k_0z314c0': '[多選]',
			'k_0z2zcm7': '[單選]',
			'k_0y8ap8v': '[公開]',
			'k_0y4cs5n': '[私有]',
			'k_0y6agtt': '[匿名]',
			'k_0y68wmo': '[實名]',
			'k_1pssgjf': ({required Object option1}) => '應參與人數：$option1',
			'k_0x9zkqf': ({required Object option2}) => '實際參與人數：$option2',
			'k_09ikyqj': '查看全部選項',
			'k_0h2jp2z': ({required Object option1}) => '$option1票',
			'k_0y2zr3y': '[投票]',
			'k_11lci1l': '創建投票',
			'k_003l988': '投票',
			'k_1rw7s82': ' 訪問相冊中視頻權限，以正常使用發送視頻等功能。',
			'k_003rcwm': '打開',
			'k_1698c42': '在 Finder 中顯示',
			'k_066fxsz': '查看資料夾',
			'k_0k432y2': '無法發送，包含文件夾',
			'k_002wb4y': '會話',
			'k_0od4qyh': '視頻文件異常',
			'k_1cdzld5': '請填寫產品資訊',
			'k_19qt9y2': '服務評價',
			'k_13s7ltw': '卡片訊息',
			'k_13ajr25': '線上客服',
			'k_0ti5mfz': '暫無線上客服',
			'k_1bfkxg9': '不支持 0KB 文件的傳輸',
			'k_0vvsw7g': '文件處理異常',
			'k_06e224q': '[訊息被管理員撤回]',
			'k_1u1mjcl': '[訊息被撤回]',
			'k_1qcqxea': '選擇多個對話',
			'k_1qgmc20': '選擇一個對話',
			'k_1d8nx6f': '在新視窗中打開',
			'k_1hz05ax': '正在下載原始資源，請稍候...',
			'k_1fszgep': '歡迎黎我哋嘅知聊社區參與討論',
			'k_1xtvvs9': '呢個社區用咗同款 Flutter UIKit，進行咗全平台開發',
			'k_0cdljc3': '前往知聊社區',
			'k_167dvo3': '揀選聯絡人',
			'k_1u1jwb8': 'zhiliao.qq.com',
		};
	}
}
