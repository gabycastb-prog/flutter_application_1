import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String nombreUsuario;
  final String imagenPerfil;
  final String imagenPost;
  final String descripcion;
  final int likes;

  const PostCard({
    super.key,
    required this.nombreUsuario,
    required this.imagenPerfil,
    required this.imagenPost,
    required this.descripcion,
    required this.likes,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _meGusta = false;

  void _darMeGusta() {
    setState(() {
      _meGusta = !_meGusta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 231, 209, 223),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color.fromARGB(255, 219, 181, 255)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 23,
                  backgroundColor: const Color.fromARGB(255, 208, 163, 209),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.pink.shade50,
                    backgroundImage: NetworkImage(widget.imagenPerfil),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    widget.nombreUsuario,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const Icon(Icons.more_horiz, color: Colors.grey),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                widget.imagenPost,
                width: double.infinity,
                height: 320,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                IconButton(
                  onPressed: _darMeGusta,
                  icon: Icon(
                    _meGusta ? Icons.favorite : Icons.favorite_border,
                    color: _meGusta ? Colors.pink : Colors.black,
                    size: 28,
                  ),
                ),
                Text(
                  '${_meGusta ? widget.likes + 1 : widget.likes} me gusta',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_bubble_outline, size: 25),
                ),
              ],
            ),
          ),

          // Descripción
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 18),
            child: Text(
              widget.descripcion,
              style: TextStyle(
                fontSize: 14,
                height: 1.4,
                color: Colors.grey.shade800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}