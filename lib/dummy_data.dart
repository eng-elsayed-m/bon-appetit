import 'models/category.dart';
import 'models/meal.dart';

const DUMMY_CATEGORIS = const [
  Category(
      id: "c1",
      title: "MainPlate",
      imageUrl:
          "https://www.tasteofhome.com/wp-content/uploads/2020/02/Air-Fryer-Almond-Chicken_EXPS_CF2BZ20_235841_B12_11_3b-6.jpg?fit=696,1024"),
  Category(
      id: "c2",
      title: "Salad",
      imageUrl:
          "https://raster-static.postmates.com/?url=com.postmates.img.prod.s3.amazonaws.com/98c919ad-71b0-43de-90e3-1958630d0392/orig.jpg&quality=90&w=1500&h=900&mode=crop&format=jpg&v=4"),
  Category(
      id: "c3",
      title: "Dessert",
      imageUrl:
          "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps187568_SD153320D12_05_1b-2.jpg?fit=696,1024"),
  Category(
      id: "c4",
      title: "Pizza",
      imageUrl:
          "https://www.tasteofhome.com/wp-content/uploads/2018/01/Refried-Bean-Taco-Pizza_EXPS_GBBZ19_36656_E11_27_9b-3.jpg?fit=696,1024"),
  Category(
      id: "c5",
      title: "IceCream",
      imageUrl:
          "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps185132_TH153342C02_20_1b.jpg?fit=696,1024"),
];

const DUMMY_MEALS = const [
  // Main Plate

  Meal(
    id: "1",
    title: "Spiced Beef",
    category: ["c1"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps191496_TH163619C09_30_3b.jpg?fit=696,1024",
    duration: 20,
    ingredients: [
      "1 fresh beef brisket (6 pounds)",
      "1/3 cup packed brown sugar",
      "3/4 cup coarse sea salt",
      "1/4 cup chopped onion",
      "4 bay leaves, crushed",
      "3 teaspoons pepper",
      "2 teaspoons dried rosemary, crushed",
      "2 teaspoons dried thyme",
      " 1-1/2 teaspoons ground allspice",
      "1-1/2 teaspoons ground cloves",
      "4 medium onions, sliced",
      "4 medium carrots, sliced",
      "2 celery ribs, sliced",
      "2 cups stout or beef broth",
      "Optional: Rye bread, Swiss cheese slices and Dijon mustard",
    ],
    steps: [
      "Place beef in a 15x10x1-in. baking pan; rub with brown sugar. Refrigerate, covered, 24 hours.",
      "In a small bowl, mix salt, chopped onion, bay leaves and seasonings; rub over beef. Refrigerate, covered, 3 days, turning and rubbing salt mixture into beef once each day.",
      "Preheat oven to 325°. Remove and discard salt mixture. Place beef, onions, carrots, celery and stout in a roasting pan. Add water to come halfway up the brisket. Roast, covered, 4-4-1/2 hours or until meat is tender. Cool meat in cooking juices for 1 hour.",
      "Remove beef; discard vegetables and cooking juices. Transfer beef to a 13x9-in. baking dish. Refrigerate, covered, overnight.",
      "Cut diagonally across the grain into thin slices. Serve with rye bread, cheese and mustard.",
    ],
    complexity: Complexity.Hard,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isLactousFree: true,
    isVagen: false,
    isVegetarian: false,
  ),

  Meal(
    id: "2",
    title: "Crispy Fish & Chips",
    category: ["c1"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Crispy-Fish-Chips_exps58536_TH143193C04_10_4bC_RMS-1.jpg?fit=696,1024",
    duration: 30,
    ingredients: [
      "4 cups frozen steak fries",
      "4 salmon fillets (6 ounces each)",
      "1 to 2 tablespoons prepared horseradish",
      "1 tablespoon grated Parmesan cheese",
      "1 tablespoon Worcestershire sauce",
      "1 teaspoon Dijon mustard",
      "1/4 teaspoon salt",
      "1/2 cup panko bread crumbs",
      "Cooking spray",
    ],
    steps: [
      "Preheat oven to 450°. Arrange steak fries in a single layer on a baking sheet. Bake on lowest oven rack 18-20 minutes or until light golden brown.",
      "Meanwhile, place salmon on a foil-lined baking sheet coated with cooking spray. In a small bowl, mix horseradish, cheese, Worcestershire sauce, mustard and salt; stir in panko. Press mixture onto fillets. Spritz tops with cooking spray.",
      "Bake salmon on middle oven rack 8-10 minutes or until fish just begins to flake easily with a fork. Serve with fries.",
    ],
    complexity: Complexity.Challanger,
    affordability: Affordability.Louxerous,
    isGlutenFree: true,
    isLactousFree: true,
    isVagen: false,
    isVegetarian: false,
  ),
  Meal(
    id: "3",
    title: "Italian Pasta Sauce",
    category: ["c1"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Italian-Pasta-Sauce_EXPS_THN18_14845_B05_31_3b-1.jpg?fit=696,1024",
    duration: 60,
    ingredients: [
      "4 pounds ground beef",
      "1 pound bulk Italian sausage",
      "1 large onion, finely chopped",
      "3 celery ribs, finely chopped",
      "4 garlic cloves, minced",
      "2 tablespoons olive oil",
      "3 cans (28 ounces each) crushed tomatoes in puree",
      "3 cans (6 ounces each) tomato paste",
      "3 cups chicken or beef broth",
      "1 pound fresh mushrooms, sliced",
      "3/4 cup minced fresh parsley",
      "1 tablespoon sugar",
      "2 to 3 teaspoons salt",
      "1/2 teaspoon pepper",
      "1/2 teaspoon ground allspice, optional",
      "Hot cooked pasta",
    ],
    steps: [
      "In a Dutch oven or soup kettle, cook beef in 2 batches over medium heat until no longer pink; drain and set aside. Cook sausage over medium heat until no longer pink; drain and set aside. In the same pan, saute onion, celery and garlic in oil until vegetables are tender.",
      "Return the beef and sausage to the pan. Add the next 9 ingredients, including allspice if desired, and bring to a boil. Reduce heat; cover and simmer until sauce reaches desired thickness, stirring occasionally, 2-3 hours. Serve over pasta.",
      "Freeze option: Ftruereeze cooled sauce in freezer containers. To use, partially thaw in refrigerator overnight. Heat through in a saucepan, stirring occasionally. Add a little broth or water if necessary.",
    ],
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isLactousFree: true,
    isVagen: false,
    isVegetarian: false,
  ),
  Meal(
    id: "4",
    title: "Shrimp with rice",
    category: ["c1"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2020/10/Shrimp-Mozambique_EXPS_RC20_253795_E08_26_2b.jpg?fit=696,1024",
    duration: 30,
    ingredients: [
      "3 tablespoons olive oil",
      "1 medium onion, finely chopped",
      "6 garlic cloves, minced",
      "2 pounds uncooked shell-on shrimp (16-20 per pound)",
      "2 envelopes sazon with coriander and annatto",
      "2 teaspoons garlic salt",
      "2 teaspoons garlic powder",
      "2 teaspoons onion powder",
      "1 teaspoon paprika",
      "1 bay leaf",
      "1 bottle (12 ounces) beer or 1-1/2 cups chicken broth",
      "1 teaspoon lemon juice",
      "1/4 cup ketchup",
      "3 tablespoons chopped fresh parsley",
      "Hot cooked rice",
    ],
    steps: [
      "In a Dutch oven, heat oil over medium-high heat. Add onion; cook and stir until tender, 4-5 minutes. Add garlic and shrimp; cook 1 minute longer. Stir in seasonings. Add beer and lemon juice; bring to a boil. Reduce heat. Simmer, uncovered, until shrimp turn pink, 10-15 minutes. Stir in ketchup and parsley; discard bay leaf. Serve with rice."
    ],
    complexity: Complexity.Challanger,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isLactousFree: true,
    isVagen: false,
    isVegetarian: false,
  ),

  Meal(
    id: "5",
    title: "Caribbean Curried Chicken",
    category: ["c1"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Caribbean-Curried-Chicken_EXPS_THN17_202731_B06_16_3b.jpg?fit=696,1024",
    duration: 10,
    ingredients: [
      "1 tablespoon Madras curry powder",
      "1 teaspoon garlic powder",
      "1 teaspoon pepper",
      "8 boneless skinless chicken thighs (about 4 ounces each)",
      "1 medium onion, thinly sliced",
      "1-1/2 cups Goya mojo criollo marinade, well-shaken",
      "2 tablespoons canola oil",
      "2 tablespoons all-purpose flour",
      "Hot cooked rice, green onions and fresh cilantro leaves, optional"
    ],
    steps: [
      "Combine curry powder, garlic powder and pepper; sprinkle over chicken, pressing to help it adhere. Place chicken in a 3-qt. slow cooker. Sprinkle with onion. Carefully pour mojo criollo marinade along the sides of slow cooker, avoiding chicken to keep coating intact. Cook, covered, on low until a thermometer reads 170°, 4-6 hours. Remove chicken; keep warm.",
      "Pour cooking juices from slow cooker into a measuring cup; skim fat. In a large saucepan, heat oil over medium heat; whisk in flour until smooth. Gradually whisk in cooking juices. Bring to a boil, stirring constantly; cook and stir until thickened, 1-2 minutes. Reduce heat; add chicken and simmer about 5 minutes. If desired, serve with rice, green onions and cilantro.",
    ],
    complexity: Complexity.Challanger,
    affordability: Affordability.Louxerous,
    isGlutenFree: true,
    isLactousFree: true,
    isVagen: false,
    isVegetarian: false,
  ),

  Meal(
    id: "6",
    title: "Hamburgers",
    category: ["c1"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/All-American-Hamburgers_EXPS_THJJ17_29321_D02_03_5b-2.jpg?fit=696,1024",
    duration: 20,
    ingredients: [
      "1 pound ground beef",
      "2 tablespoons finely chopped onion",
      "2 tablespoons chili sauce",
      "2 teaspoons Worcestershire sauce",
      "2 teaspoons prepared mustard",
      "4 slices American cheese or cheddar cheese, halved diagonally",
      "2 slices Swiss cheese, halved diagonally",
      "4 hamburger buns, split and toasted",
      "Optional: Lettuce leaves, sliced tomato, sliced onion, cooked bacon strips, ketchup and mustard",
    ],
    steps: [
      "Combine first 5 ingredients, mixing lightly but thoroughly. Shape into 4 patties. Grill burgers, covered, on an oiled rack over medium direct heat until a thermometer reads 160° and juices run clear, about 6 minutes on each side.",
      "During the last minute of cooking, top each patty with 2 triangles American cheese and 1 triangle Swiss cheese. Serve on buns. As desired, top with lettuce, tomato, onion, bacon, ketchup and mustard.",
    ],
    complexity: Complexity.Simple,
    affordability: Affordability.Louxerous,
    isGlutenFree: false,
    isLactousFree: true,
    isVagen: false,
    isVegetarian: false,
  ),

  Meal(
    id: "7",
    title: "Colcannon Potatoes",
    category: ["c1"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2017/10/Colcannon-Potatoes_EXPS_SDFM18_29291_D10_03_1b-2.jpg",
    duration: 45,
    ingredients: [
      "1 medium head cabbage (about 2 pounds), shredded",
      "4 pounds medium potatoes (about 8), peeled and quartered",
      "2 cups whole milk",
      "1 cup chopped green onions",
      "1-1/2 teaspoons salt",
      "1/2 teaspoon pepper",
      "1/4 cup butter, melted",
      "Minced fresh parsley",
      "Crumbled cooked bacon"
    ],
    steps: [
      "Place cabbage and 2 cups water in a large saucepan; bring to a boil. Reduce heat; simmer, covered, until cabbage is tender, about 10 minutes. Drain, reserving cooking liquid; keep cabbage warm in separate dish.",
      "In same pan, combine potatoes and reserved cooking liquid. Add additional water to cover potatoes; bring to a boil. Reduce heat; cook, uncovered, until potatoes are tender, 15-20 minutes. Meanwhile, place milk, green onions, salt and pepper in a small saucepan; bring just to a boil and remove from heat. ",
      " Drain potatoes; place in a large bowl and mash. Add milk mixture; beat just until blended. Stir in cabbage. To serve, drizzle with butter; top with parsley and bacon.",
    ],
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isLactousFree: false,
    isVagen: false,
    isVegetarian: true,
  ),

  // Dessert

  Meal(
    id: "8",
    title: "Tea Bread",
    category: ["c3"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Almond-Tea-Bread_exps7880_THCA2916394D04_19_3b_RMS-1.jpg?fit=696,1024",
    duration: 45,
    ingredients: [
      "1 can (8 ounces) almond paste",
      "1/4 cup butter, softened",
      "1 cup sugar",
      "3 large eggs, room temperature",
      "1-1/2 cups fresh pitted cherries or blueberries",
      "3 cups all-purpose flour, divided",
      "4 teaspoons baking powder",
      "1/2 teaspoon salt",
      "3/4 cup whole milk",
    ],
    steps: [
      "In a large bowl, combine almond paste and butter; beat until well blended. Gradually add sugar, beating until light and fluffy. Add eggs, one at a time, beating well after each addition. In a small bowl, gently toss cherries and 1 tablespoon flour. Set aside.",
      "Combine the baking powder, salt, remaining flour; add to the creamed mixture alternately with milk, beating well after each addition.",
      "Spoon a sixth of the batter into each of two greased and floured 8x4-in. loaf pans; sprinkle layers with half of the fruit. Cover with another layer of batter and sprinkle with remaining fruit. Top with remaining batter; smooth with spatula.",
      "Bake at 350° until a toothpick inserted in the center comes out clean, about 1-1/4 hours. Cool for 10 minutes before removing from pans to wire racks to cool.",
    ],
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isLactousFree: true,
    isVagen: true,
    isVegetarian: true,
  ),

  Meal(
    id: "9",
    title: "Grandma's Apple Cake",
    category: ["c3"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Oma-s-Apfelkuchen-Grandma-s-Apple-Cake-_EXPS_BW20_201499_E08_13_10b.jpg?fit=696,1024",
    duration: 20,
    ingredients: [
      "5 large egg yolks",
      "2 medium tart apples, peeled, cored and halved",
      "1 cup plus 2 tablespoons unsalted butter, softened",
      "1-1/4 cups sugar",
      "2 cups all-purpose flour",
      "2 tablespoons cornstarch",
      "2 teaspoons cream of tartar",
      "1 teaspoon baking powder",
      "1/2 teaspoon salt",
      "1/4 cup 2% milk",
      "Confectioners' sugar",
    ],
    steps: [
      "Preheat oven to 350°. Let egg yolks stand at room temperature for 30 minutes. Starting 1/2 in. from 1 end, cut apple halves lengthwise into 1/4-in. slices, leaving them attached at the top so they fan out slightly. Set aside.",
      "Cream butter and sugar until light and fluffy, 5-7 minutes. Add egg yolks, 1 at a time, beating well after each addition. In another bowl, sift flour, cornstarch, cream of tartar, baking powder and salt twice. Gradually beat into creamed mixture. Add milk; mix well (batter will be thick).",
      "Spread batter into a greased 9-in. springform pan wrapped in a sheet of heavy-duty foil. Gently press apples, round side up, into batter. Bake until a toothpick inserted in the center comes out with moist crumbs, 45-55 minutes. Cool on a wire rack 10 minutes. Loosen sides from pan with a knife; remove foil. Cool 1 hour longer. Remove rim from pan. Dust with confectioners' sugar.",
    ],
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactousFree: false,
    isVagen: false,
    isVegetarian: true,
  ),

  Meal(
    id: "10",
    title: "Crispy Norwegian Bows",
    category: ["c3"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Crispy-Norwegian-Bows_EXPS_UCSBZ17_16044_B05_26_1b.jpg?fit=696,1024",
    duration: 30,
    ingredients: [
      "3 large egg yolks, room temperature",
      "3 tablespoons sugar",
      "3 tablespoons heavy whipping cream",
      "1/2 teaspoon ground cardamom",
      "1 to 1-1/4 cups all-purpose flour",
      "Oil for deep-fat frying",
      "Confectioners' sugar",
    ],
    steps: [
      "Beat egg yolks and granulated sugar until pale yellow. Add cream and cardamom; mix well. Gradually add flour until dough is firm enough to roll.",
      "On a lightly floured surface, roll into a 15-in. square. Using a pastry wheel or knife, cut into 15x1-1/2-in. strips; cut diagonally at 2-1/2-in. intervals. In the center of each diamond, make a 1-in. slit; pull one end through slit.",
      "In an electric skillet or deep-fat fryer, heat oil to 375°. Fry bows, a few at a time, until golden brown on both sides, 20-40 seconds. Drain on paper towels. Dust with confectioners' sugar. ",
    ],
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactousFree: true,
    isVagen: false,
    isVegetarian: true,
  ),
  Meal(
    id: "11",
    title: "Swedish Cream Apple Rings",
    category: ["c3"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Swedish-Cream-Apple-Rings_EXPS_FBMZ18_149506_C05_11_4b-1.jpg?fit=696,1024",
    duration: 35,
    ingredients: [
      "1 package (1/4 ounce) active dry yeast",
      "1/4 cup warm water (110° to 115°)",
      "4 cups all-purpose flour",
      "1/4 cup sugar",
      "1/2 teaspoon salt",
      "3/4 cup cold butter, cubed",
      "1 cup heavy whipping cream (110° to 115°)",
      "1/4 cup evaporated milk (110° to 115°)",
      "3 large egg yolks, room temperature",
      "FILLING:",
      "2 cups finely chopped peeled apples",
      "1/2 cup raisins",
      "1/4 cup cinnamon-sugar",
      "GLAZE:",
      "2 cups confectioners' sugar",
      "1 teaspoon vanilla extract",
      "2 to 3 tablespoons 2% milk",
    ],
    steps: [
      "In a small bowl, dissolve yeast in warm water. In a large bowl, combine the flour, sugar and salt. Cut in butter until crumbly. Add the yeast mixture, cream, milk and egg yolks; stir until mixture forms a soft dough. Cover and refrigerate overnight.",
      "In a small bowl, combine the filling ingredients. Punch down dough; divide in half. On a lightly floured surface, roll out one portion into a 13x7-in. rectangle. Sprinkle with half of filling.",
      "Roll up jelly-roll style, starting with a long side. Pinch seam to seal. Place seam side down on a greased baking sheet; pinch ends together to form a ring. Repeat with remaining dough and filling. Cover and let rise in a warm place, about 45 minutes.",
      "Bake at 375° until golden brown, 25-30 minutes. Remove from pans to wire racks to cool. Combine the confectioners' sugar, vanilla and enough milk to achieve a drizzling consistency. Drizzle over warm rings.",
    ],
    complexity: Complexity.Hard,
    affordability: Affordability.Louxerous,
    isGlutenFree: false,
    isLactousFree: false,
    isVagen: false,
    isVegetarian: true,
  ),

  // Salad
  Meal(
    id: "13",
    title: "Colorful Avocado Salad",
    category: ["c2"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Colorful-Avocado-Salad_EXPS_CF219_40110_C12_14_7b-1.jpg?fit=696,1024",
    duration: 20,
    ingredients: [
      "1 medium tomato, cut into eighths",
      "1/2 small cucumber, thinly sliced",
      "1 small red onion, halved and thinly sliced",
      "1/3 cup julienned green pepper",
      "2 tablespoons Italian salad dressing",
      "1 medium ripe avocado, peeled and cubed",
    ],
    steps: [
      "In a small bowl, combine the first 4 ingredients. Add dressing and toss to coat. Chill until serving. Just before serving, add avocado and toss gently."
    ],
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isLactousFree: true,
    isVagen: true,
    isVegetarian: true,
  ),

  // Pizza

  Meal(
    id: "14",
    title: "Bacon Breakfast Pizza",
    category: ["c4"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Bacon-Breakfast-Pizza_EXPS_SDON17_39715_D06_30_1b-3.jpg?fit=696,1024",
    duration: 30,
    ingredients: [
      "1 tube (13.8 ounces) refrigerated pizza crust",
      "2 tablespoons olive oil, divided",
      "6 large eggs",
      "2 tablespoons water",
      "1 package (3 ounces) bacon bits",
      "1 cup shredded Monterey Jack cheese",
      "1 cup shredded cheddar cheese",
    ],
    steps: [
      "Preheat oven to 400°. Unroll and press dough onto bottom and 1/2 in. up sides of a greased 15x10x1-in. pan. Prick thoroughly with a fork; brush with 1 tablespoon oil. Bake until lightly browned, 7-8 minutes.",
      "Meanwhile, whisk together eggs and water. In a nonstick skillet, heat remaining oil over medium heat. Add eggs; cook and stir just until thickened and no liquid egg remains. Spoon over crust. Sprinkle with bacon bits and cheeses.",
      "Bake until cheese is melted, 5-7 minutes.",
    ],
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactousFree: true,
    isVagen: false,
    isVegetarian: true,
  ),

  Meal(
    id: "15",
    title: "Steak & Blue Cheese Pizza",
    category: ["c4"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps114761_SSD143207D06_05_2b.jpg?fit=696,1024",
    duration: 30,
    ingredients: [
      "1/2 cup sour cre"
          "3 tablespoons white vineg"
          "1 tablespoon sug"
          "Pepper to tas"
          "4 medium cucumbers, peeled if desired and thinly slic"
          "1 small sweet onion, thinly sliced and separated into rings"
    ],
    steps: [
      "Preheat oven to 450°. Sprinkle beef with salt and pepper. In a large skillet, heat 1 tablespoon oil over medium heat. Add beef and mushrooms; cook until beef is no longer pink, 3-4 minutes. Remove from pan.",
      "Cook onion in remaining oil until tender, 2-3 minutes. Add cream and blue cheese; cook until slightly thickened, 3-5 minutes longer.",
      "Place crust on a 12-in. pizza pan or baking sheet. Spread with cream mixture; top with beef mixture. Sprinkle with parsley. Bake until sauce is bubbly and crust is lightly browned, 10-12 minutes.",
    ],
    complexity: Complexity.Challanger,
    affordability: Affordability.Louxerous,
    isGlutenFree: false,
    isLactousFree: true,
    isVagen: false,
    isVegetarian: false,
  ),

  Meal(
    id: "16",
    title: "Shrimp & Crab Pizza",
    category: ["c4"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps59416_SD153320D12_05_5b.jpg?fit=696,1024",
    duration: 40,
    ingredients: [
      "1/2 pound uncooked shrimp (61-70 per pound), peeled and deveined",
      "1 cup water",
      "2 tablespoons lemon juice",
      "1 tablespoon butter",
      "1-3/4 cups sliced fresh mushrooms",
      "1 small onion, chopped",
      "1 small sweet red pepper, cut into strips",
      "1 garlic clove, minced",
      "1/4 teaspoon salt",
      "1-1/4 cups coarsely chopped imitation crabmeat (about 1/2 pound)",
      "1 prebaked 12-inch pizza crust",
      "1/3 cup Alfredo sauce",
      "2 cups shredded part-skim mozzarella cheese",
    ],
    steps: [
      "Preheat oven to 450°. In a small bowl, combine shrimp, water and lemon juice. Let stand 10 minutes.",
      "Meanwhile, in a large skillet, heat butter over medium-high heat. Add mushrooms, onion and pepper; cook and stir 4-5 minutes or until tender. Add garlic and salt; cook 1 minute longer.",
      "Drain shrimp, discarding liquid. Add shrimp and crab to pan; cook and stir 1-2 minutes longer or until shrimp turn pink.",
      "Place crust on an ungreased 12-in. pizza pan or baking sheet; spread with Alfredo sauce. Spoon shrimp mixture over sauce; sprinkle with cheese. Bake 8-10 minutes or until crust is golden and cheese is melted.",
    ],
    complexity: Complexity.Hard,
    affordability: Affordability.Pricey,
    isGlutenFree: false,
    isLactousFree: true,
    isVagen: false,
    isVegetarian: false,
  ),

  Meal(
    id: "17",
    title: "Barbecued Chicken Pizzas",
    category: ["c4"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Barbecued-Chicken-Pizzas_EXPS_SDJJ17_44709_C02_17_2b-2.jpg?fit=696,1024",
    duration: 35,
    ingredients: [
      "2 boneless skinless chicken breast halves (6 ounces each)",
      "1/4 teaspoon pepper",
      "1 cup barbecue sauce, divided",
      "1 tube (13.8 ounces) refrigerated pizza crust",
      "2 teaspoons olive oil",
      "2 cups shredded Gouda cheese",
      "1 small red onion, halved and thinly sliced",
      "1/4 cup minced fresh cilantro",
    ],
    steps: [
      "Sprinkle chicken with pepper; place on an oiled grill rack over medium heat. Grill, covered, until a thermometer reads 165°, 5-7 minutes per side, basting frequently with 1/2 cup barbecue sauce during the last 4 minutes. Cool slightly. Cut into cubes.",
      "Divide dough in half. On a well-greased large sheet of heavy-duty foil, press each portion of dough into a 10x8-in. rectangle; brush lightly with oil. Invert dough onto grill rack; peel off foil. Grill, covered, over medium heat until bottom is lightly browned, 1-2 minutes.",
      "Remove from grill. Spread grilled sides with remaining barbecue sauce. Top with cheese, chicken and onion. Grill, covered, until bottom is lightly browned and cheese is melted, 2-3 minutes. Sprinkle with cilantro.",
    ],
    complexity: Complexity.Challanger,
    affordability: Affordability.Louxerous,
    isGlutenFree: false,
    isLactousFree: true,
    isVagen: false,
    isVegetarian: false,
  ),

  // IceCream

  Meal(
    id: "18",
    title: "Blueberry Ice Cream",
    category: ["c5"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps23019_FFT2434558D08_08_10b_WEB-1.jpg?fit=696,1024",
    duration: 20,
    ingredients: [
      "4 cups fresh or frozen blueberries",
      "2 cups sugar",
      "2 tablespoons water",
      "4 cups half-and-half cream",
    ],
    steps: [
      "In a large saucepan, combine the blueberries, sugar and water. Bring to a boil. Reduce heat; simmer, uncovered, until sugar is dissolved and berries are softened. Press mixture through a fine-mesh strainer into a bowl; discard pulp. Stir in cream. Cover and refrigerate overnight.",
      "Fill cylinder of ice cream freezer two-thirds full; freeze according to the manufacturer’s directions. (Refrigerate any remaining mixture until ready to freeze.) Transfer ice cream to freezer containers, allowing headspace for expansion. Freeze until firm, 2-4 hours. Repeat with any remaining ice cream mixture.",
    ],
    complexity: Complexity.Simple,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isLactousFree: false,
    isVagen: true,
    isVegetarian: true,
  ),

  Meal(
    id: "19",
    title: "Georgia Peach Ice Cream",
    category: ["c5"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps7115_AC2930252C01_15_3b_WEB.jpg?fit=696,1024",
    duration: 45,
    ingredients: [
      "4 eggs",
      "1-1/4 cups sugar, divided",
      "1/2 teaspoon salt",
      "4 cups whole milk",
      "2 cans (14 ounces each) sweetened condensed milk",
      "1-3/4 pounds fresh peaches, peeled and sliced",
    ],
    steps: [
      "In a large heavy saucepan, whisk eggs, 1 cup sugar and salt until blended; stir in milk. Cook over low heat until mixture is just thick enough to coat a spoon and a thermometer reads at least 160°, stirring constantly. Do not allow to boil. Remove from heat immediately.",
      "Quickly transfer to a bowl; place bowl in a pan of ice water. Stir gently and occasionally for 2 minutes. Stir in sweetened condensed milk. Press plastic wrap onto surface of custard. Refrigerate several hours or overnight.",
      "When ready to freeze, in a small bowl, mash peaches with remaining sugar; let stand 30 minutes. Fill cylinder of ice cream freezer two-thirds full with custard, stirring in some of the peaches; freeze according to manufacturers directions. Refrigerate remaining mixture until ready to freeze.",
      "Transfer ice cream to freezer containers, allowing headspace for expansion. Freeze 2-4 hours or until firm. Repeat with remaining ice cream mixture and peaches.",
    ],
    complexity: Complexity.Hard,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isLactousFree: false,
    isVagen: true,
    isVegetarian: true,
  ),

  Meal(
    id: "20",
    title: "Watermelon Vodka Sorbet",
    category: ["c5"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Watermelon-Vodka-Sorbet_exps92031_THCB2302822D02_11_9b_RMS.jpg?fit=696,1024",
    duration: 15,
    ingredients: [
      "1 cup sugar",
      "1/2 cup water",
      "8 cups cubed seedless watermelon",
      "2 tablespoons lemon juice",
      "2 tablespoons vodka",
    ],
    steps: [
      "In a small saucepan, bring sugar and water to a boil. Cook and stir until sugar is dissolved; set aside to cool.",
      "In batches, process the watermelon in a food processor for 2-3 minutes or until smooth. Transfer puree to a large bowl; stir in the lemon juice, vodka and sugar syrup. Pour into a 13-in. x 9-in. dish. Freeze for 1 hour or until edges begin to firm; stir. Freeze 2 hours longer or until firm.",
      "Process watermelon mixture in batches for 2-3 minutes or until smooth. Serve immediately or transfer to freezer containers and freeze until serving.",
    ],
    complexity: Complexity.Challanger,
    affordability: Affordability.Louxerous,
    isGlutenFree: true,
    isLactousFree: false,
    isVagen: true,
    isVegetarian: true,
  ),

  Meal(
    id: "21",
    title: "Cherry Bombs",
    category: ["c5"],
    imageUrl:
        "https://www.tasteofhome.com/wp-content/uploads/2018/01/Cherry-Bombs_exps38150_HC143213C08_21_5bC_RMS.jpg?fit=696,1024",
    duration: 15,
    ingredients: [
      "1 cup vanilla ice cream, softened if necessary",
      "2 chocolate-covered cherries",
      "2 tablespoons seedless raspberry jam",
      "1/3 cup chocolate hard-shell ice cream topping",
      "1/4 cup whipped cream",
      "2 tablespoons chocolate syrup",
    ],
    steps: [
      "Line two muffin cups with plastic wrap. Divide ice cream between cups. Press a chocolate-covered cherry into each; smooth ice cream over cherries. Freeze overnight or until firm.",
      "Invert ice cream onto a waxed paper-lined plate; remove and discard plastic wrap. Spread jam over ice cream; freeze until firm.",
      "Place a wire rack over a sheet of waxed paper. Using a fork, transfer ice cream to rack. Pour ice cream topping over each to coat. Transfer to dessert plates; freeze until serving. Serve with whipped cream and chocolate syrup.",
    ],
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isLactousFree: false,
    isVagen: true,
    isVegetarian: true,
  ),
];
