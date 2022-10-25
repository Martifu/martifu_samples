//Lista de campos de golf
class GolfFields {
  String? name;
  String? description;
  int? friends;
  String? image;

  GolfFields({this.name, this.description, this.friends, this.image});
}

final List<GolfFields> fields = [
  GolfFields(
    name: 'Golf Club de Madrid',
    description:
        'Ist unique 27 holes layout in Spain, comprising of a trio of 9-hole loops, each with its own character and challenges.',
    friends: 3,
    image: 'assets/images/fiedl3.jpg',
  ),
  GolfFields(
    name: 'Golf Club CDMX',
    description:
        'The course is a par 72, 18-hole championship course, with a length of 6,800 yards from the back tees.',
    friends: 6,
    image: 'assets/images/fiedl1.jpg',
  ),
  GolfFields(
    name: 'Golf Club de Barcelona',
    description:
        'The course is a par 72, 18-hole championship course, with a length of 6,800 yards from the back tees.',
    friends: 2,
    image: 'assets/images/fiedl2.jpg',
  ),
];

//Lista de url de imagenes de caras
final List<String> faces = [
  'https://randomuser.me/api/portraits/men/32.jpg',
  'https://randomuser.me/api/portraits/women/47.jpg',
  'https://api.uifaces.co/our-content/donated/xZ4wg2Xj.jpg',
  'https://images.unsplash.com/photo-1511485977113-f34c92461ad9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
  'https://images.unsplash.com/photo-1520810627419-35e362c5dc07?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
  'https://api.uifaces.co/our-content/donated/AVQ0V28X.jpg',
];
