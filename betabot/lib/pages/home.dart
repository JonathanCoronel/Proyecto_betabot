import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF6F6F6),
        elevation: 0,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                '¡Hola, Jonathan!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              // Banner Asistente
              Container(
                width: double.infinity,
                height: 104,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF8335),
                  borderRadius: BorderRadius.circular(45),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        padding: const EdgeInsets.all(8),
                        child:
                            Image.asset('images/logobetabot.png', height: 40),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          'Beta, tu asistente, está\nlisto para ayudarte.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'chatbot');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 34,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Servicios
              const Text(
                'Servicios',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        serviceButton(
                          Icons.calendar_today,
                          'Calendario',
                          const Color(0xFFF6F6F6),
                          () {
                            Navigator.pushNamed(context, 'calendario');
                          },
                        ),
                        serviceButton(
                          Icons.medication,
                          'Gestión de medicinas',
                          const Color(0xFFF6F6F6),
                          () {
                            Navigator.pushNamed(context, 'calendario');
                          },
                        ),
                        serviceButton(
                          Icons.bloodtype,
                          'Control de Glucosa',
                          const Color(0xFFF6F6F6),
                          () {
                            Navigator.pushNamed(context, 'calendario');
                          },
                        ),
                        serviceButton(
                          Icons.meeting_room,
                          'Citas Médicas',
                          const Color(0xFFF6F6F6),
                          () {
                            Navigator.pushNamed(context, 'chatbot_receta');
                          },
                        ),
                        serviceButton(
                          Icons.school,
                          'Educación y Apoyo',
                          const Color(0xFFF6F6F6),
                          () {
                            Navigator.pushNamed(context, 'calendario');
                          },
                        ),
                        serviceButton(
                          Icons.warning_amber_rounded,
                          'Botón de Emergencia',
                          const Color(0xFFFFA83B),
                          () {
                            Navigator.pushNamed(context, 'boton_emergen');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Recordatorios
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recordatorios',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Ver todos >',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    reminderCard(
                      title: 'Próxima Cita Médica',
                      date: '20/11/2024',
                      time: '11:15 AM',
                      doctor: 'Dr. Juan Pérez',
                      color: Colors.blue.shade400,
                      icon: Icons.medical_services_rounded,
                    ),
                    const SizedBox(width: 10),
                    reminderCard(
                      title: 'Tomar Medicina',
                      subtitle: 'Metformina',
                      dosage: '500 mg',
                      time: '8:00 AM',
                      color: Colors.green.shade400,
                      icon: Icons.local_hospital_rounded,
                    ),
                    const SizedBox(width: 10),
                    reminderCard(
                      title: 'Ejercicio Diario',
                      subtitle: '30 minutos',
                      time: '6:00 PM',
                      color: Colors.orange.shade400,
                      icon: Icons.fitness_center_rounded,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget para los botones de servicios
  Widget serviceButton(
      IconData icon, String title, Color backgroundColor, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 30, color: Colors.black54),
              const SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget para los recordatorios
  Widget reminderCard({
    required String title,
    String? subtitle,
    String? date,
    String? time,
    String? doctor,
    String? dosage,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      width: 240,
      height: 140, // Ancho fijo para asegurar el mismo tamaño
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        // Cambiado a Column para no expandir más de lo necesario
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 40),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis, // Trunca texto si excede
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          if (subtitle != null)
            Text(
              subtitle,
              style: const TextStyle(color: Colors.white),
              overflow: TextOverflow.ellipsis,
            ),
          if (date != null && time != null)
            Text(
              'Fecha: $date\nHora: $time',
              style: const TextStyle(color: Colors.white),
            ),
          if (doctor != null)
            Text(
              'Médico: $doctor',
              style: const TextStyle(color: Colors.white),
            ),
          if (dosage != null)
            Text(
              'Dosis: $dosage',
              style: const TextStyle(color: Colors.white),
            ),
        ],
      ),
    );
  }
}
