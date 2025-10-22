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

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/end_onboarding.png
  AssetGenImage get endOnboarding =>
      const AssetGenImage('assets/images/end_onboarding.png');

  /// File path: assets/images/start_onboarding.png
  AssetGenImage get startOnboarding =>
      const AssetGenImage('assets/images/start_onboarding.png');

  /// Directory path: assets/images
  String get path => 'assets/images';

  /// List of all assets
  List<AssetGenImage> get values => [endOnboarding, startOnboarding];
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
