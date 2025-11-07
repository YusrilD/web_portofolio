class ImagePathNameModel {
  final int id;
  final String name;
  final String imagePath;

  ImagePathNameModel({
    required this.id,
    required this.name,
    required this.imagePath,
  });
}

final List<ImagePathNameModel> navItems = [
  ImagePathNameModel(id: 1, name: 'Setup', imagePath: 'assets/images/setup.png'),
  ImagePathNameModel(id: 2, name: 'Port', imagePath: 'assets/images/port.png'),
  ImagePathNameModel(id: 3, name: 'Configuration', imagePath: 'assets/images/config.png'),
  ImagePathNameModel(id: 4, name: 'Power & Battery', imagePath: 'assets/images/battery1.png'),
  ImagePathNameModel(id: 5, name: 'Failsafe', imagePath: 'assets/images/parachute.png'),
  ImagePathNameModel(id: 6, name: 'PID Tuning', imagePath: 'assets/images/pid.png'),
  ImagePathNameModel(id: 7, name: 'Receiver', imagePath: 'assets/images/receiver.png'),
  ImagePathNameModel(id: 8, name: 'Modes', imagePath: 'assets/images/modes.png'),
  ImagePathNameModel(id: 9, name: 'Adjustment', imagePath: 'assets/images/adjusment.png'),
  ImagePathNameModel(id: 10, name: 'GPS', imagePath: 'assets/images/satelite.png'), // typo di kode asli: 'satelite'
  ImagePathNameModel(id: 11, name: 'Motors', imagePath: 'assets/images/motor.png'),
  ImagePathNameModel(id: 12, name: 'OSD', imagePath: 'assets/images/osd.png'),
  ImagePathNameModel(id: 13, name: 'Blackbox', imagePath: 'assets/images/blacbox.png'), // typo di kode asli: 'blacbox'
  ImagePathNameModel(id: 14, name: 'VTX', imagePath: 'assets/images/vtx.png'),
  ImagePathNameModel(id: 15, name: 'Mode & Pin Associate', imagePath: 'assets/images/associate.png'),
  ImagePathNameModel(id: 16, name: 'CLI', imagePath: 'assets/images/file.png'),
];


final List<ImagePathNameModel> sensorItems = [
  ImagePathNameModel(id: 1, name: 'Gyro', imagePath: 'assets/images/gyroscope.png'),
  ImagePathNameModel(id: 2, name: 'Accel', imagePath: 'assets/images/accel.png'),
  ImagePathNameModel(id: 3, name: 'Mag', imagePath: 'assets/images/north.png'),
  ImagePathNameModel(id: 4, name: 'Baro', imagePath: 'assets/images/barometer.png'),
  ImagePathNameModel(id: 5, name: 'GPS', imagePath: 'assets/images/satelite.png'), // mungkin 'satellite'
  ImagePathNameModel(id: 6, name: 'Sonar', imagePath: 'assets/images/sonar.png'),
];
