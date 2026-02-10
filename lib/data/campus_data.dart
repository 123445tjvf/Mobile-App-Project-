import '../models/department.dart';

final List<Department> departments = [
  Department(
    id: 'cs',
    name: 'Computer Science',
    description:
        'Training students in software engineering, networking, and modern computing solutions.',
    building: 'CS Department',
    contact: 'cs@vvu.edu.gh',
  ),
  Department(
    id: 'bus',
    name: 'Business School',
    description:
        'Focusing on ethical leadership, accounting, and management for the global market.',
    building: 'Business Block',
    contact: 'bus@vvu.edu.gh',
  ),
  Department(
    id: 'nur',
    name: 'Nursing & Midwifery',
    description:
        'A premier department for healthcare professionals, emphasizing compassion and skill.',
    building: 'Columbia Hall',
    contact: 'nursing@vvu.edu.gh',
  ),
  Department(
    id: 'theo',
    name: 'Theology',
    description:
        'The foundation of VVU, training spiritual leaders for service and ministry.',
    building: 'Bulley Hall',
    contact: 'theology@vvu.edu.gh',
  ),
  Department(
    id: 'arts',
    name: 'Social Sciences',
    description:
        'Exploring human behavior, history, and development through diverse programs.',
    building: 'Columbia Hall',
    contact: 'socialsciences@vvu.edu.gh',
  ),
];
