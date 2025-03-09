import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  const LoadingOverlay({
    super.key,
    required this.child,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          // ignore: use_colored_box
          Container(
            color: Colors.white.withOpacity(0.5),
            child: const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.transparent,
                strokeWidth: 5.0,
                semanticsLabel: 'Cargando...',
              ),
            ),
          ),
        if (isLoading)
          const ModalBarrier(
            dismissible: false,
            color: Colors.transparent,
          ),
      ],
    );
  }
}
