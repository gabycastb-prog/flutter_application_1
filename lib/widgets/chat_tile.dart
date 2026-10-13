import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String nombre;
  final String mensaje;
  final String hora;
  final String avatar;
  final int sinLeer;

  const ChatTile({
    super.key,
    required this.nombre,
    required this.mensaje,
    required this.hora,
    required this.avatar,
    required this.sinLeer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.pink.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.pink.shade100),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor:  const Color.fromARGB(255, 219, 181, 255),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.pink.shade50,
              backgroundImage: NetworkImage(avatar),
            ),
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nombre,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  mensaje,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                hora,
                style: TextStyle(
                  fontSize: 12,
                  color: sinLeer > 0 ?  const Color.fromARGB(255, 160, 119, 199): Colors.grey,
                  fontWeight: sinLeer > 0 ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              const SizedBox(height: 6),

              if (sinLeer > 0) ...[
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$sinLeer',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}