import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'TENDENCIAS',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w300,
            letterSpacing: 4,
          ),
        ),
        const SizedBox(height: 12),

        SizedBox(
          height: 210,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              TrendCard(
                nombre: 'Vestidos',
                imagen: 'https://ullajohnson.com/cdn/shop/files/Look16B_50e1cbe0-45c1-4690-b419-5edc43cfa287_1920x.jpg?v=1770306716',
              ),
              TrendCard(
                nombre: 'Streetwear',
                imagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU1xDWVeMX3q6eEewQwlp3fheVh6NbDOqGAayUOdEktnBvglHSf0RWFRY&s=10',
              ),
              TrendCard(
                nombre: 'Accesorios',
                imagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR4LHq8aVfUdyDxvCLhEmdqw3HHgT14EU0vBlng4pJT_PeSsPZszywJUW8&s=10',
              ),
              TrendCard(
                nombre: 'Calzado',
                imagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHbe3956br4t7e8HDbtu0mZqah7Yz7V0B18eM6Gq2PZcX3u9LjpqjNCR5l&s=10',
              ),
              TrendCard(
                nombre: 'Pantalones',
                imagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4MJVBsoF0-9iI8wKje3U9xXqZrP0M7iXae0pVvC7DSqI_EE62mVU06Fk&s=10',
              ),
              TrendCard(
                nombre: 'Blusa',
                imagen: 'https://chevignon.vtexassets.com/arquivos/ids/2089550/63_711H010_CRU125202_0.jpg?v=639052363897470000',
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class TrendCard extends StatelessWidget {
  final String nombre;
  final String imagen;

  const TrendCard({
    super.key,
    required this.nombre,
    required this.imagen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.pink.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.pink.shade100),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              imagen,
              width: 140,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),

          Text(
            nombre,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}