part of 'gallery_bloc.dart';

@freezed
sealed class GalleryEvent with _$GalleryEvent {
  const GalleryEvent._();

  const factory GalleryEvent.initialize() = _InitializeGalleryEvent;
}
