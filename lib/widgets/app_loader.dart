import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 25,
        height: 25,
        child: CircularProgressIndicator(),
      ),
    );
  }
}

OverlayEntry? loaderOverlay;

void showLoaderOverlay(BuildContext context) {
  if (loaderOverlay == null) {
    loaderOverlay = createOverlayEntryLoader(context);
    Overlay.of(context)?.insert(loaderOverlay!);
  }
}

void hideLoaderOverlay() {
  loaderOverlay?.remove();
  loaderOverlay = null;
}

OverlayEntry createOverlayEntryLoader(BuildContext context) {
  return OverlayEntry(
    builder: (context) => const Center(
      child: Material(
        color: Colors.transparent,
        child: AppLoader(),
      ),
    ),
  );
}
