import '../models/book.dart';
import "../models/catagories.dart";

const CatagoryList = const [
  Catagory(id: 'c1', title: "Coding", imageUrl: "https://cdni.iconscout.com/illustration/premium/thumb/coding-project-1884980-1597918.png"),
  Catagory(id: 'c2', title: "Fiction", imageUrl: "https://cdn-icons-png.flaticon.com/512/5381/5381349.png"),
  Catagory(id: 'c3', title: "Scintific", imageUrl: "https://freepngimg.com/save/30969-science/912x544"),
  Catagory(id: 'c4', title: "Poltics", imageUrl: "https://w7.pngwing.com/pngs/526/904/png-transparent-computer-icons-politics-politics-microphone-text-people.png"),
  Catagory(id: 'c5', title: "Sport", imageUrl: "https://www.freepnglogos.com/uploads/sport-png/sport-steadman-philippon-institute-official-site-16.png"),
  Catagory(id: 'c', title: "Health", imageUrl: "https://www.pngall.com/wp-content/uploads/2016/06/Health-PNG.png"),
];

const BookList = const [
  Book(
      id: "b1",
      catagory: ['c1', 'c2'],
      imgUrl: "https://images-na.ssl-images-amazon.com/images/I/41z1V0zP2WL.jpg",
      title: "python",
      author: "Anthun Python",
      year: "2021",
      rentPrice: 1,
      rate: 4,
      volume: BookSize.Large,
      permited: AgeFor.young,
      withaudio: true,
      DigitalOnly: true,
      
      ),
      
  Book(
      id: "b2",
      catagory: ['c1'],
      imgUrl: "https://csharp-book.softuni.org/assets/CSharp-Programming-Basics-Book-Cover.png",
      title: "C sharp",
      author: "ANTHONY Sharp",
      year: "2020",
      rentPrice: 2.2,
      rate: 5,
      volume: BookSize.Large,
      permited: AgeFor.young,
      educational: true
      ),
  Book(
      id: "b3",
      catagory: ['c1'],
      imgUrl: "https://0.academia-photos.com/attachment_thumbnails/55421521/mini_magick20190114-21098-5hi6gb.png?1547501981",
      title: "Javascript",
      author: "Enterprners",
      year: "2020",
      rentPrice: 2,
      rate: 4,
      volume: BookSize.Large,
      permited: AgeFor.young,
      ),
  Book(
      id: "b4",
      catagory: ['c3', 'c2'],
      imgUrl: "https://images-na.ssl-images-amazon.com/images/I/41z1V0zP2WL.jpg",
      title: "ANNA DIARY",
      author: "ANTHONY BRUN",
      year: "2020",
      rentPrice: 3,
      rate: 5,
      volume: BookSize.Large,
      permited: AgeFor.young,
      withaudio: true,
      ),
  Book(
      id: "b5",
      catagory: ['c2'],
      imgUrl: "https://products.6seconds.org/wp-content/uploads/2017/01/AHL-1000-sq.jpg",
      title: "At the Hear Leadership",
      author: "Leadership",
      year: "2020",
      rentPrice: 2.2,
      rate: 5,
      volume: BookSize.Large,
      permited: AgeFor.young,
      withaudio: true,),
  Book(
      id: "b5",
      catagory: ['c2'],
      imgUrl: "https://csharp-book.softuni.org/assets/CSharp-Programming-Basics-Book-Cover.png",
      title: "True Fiction",
      author: "",
      year: "1990",
      rentPrice: 2.2,
      rate: 5,
      volume: BookSize.Large,
      permited: AgeFor.young,
      isOld: true,
      ),
];
