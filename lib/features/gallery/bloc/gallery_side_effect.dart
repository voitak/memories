part of 'gallery_bloc.dart';

@freezed
sealed class GallerySideEffect with _$GallerySideEffect {
  const GallerySideEffect._();

  const factory GallerySideEffect.error() = _ErrorGallerySideEffect;
}
