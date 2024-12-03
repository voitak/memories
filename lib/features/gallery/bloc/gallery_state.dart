part of 'gallery_bloc.dart';

@freezed
sealed class GalleryState with _$GalleryState {
  const GalleryState._();

  const factory GalleryState.initial() = _InitialGalleryState;

  const factory GalleryState.loading() = _LoadingGalleryState;

  const factory GalleryState.idle() = _IdleGalleryState;

  const factory GalleryState.error({
    required String message,
  }) = _ErrorGalleryState;

  bool get isInitial => maybeMap(
        initial: (_) => true,
        orElse: () => false,
      );

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  bool get isIdle => maybeMap(
        idle: (_) => true,
        orElse: () => false,
      );
      
  bool get isError => maybeMap(
        error: (_) => true,
        orElse: () => false,
      );

  String? get errorMessage => mapOrNull(
        error: (state) => state.message,
      );
}
