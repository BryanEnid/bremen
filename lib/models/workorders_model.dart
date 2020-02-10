import 'package:chat_test/models/apt_model.dart';
import 'worker_model.dart';

class WorkOrder {
  final int id;
  final String createdDate;
  final String dueDate;
  final String aptNumber;
  final List<String> type;
  final String description;
  final Apartment apartment;
  final Worker worker;
  final String status;
  final String reasonNotCompleted;
  final bool isOcupied;
  final List<String> pictures;

  WorkOrder(
      {this.id,
      this.createdDate,
      this.dueDate,
      this.aptNumber,
      this.type,
      this.description,
      this.apartment,
      this.worker,
      this.status,
      this.reasonNotCompleted,
      this.isOcupied,
      this.pictures});
}

// APARTMENTS should be populated from database
final Apartment morningside = Apartment(
  id: 0,
  name: 'Morningside',
  imgUrl: 'assets/morningside.jpg',
  phoneNumber: '(404) 990-1671',
);
final Apartment heights = Apartment(
  id: 1,
  name: 'Chamblee Heights',
  imgUrl: 'assets/heights.jpg',
  phoneNumber: '(404) 990-1671',
);
final Apartment pavilion = Apartment(
  id: 2,
  name: 'Pavilion',
  imgUrl: 'assets/pavilion.jpg',
  phoneNumber: '(404) 990-1671',
);
final Apartment clarkstone = Apartment(
  id: 3,
  name: 'Clarkstone Station',
  imgUrl: 'assets/clarkstone.jpg',
  phoneNumber: '(404) 990-1671',
);
final Apartment premier = Apartment(
  id: 4,
  name: 'Premier',
  imgUrl: 'assets/premier.jpg',
  phoneNumber: '(404) 990-1671',
);

// EXAMPLE OF FAVORITES
List<Apartment> favorites = [morningside, premier];

// WORKERS
final Worker user1 = Worker(
    id: 0,
    imgUrl: 'assets/mau_brenes.jpg',
    name: 'Mauricio Brenes',
    phoneNumber: '(404) 990-1671');

// EXAMPLES OF WORK ORDERS
List<WorkOrder> workOrders = [
  WorkOrder(
    id: 0,
    createdDate: 'Feb 12, 2019',
    dueDate: 'Feb 20, 2019',
    aptNumber: "3130",
    type: ["", 'Repair', 'Clean', ''],
    description: "Sheetrock repair in bathroom and cleaning",
    apartment: morningside,
    worker: user1,
    status: 'Not Assigned',
    reasonNotCompleted: '',
    isOcupied: false,
    pictures: ['image.jpeg'],
  ),
  WorkOrder(
    id: 0,
    createdDate: 'Feb 12, 2019',
    dueDate: 'Feb 20, 2019',
    aptNumber: "220-24",
    type: ["", 'Repair', '', ''],
    description:
        "Resurfacing in both tubs + (Tiles & Surroundings), countertops in bathroom and kitchen. \n\n*Ocupied (Please let the resident know).",
    apartment: premier,
    worker: user1,
    status: 'In Process',
    reasonNotCompleted: '',
    isOcupied: false,
    pictures: ['image2.jpeg'],
  ),
  WorkOrder(
    id: 0,
    createdDate: 'Feb 12, 2019',
    dueDate: 'Feb 20, 2019',
    aptNumber: "220-24",
    type: ["", 'Repair', '', ''],
    description:
        "Resurfacing in both tubs + (Tiles & Surroundings), countertops in bathroom and kitchen. \n\n*Ocupied (Please let the resident know).",
    apartment: premier,
    worker: user1,
    status: 'In Process',
    reasonNotCompleted: '',
    isOcupied: false,
    pictures: ['image3.jpeg'],
  )
];
