class NavItem {
  final int id;
  final String name;
  final String imagePath;

  NavItem({
    required this.id,
    required this.name,
    required this.imagePath,
  });
}

final List<NavItem> navItems = [
  NavItem(id: 1, name: 'Setup', imagePath: 'assets/images/setup.png'),
  NavItem(id: 2, name: 'Port', imagePath: 'assets/images/port.png'),
  NavItem(id: 3, name: 'Configuration', imagePath: 'assets/images/config.png'),
  NavItem(id: 4, name: 'Power & Battery', imagePath: 'assets/images/battery1.png'),
  NavItem(id: 5, name: 'Failsafe', imagePath: 'assets/images/parachute.png'),
  NavItem(id: 6, name: 'PID Tuning', imagePath: 'assets/images/pid.png'),
  NavItem(id: 7, name: 'Receiver', imagePath: 'assets/images/receiver.png'),
  NavItem(id: 8, name: 'Modes', imagePath: 'assets/images/modes.png'),
  NavItem(id: 9, name: 'Adjustment', imagePath: 'assets/images/adjusment.png'),
  NavItem(id: 10, name: 'GPS', imagePath: 'assets/images/satelite.png'), // typo di kode asli: 'satelite'
  NavItem(id: 11, name: 'Motors', imagePath: 'assets/images/motor.png'),
  NavItem(id: 12, name: 'OSD', imagePath: 'assets/images/osd.png'),
  NavItem(id: 13, name: 'Blackbox', imagePath: 'assets/images/blacbox.png'), // typo di kode asli: 'blacbox'
  NavItem(id: 14, name: 'VTX', imagePath: 'assets/images/vtx.png'),
  NavItem(id: 15, name: 'Mode & Pin Associate', imagePath: 'assets/images/associate.png'),
  NavItem(id: 16, name: 'CLI', imagePath: 'assets/images/file.png'),
];
