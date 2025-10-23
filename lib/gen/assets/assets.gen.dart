// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// Directory path: assets/fonts/poppins
  $AssetsFontsPoppinsGen get poppins => const $AssetsFontsPoppinsGen();

  /// Directory path: assets/fonts
  String get path => 'assets/fonts';
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bug.svg
  String get bug => 'assets/icons/bug.svg';

  /// File path: assets/icons/category.svg
  String get category => 'assets/icons/category.svg';

  /// File path: assets/icons/dragon.svg
  String get dragon => 'assets/icons/dragon.svg';

  /// File path: assets/icons/electric.svg
  String get electric => 'assets/icons/electric.svg';

  /// File path: assets/icons/fairy.svg
  String get fairy => 'assets/icons/fairy.svg';

  /// File path: assets/icons/favorite.svg
  String get favorite => 'assets/icons/favorite.svg';

  /// File path: assets/icons/fight.svg
  String get fight => 'assets/icons/fight.svg';

  /// File path: assets/icons/fire.svg
  String get fire => 'assets/icons/fire.svg';

  /// File path: assets/icons/flying.svg
  String get flying => 'assets/icons/flying.svg';

  /// File path: assets/icons/ghost.svg
  String get ghost => 'assets/icons/ghost.svg';

  /// File path: assets/icons/grass.svg
  String get grass => 'assets/icons/grass.svg';

  /// File path: assets/icons/ground.svg
  String get ground => 'assets/icons/ground.svg';

  /// File path: assets/icons/height.svg
  String get height => 'assets/icons/height.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/ice.svg
  String get ice => 'assets/icons/ice.svg';

  /// File path: assets/icons/normal.svg
  String get normal => 'assets/icons/normal.svg';

  /// File path: assets/icons/poison.svg
  String get poison => 'assets/icons/poison.svg';

  /// File path: assets/icons/pokeball.svg
  String get pokeball => 'assets/icons/pokeball.svg';

  /// File path: assets/icons/psychic.svg
  String get psychic => 'assets/icons/psychic.svg';

  /// File path: assets/icons/region.svg
  String get region => 'assets/icons/region.svg';

  /// File path: assets/icons/rock.svg
  String get rock => 'assets/icons/rock.svg';

  /// File path: assets/icons/sinister.svg
  String get sinister => 'assets/icons/sinister.svg';

  /// File path: assets/icons/splash_logo.svg
  String get splashLogo => 'assets/icons/splash_logo.svg';

  /// File path: assets/icons/steel.svg
  String get steel => 'assets/icons/steel.svg';

  /// File path: assets/icons/user.svg
  String get user => 'assets/icons/user.svg';

  /// File path: assets/icons/water.svg
  String get water => 'assets/icons/water.svg';

  /// File path: assets/icons/weight.svg
  String get weight => 'assets/icons/weight.svg';

  /// Directory path: assets/icons
  String get path => 'assets/icons';

  /// List of all assets
  List<String> get values => [
        bug,
        category,
        dragon,
        electric,
        fairy,
        favorite,
        fight,
        fire,
        flying,
        ghost,
        grass,
        ground,
        height,
        home,
        ice,
        normal,
        poison,
        pokeball,
        psychic,
        region,
        rock,
        sinister,
        splashLogo,
        steel,
        user,
        water,
        weight
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/end_onboarding.png
  AssetGenImage get endOnboarding =>
      const AssetGenImage('assets/images/end_onboarding.png');

  /// File path: assets/images/error.png
  AssetGenImage get error => const AssetGenImage('assets/images/error.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/soon.png
  AssetGenImage get soon => const AssetGenImage('assets/images/soon.png');

  /// File path: assets/images/start_onboarding.png
  AssetGenImage get startOnboarding =>
      const AssetGenImage('assets/images/start_onboarding.png');

  /// Directory path: assets/images
  String get path => 'assets/images';

  /// List of all assets
  List<AssetGenImage> get values =>
      [endOnboarding, error, logo, soon, startOnboarding];
}

class $AssetsFontsPoppinsGen {
  const $AssetsFontsPoppinsGen();

  /// File path: assets/fonts/poppins/Poppins-Bold.ttf
  String get poppinsBold => 'assets/fonts/poppins/Poppins-Bold.ttf';

  /// File path: assets/fonts/poppins/Poppins-Italic.ttf
  String get poppinsItalic => 'assets/fonts/poppins/Poppins-Italic.ttf';

  /// File path: assets/fonts/poppins/Poppins-Medium.ttf
  String get poppinsMedium => 'assets/fonts/poppins/Poppins-Medium.ttf';

  /// File path: assets/fonts/poppins/Poppins-Regular.ttf
  String get poppinsRegular => 'assets/fonts/poppins/Poppins-Regular.ttf';

  /// Directory path: assets/fonts/poppins
  String get path => 'assets/fonts/poppins';

  /// List of all assets
  List<String> get values =>
      [poppinsBold, poppinsItalic, poppinsMedium, poppinsRegular];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
