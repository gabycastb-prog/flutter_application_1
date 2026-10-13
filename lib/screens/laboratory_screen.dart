import 'package:flutter/material.dart';
import '../widgets/numeric_counter.dart';

class LaboratoryScreen extends StatelessWidget {
  const LaboratoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        NumericCounter(
          nombreProducto: 'BOLSO DE CUERO',
          imagen: 'https://hips.hearstapps.com/hmg-prod/images/leia-sfez-is-seen-wearing-a-brown-leather-hermes-jacket-news-photo-1738919007.pjpeg?crop=1.00xw:0.694xh;0,0.0371xh&resize=1120:*',
          precio: 1200000,
        ),
      ],
    );
  }
}