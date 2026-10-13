import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        PromotionalBanner(
          titulo: 'NUEVA TEMPORADA',
          descripcion: 'Descubre las tendencias de otoño con hasta 30% de descuento.',
          imagen: 'https://jahfashionboutique.com/cdn/shop/collections/29.png?v=1789166056',
        ),
        ImageCarousel(),
        PostCard(
          nombreUsuario: 'Barbara Palvin',
          imagenPerfil: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTBZphUImpascZ7O3HTKHh6pWrRYwGxFAsJ7XmWi52PysRGBlzs1p2Pvk&s=10',
          imagenPost: 'https://hips.hearstapps.com/hmg-prod/images/barbara-palvin-walks-the-runway-during-the-2018-victorias-news-photo-1059478740-1552642916.jpg?crop=1xw:0.5xh;center,top&resize=1200:*',
          descripcion: 'Where Darkness Meets Light starring BARBARA PALVIN',
          likes: 120,
        ),
        PostCard(
          nombreUsuario: 'Anok yai',
          imagenPerfil: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLdfT7HKXXZ2Q8kigB0rmQzAoM_Yup6vvU4EegE0Hlgp4zOCv8ID3MvPo&s=10',
          imagenPost: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTF7oNP1TrnEJQQXmnO8HHV98afuzlcgI7FBA0BENMUgiWxdbfS-NhHks-&s=10',
          descripcion: 'Semana de la moda',
          likes: 87,
        ),
      ],
    );
  }
}