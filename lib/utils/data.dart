import '../models/article.dart';
import '../models/topic.dart';
import '../models/user.dart';

final user = UserProfile(
  username: '@elina',
  name: 'Elina',
  description:
      'Hey... I am a seasoned article and blog writer with over 5 years of experience in the industry. I specialize in creating engaging, SEO-friendly content that drives traffic and increases user engagement. My expertise lies in a wide range of topics, including technology, lifestyle, and travel. My work has been published on numerous high-profile platforms, demonstrating my ability to appeal to diverse audiences.',
  articlesCount: 15,
  followingsCount: 12,
  followersCount: 25,
  socialMedia: ['WhatsApp', 'Facebook', 'Instagram', 'Twitter'],
);

final List<Article> articles = [
  Article(
    id: 1,
    title: "The Future of Flutter",
    content: "Flutter is evolving fast with exciting new features.",
    author: "Alice Johnson",
    publishedDate: DateTime(2024, 11, 1),
    image:
        "https://miro.medium.com/v2/resize:fit:686/1*vqpbZsSKe7IXQpHVTFBjKA.jpeg",
    tags: ["Flutter", "Development"],
    comments: [
      Comment(
        id: 1,
        commenterName: "Bob",
        message: "Can't wait to see what's next!",
        datePosted: DateTime(2024, 11, 2),
      ),
    ],
  ),
  Article(
    id: 2,
    title: "Dart in 2024",
    content: "Dart continues to empower developers with robust features.",
    author: "Jane Smith",
    publishedDate: DateTime(2024, 10, 15),
    image: "https://miro.medium.com/v2/resize:fit:1000/0*22FkfJ_X4zfachDO.png",
    tags: ["Dart", "Programming"],
    comments: [
      Comment(
        id: 2,
        commenterName: "Charlie",
        message: "Dart's null safety is a game-changer.",
        datePosted: DateTime(2024, 10, 16),
      ),
    ],
  ),
  Article(
    id: 3,
    title: "Mobile App Trends",
    content: "2024 sees a surge in cross-platform app development.",
    author: "Mike Brown",
    publishedDate: DateTime(2024, 11, 5),
    image:
        "https://inceptor.co.ke/wp-content/uploads/2019/12/Trends-In-Mobile-App-Development-in-Kenya.png",
    tags: ["Mobile", "Technology"],
    comments: [],
  ),
  Article(
    id: 4,
    title: "AI in Mobile Apps",
    content: "Artificial Intelligence is redefining app capabilities.",
    author: "Emma Davis",
    publishedDate: DateTime(2024, 11, 10),
    image:
        "https://www.andolasoft.com/blog/wp-content/uploads/2023/11/Various-Use-Cases-of-AI-in-Mobile-App-Development.png",
    tags: ["AI", "Mobile"],
    comments: [
      Comment(
        id: 3,
        commenterName: "Sophia",
        message: "AI is truly revolutionizing the tech space!",
        datePosted: DateTime(2024, 11, 11),
      ),
    ],
  ),
  Article(
    id: 5,
    title: "Top 10 Flutter Plugins",
    content: "Discover the best plugins to enhance your Flutter projects.",
    author: "John Miller",
    publishedDate: DateTime(2024, 10, 20),
    image:
        "https://multiqos.com/blogs/wp-content/uploads/2022/09/Top-10-Flutter-App-Development-Tools-for-Developers.png.webp",
    tags: ["Flutter", "Plugins"],
    comments: [],
  ),
  Article(
    id: 6,
    title: "Why Choose Dart?",
    content: "Dart is gaining traction for cross-platform development.",
    author: "Lucas White",
    publishedDate: DateTime(2024, 9, 25),
    image:
        "https://miro.medium.com/v2/resize:fit:764/1*Cedyc9xrC_0e28QOTuHCDA.jpeg",
    tags: ["Dart", "Programming"],
    comments: [],
  ),
  Article(
    id: 7,
    title: "Tech Conferences 2024",
    content: "Explore the most anticipated tech events this year.",
    author: "Emily Wilson",
    publishedDate: DateTime(2024, 11, 18),
    image:
        "https://miro.medium.com/v2/resize:fit:1400/1*UlTmv26yimM30yT4lrfipw.jpeg",
    tags: ["Tech", "Events"],
    comments: [],
  ),
  Article(
    id: 8,
    title: "Improving App Performance",
    content: "Techniques to optimize the performance of your mobile apps.",
    author: "Chris Black",
    publishedDate: DateTime(2024, 10, 30),
    image:
        "https://miro.medium.com/v2/resize:fit:923/1*nYT9YABe4m1bVBCcyEp05g.png",
    tags: ["Performance", "Optimization"],
    comments: [],
  ),
  Article(
    id: 9,
    title: "State Management in Flutter",
    content: "Understanding GetX, Provider, and Bloc.",
    author: "Sarah Green",
    publishedDate: DateTime(2024, 11, 7),
    image:
        "https://miro.medium.com/v2/resize:fit:1000/1*kYDNK7DzZkaZwVJA8BykyA.png",
    tags: ["Flutter", "State Management"],
    comments: [],
  ),
  Article(
    id: 10,
    title: "Dark Mode in Apps",
    content: "How to implement dark mode for better user experience.",
    author: "Liam Adams",
    publishedDate: DateTime(2024, 10, 12),
    image:
        "https://cdn.dribbble.com/userupload/15155542/file/original-95714278fcbbe58b7ea1fe33747b3952.jpg",
    tags: ["UI/UX", "Design"],
    comments: [],
  ),
  Article(
    id: 11,
    title: "Serverless Architecture",
    content: "The rise of serverless computing in mobile backends.",
    author: "Oliver Brown",
    publishedDate: DateTime(2024, 11, 3),
    image:
        "https://media.geeksforgeeks.org/wp-content/uploads/20240514213749/Serverless-Architectures-(1).webp",
    tags: ["Backend", "Serverless"],
    comments: [],
  ),
  Article(
    id: 12,
    title: "Cross-platform Tools Comparison",
    content: "Flutter vs React Native: Which to choose?",
    author: "Isabella Martinez",
    publishedDate: DateTime(2024, 9, 20),
    image:
        "https://appinventiv.com/wp-content/uploads/2019/09/Cross-Platform-Frameworks-Market-Share-1.png",
    tags: ["Flutter", "React Native"],
    comments: [],
  ),
  Article(
    id: 13,
    title: "Next-gen Mobile Networks",
    content: "5G and beyond: What’s in store for mobile developers?",
    author: "Ava Wilson",
    publishedDate: DateTime(2024, 11, 25),
    image:
        "https://media.geeksforgeeks.org/wp-content/uploads/20201010224418/ngnlayerLI.jpg",
    tags: ["5G", "Technology"],
    comments: [],
  ),
];

final List<Topic> topics = [
  Topic(
    title: "Nature",
    image: "assets/images/1.webp",
    articles: 25,
  ),
  Topic(
    title: "Education",
    image: "assets/images/2.jpeg",
    articles: 18,
  ),
  Topic(
    title: "Productivity",
    image: "assets/images/3.jpg",
    articles: 30,
  ),
  Topic(
    title: "Travel",
    image: "assets/images/4.jpeg",
    articles: 22,
  ),
  Topic(
    title: "Sports",
    image: "assets/images/5.jpeg",
    articles: 15,
  ),
  Topic(
    title: "Politics",
    image: "assets/images/6.jpg",
    articles: 12,
  ),
  Topic(
    title: "Music",
    image: "assets/images/7.jpeg",
    articles: 8,
  ),
  Topic(
    title: "Business",
    image: "assets/images/8.webp",
    articles: 10,
  ),
 
];
 

