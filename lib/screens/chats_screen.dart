import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ChatTile(
          nombre: 'Barbara Palvin',
          mensaje: 'Me encantó el look que subiste ayer',
          hora: '10:24',
          avatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTBZphUImpascZ7O3HTKHh6pWrRYwGxFAsJ7XmWi52PysRGBlzs1p2Pvk&s=10',
          sinLeer: 3,
        ),
        ChatTile(
          nombre: 'Anok Yai',
          mensaje: 'Nos vemos en la semana de la moda',
          hora: '9:15',
          avatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLdfT7HKXXZ2Q8kigB0rmQzAoM_Yup6vvU4EegE0Hlgp4zOCv8ID3MvPo&s=10',
          sinLeer: 1,
        ),
        ChatTile(
          nombre: 'Gigi Hadid',
          mensaje: 'Ya llegó la nueva colección de vestidos',
          hora: 'Ayer',
          avatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6dfUUJejW7dwK2DDTQYQA94dnHr4jS1cu2DOt_-O4q3ZTu6lZA21PDEQ&s=10',
          sinLeer: 0,
        ),
        ChatTile(
          nombre: 'Vittoria Ceretti',
          mensaje: 'Te paso las fotos de la sesión',
          hora: 'Ayer',
          avatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhrbBGziYiYdXmlMMsOkaK08EJ8zt_eknJuFEhyzRaUAB0XiEHt7y1GCqY_jDYoLy1c_Tep_-wX_MHHVi_3Eyka2OeZd1MsJ9w9ZcCnqXC&s=10',
          sinLeer: 0,
        ),
        ChatTile(
          nombre: 'Kendall Jenner',
          mensaje: 'Qué opinas de este bolso para el evento?',
          hora: 'Lunes',
          avatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy4_mmTjVfSQ3gGp38CrCEk-U_M1M3APa1UdOP2cgbGZig-8zJbHYIWr7v&s=10',
          sinLeer: 5,
        ),
        ChatTile(
          nombre: 'Bella Hadid',
          mensaje: 'Gracias por la recomendación de tienda',
          hora: 'Domingo',
          avatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbPVMQ9w9xa9eVy9Z3zLNjpbQFr7AZfKZvNA2TD6r26DimyIcm5kijLxdW&s=10',
          sinLeer: 0,
        ),
      ],
    );
  }
}