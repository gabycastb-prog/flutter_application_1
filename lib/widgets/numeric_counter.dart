import 'package:flutter/material.dart';

class NumericCounter extends StatefulWidget {
  final String nombreProducto;
  final String imagen;
  final int precio;

  const NumericCounter({
    super.key,
    required this.nombreProducto,
    required this.imagen,
    required this.precio,
  });

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {
  int _cantidad = 1;

  void _sumar() {
    setState(() {
      if (_cantidad < 10) {
        _cantidad++;
      }
    });
  }

  void _restar() {
    setState(() {
      if (_cantidad > 1) {
        _cantidad--;
      }
    });
  }

  void _reiniciar() {
    setState(() {
      _cantidad = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.pink.shade50,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.pink.shade100),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              widget.imagen,
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),

          Text(
            widget.nombreProducto,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              letterSpacing: 3,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Precio por unidad: \$${widget.precio}',
            style: TextStyle(color: Colors.grey.shade700),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: _cantidad > 1 ? Colors.black : Colors.grey.shade400,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: _cantidad > 1 ? _restar : null,
                  icon: const Icon(Icons.remove, color: Colors.white),
                ),
              ),
              const SizedBox(width: 30),

              Text(
                '$_cantidad',
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 30),

              Container(
                decoration: BoxDecoration(
                  color: _cantidad < 10 ? Colors.black : Colors.grey.shade400,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: _cantidad < 10 ? _sumar : null,
                  icon: const Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Mínimo 1 - Máximo 10',
            style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
          ),
          const SizedBox(height: 20),

          Text(
            'Total: \$${_cantidad * widget.precio}',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),

          OutlinedButton(
            onPressed: _reiniciar,
            child: const Text('Reiniciar'),
          ),
        ],
      ),
    );
  }
}