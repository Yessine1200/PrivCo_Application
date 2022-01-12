
import 'package:flutter/material.dart';
import 'package:privco/modules/category.dart';
import 'package:privco/modules/challenge.dart';
import 'package:privco/modules/coaches.dart';
import 'package:privco/modules/exercice.dart';
import 'package:privco/modules/gym.dart';
import 'package:privco/modules/meal.dart';
import 'package:privco/modules/plan.dart';
import 'package:privco/modules/work_out_library.dart';
import 'package:privco/screens/home.dart';

   const DUMMY_CATEGORIES =    [
  Category(
      id: 'c1',
      title: 'Traditional',
      etitle: 'Traditional Meal Plan',
      subtitle: 'I enjoy everything',
      iconImage: 'assets/images/like.png',
      image: 'assets/images/categories_images/traditionnal.jpg',
      opinion: 'I enjoy everything and have no dietary restrictions, allergies or dislikes'
  ),
   Category(
       id: 'c2',
       title: 'Vegetarian',
       etitle: 'Vegetarian Meal Plan',
       subtitle: 'I avoid meat and fish',
       iconImage: 'assets/images/vegetarian.png',
       image: 'assets/images/categories_images/vegetarian.jpg',
       opinion: 'I avoid meat and fish, but can have eggs, milk and honey'
   ),
   Category(
       id: 'c3',
       title: 'Vegetarian (Plan diet)',
       etitle: 'Vegan Meal Plan',
       subtitle: 'I do not eat animal products',
       iconImage: 'assets/images/diet.png',
       image: 'assets/images/categories_images/plandiet.jpg',
       opinion: 'I avoid all animal-by products:meat and fish, dairy and honey'
   ),
   Category(
       id: 'c4',
       title: 'Keto Vegan',
       etitle: 'Keto Vegan Meal Plan',
       subtitle: 'I like low-carb meals and avoid animal products',
       iconImage: 'assets/images/ketovegan.png',
       image: 'assets/images/categories_images/ketovegan.jpg',
       opinion: 'I like low-carb, high-fat meals for fast metabolism, and prefer to exclude any animal-by products such as meat, fish, dairy, and eggs'
   ),
   Category(
       id: 'c5',
       title: 'Keto',
       etitle: 'Keto Meal Plan',
       subtitle: 'I like low-carb meals for fast metabolism',
       iconImage: 'assets/images/keto.png',
       image: 'assets/images/categories_images/keto.jpeg',
       opinion: 'I like low-carb, high-fat meals for fast metabolism'
   ),
   Category(
       id: 'c6',
       title: 'Pescatarian',
       etitle: 'Pescatarian Meal Plan',
       subtitle: 'A avoid meat but enjoy fish',
       iconImage: 'assets/images/pescatarian.png',
       image: 'assets/images/categories_images/pescatarian.jpg',
       opinion: 'I enjoy a balanced diet that avoids red meat and poultry, and includes fish, seafood, eggs, and dairy, along with veggies, and nuts'
   ),
   Category(
       id: 'c7',
       title: 'Lactose Free',
       etitle: 'Lactose-Free Meal Plan',
       subtitle: 'I do not take milk products',
       iconImage: 'assets/images/lactose.png',
       image: 'assets/images/categories_images/lactose.jpg',
       opinion: 'I like balanced nutrition that excludes dairy and lactose, but offers meat, fish, vegetables and grains'
   ),
   Category(
       id: 'c8',
       title: 'Gluten Free',
       etitle: 'Gluten-Free Meal Plan',
       subtitle: 'No wheat for me, Please!',
       iconImage: 'assets/images/gluten.png',
       image: 'assets/images/categories_images/gluten.jpg',
       opinion: 'I avoid gluten found in bread and grains'
   ),
   Category(
       id: 'c9',
       title: 'Paleo',
       etitle: 'Paleo Meal Plan',
       subtitle: 'Little processed foods, extra veggies and fruit',
       iconImage: 'assets/images/paleo.png',
       image: 'assets/images/categories_images/paleo.jpg',
       opinion: 'I want a meal plan to eat as simple as possible. Hight on veggies, nuts, non-processed grains and meat'
   ),
   Category(
       id: 'c10',
       title: 'Mediterranean diet',
       etitle: 'Mediterranean Meal Plan',
       subtitle: 'High on veggies, nuts, low on meat',
       iconImage: 'assets/images/mediterranean.png',
       image: 'assets/images/categories_images/mediterranean.jpg',
       opinion: "I enjoy a balanced diet that's high on fish, veggies, nuts, with a splash of olive oil, and low on meat and processed foods"
   ),
   Category(
       id: 'c11',
       title: 'Diabetes type 1',
       etitle: 'Type 1 Diabetes Diet',
       subtitle: 'I want to cut back on carbs',
       iconImage: 'assets/images/type1.png',
       image: 'assets/images/categories_images/type1.jpg',
       opinion: 'I want to cut back on carbs and maintain a healthy blood sugar level'
   ),
   Category(
       id: 'c12',
       title: 'Diabetes type 2',
       etitle: 'Type 2 Diabetes Diet',
       subtitle: 'I want to cut back on carbs',
       iconImage: 'assets/images/type2.png',
       image: 'assets/images/categories_images/type2.jpg',
       opinion: 'I want to cut back on carbs and maintain a healthy blood sugar level'
   ),
 ];

const DUMMY_Meals =  const [
  //Traditionnal
  Meal(
      id: 'm1',
      category: ['c1'],
      title: 'Tunisian Salade',
      imageUrl: 'assets/images/traditional/salade.jpg',
      time: '15 min',
      characteristic: [
        'High protein',
        'Quick & Easy'
      ],
      ingredients: [
        "4 tomates",
      "1 oignon de taille moyenne",
      "1 concombre",
      "3 cuillères à soupe d'huile d'olive",
        "2 cuillères à soupe de vinaigre"
        "1 cuillère à soupe de citron",
        "Sel et poivre",
        "Des œufs durs et des morceaux de thon pour la déco"
      ],
      steps: [],
      kcal: 72,
      protein: 45,
      fat: 45,
      carbs: 45
  ),
  Meal(
      id: 'm2',
      category: ['c1'],
      title: 'Mloukhia',
      time: '4 h',
      imageUrl: 'assets/images/traditional/mloukhia.jpg',
      characteristic: [
        'High lipid',
        'High protein'
      ],
      ingredients: [
        "1/2 cuillère d'huile ",
        "1/3 gausse d'ail",
        "1/4  boîte moyenne de concentré de tomates",
        "1/3  c.à.s de coriandre en grains",
        "eau chaude",
        "1/4 oignon"
        "1/4 sachet de mloukhia",
        "1 morceau de viande selon le nombre de personnes (bœuf ou agneau)"
        "1/3 feuille de laurier",
        "1/4 piment vert ou rouge (selon si on aime le plat épicé)"
      ],
      steps: [
          'Boil a large pot of water.',
           'In a pot, brown the onion in very hot oil, sear the meat and set it aside.',
          'Remove the pot from the heat, the time to pour the molokhia powder into the oil, stirring vigorously; a paste forms.',
          'Return to very low heat and gradually add boiling water, stirring vigorously to avoid lumps, up to three quarters of the height of the pot.',
          'Simmer for forty five minutes to an hour then add the meat, onions, spices, garlic, bay leaf, harissa, salt and pepper.',
          'When the oil rises to the surface, the dish is ready.'

      ],
      kcal: 385,
      protein: 45,
      fat: 45,
      carbs: 0
  ),
  Meal(
      id: 'm3',
      category:  ['c1'],
      title: 'Couscous Hout',
      imageUrl: 'assets/images/traditional/couscous.png',
      time: '60 min',
      characteristic: [
        'High lipid',
        'High protein'
      ],
      ingredients: [
        "1 kg de poisson",
        "1 kg de couscous fin",
        "3 Oignons",
        "3 pommes de terre",
        "3 courgettes"
        "100 gr de pois chiches trempés"
        "1 gousse d'ail ",
        "3 c. à soupe de concentré de tomate",
        "1 c. à café de harissa"
        "1 c. à l'huile d'olive",
        "1 c. à sel et poivre",
        "1 c. à café de smen (facultatif)",
        "1 c. à cumin et curcuma ",
        "8 piments frits"
      ],
    steps: [
            'Slightly incise sweet peppers and fill cumin and salt',
            'Heat the olive oil in the steamer pot, fry sweet peppers and put ‎them in a plate aside.',
            'Add to the hot oil chopped onions, chickpeas and tomato paste diluted in a ‎glass of water, season with salt, black pepper and red pepper-dried.',
            'stir and cook for 5-8 minutes.',
            "After 20-30 minutes, put fish in the steamer pot to cook during 15 minutes.",
            " Finally, empty the couscous in a bowl to serve, sprinkle the couscous with the sauce and mix thoroughly."

  ],
    kcal: 360,
      protein: 45,
      fat: 45,
      carbs:45,
  ),
  Meal(
      id: 'm4',
      category:  ['c1'],
      title: 'Salade Mechouia',
      imageUrl: 'assets/images/traditional/slatamechouia.png',
      time: '20 min',
      characteristic: [
        'High protein',
        'gluten free'
      ],
      ingredients: [
        "4 tomates",
        "4 poivrons",
        "1 ou 2 piments ",
        "2 oignons",
        "4 gousses d'ail"
        "2 cuillères à café de coriandre en graines moulues",
        "2 cuillères à café de carvi moulu",
        "huile d'olive",
        "sel"
      ],
    steps: [],
    kcal: 239,
      protein: 45,
      fat: 45,
      carbs: 45,
  ),
  Meal(
      id: 'm5',
      category:  ['c1'],
      title: 'kafteji',
      imageUrl: 'assets/images/traditional/kafteji.png',
      time: '20 min',
      characteristic: [
        'High protein',
        'High lipid'
      ],
      ingredients: [
        "4 tomates",
        "1 aubergine",
        "1/2 oignon",
        "4 pommes de terre",
        "2 gros piments frais"
        "1 c.à.c rase de karouia (= carvi)",
        "harissa maison (à la demande)",
        "sel & poivre",
        "huile d’olive",
        "500 ml d’huile de friture",
        "persil frais"
      ],
      steps: [],
      kcal: 239,
      protein: 45,
      fat: 45,
      carbs: 45
  ),
  Meal(
      id: 'm6',
      category: ['c1'],
      title: 'Kamounia',
      imageUrl: 'assets/images/traditional/kamounia.jpg',
      time: '45 min',
      characteristic: [
        'High protein',
        'Gluten free'
      ],
      ingredients: [
        "4 c.à.s d’huile d’olive",
        "1 c.à.c de Curcuma",
        "500 g de viande de bœuf (de la viande de bœuf ou de la viande de veau)",
        "500 g de foie (du foie de bœuf ou du foie de veau)",
        "1 c.à.s de purée de tomates",
        "1 c.à.c de piment rouge"
        "2 c.à.c de Cumin ou Kamoun",
        "4 gousses d’ail",
        "pincées de sel",
        "1/2 c.c. de poivre moulu",
      ],
      steps: [],
      kcal: 239,
      protein: 45,
      fat: 45,
      carbs: 45
  ),
  Meal(
      id: 'm7',
      title: 'Riz',
      category:  ['c1'],
      imageUrl: 'assets/images/traditional/riz.jpg',
      time: '25 min',
      characteristic: [
        'High protein',
        'Gluten free'
      ],
      ingredients:
      [
        "60 g de riz blanc",
        "1 carotte",
        "1 boite de maïs",
        "2 œufs",
        "5 brins de ciboulette "
        "2 c.à.s d’huile"
        "sel, poivre du moulin",
        "1 tomates",
        "1 boite de petits pois",
        "1 saucisses de Francfort",
        "8 olives noires",
        "2 c.à.s de vinaigre balsamique",
      ],
      steps: [],
      kcal: 239,
      protein: 100,
      fat: 100,
      carbs: 100
  ),
  Meal(
      id: 'm8',
      title: 'Besbes',
      category:  ['c1'],
      imageUrl: 'assets/images/traditional/besbes.jpg',
      time: '25 min',
      characteristic: [
        'High protein',
        'Gluten free'
      ],
      ingredients:
      [
        "60 g de riz blanc",
        "1 carotte",
        "1 boite de maïs",
        "2 œufs",
        "5 brins de ciboulette "
            "2 c.à.s d’huile"
            "sel, poivre du moulin",
        "1 tomates",
        "1 boite de petits pois",
        "1 saucisses de Francfort",
        "8 olives noires",
        "2 c.à.s de vinaigre balsamique",
      ],
      steps: [
        'Brown the peppers (fresh hot peppers and felfel msayer) in olive oil over medium heat,Reserve.',
        'In the same oil, put the chopped onion',
        'then add the concentrate diluted in a little water with the garlic and caraway, then the harissa and hot pepper.',
        'Let brown for a few minutes.',
        'Extend the sauce with a large glass of water, reduce the heat, and simmer for about ten minutes, stirring occasionally, add the peppers.',
        'The sauce should be thick enough.'

],
      kcal: 239,
      protein: 100,
      fat: 100,
      carbs: 100
  ),
  Meal(
      id: 'm9',
      title: 'Lablebi',
      category:  ['c1'],
      imageUrl: 'assets/images/traditional/lablebi.png',
      time: '30 min',
      characteristic: [
        'High protein',
        'Gluten free'
      ],
      ingredients:
      [
        "60 g de riz blanc",
        "1 carotte",
        "1 boite de maïs",
        "2 œufs",
        "5 brins de ciboulette "
            "2 c.à.s d’huile"
            "sel, poivre du moulin",
        "1 tomates",
        "1 boite de petits pois",
        "1 saucisses de Francfort",
        "8 olives noires",
        "2 c.à.s de vinaigre balsamique",
      ],
      steps: [],
      kcal: 239,
      protein: 100,
      fat: 100,
      carbs: 100
  ),
  Meal(
      id: 'm10',
      title: 'Tajin',
      category:  ['c1'],
      imageUrl: 'assets/images/traditional/tajin.jpg',
      time: '30 min',
      characteristic: [
        'High protein',
        'Gluten free'
      ],
      ingredients:
      [
        "60 g de riz blanc",
        "1 carotte",
        "1 boite de maïs",
        "2 œufs",
        "5 brins de ciboulette "
            "2 c.à.s d’huile"
            "sel, poivre du moulin",
        "1 tomates",
        "1 boite de petits pois",
        "1 saucisses de Francfort",
        "8 olives noires",
        "2 c.à.s de vinaigre balsamique",
      ],
      steps: [],
      kcal: 239,
      protein: 100,
      fat: 100,
      carbs: 100
  ),
  Meal(
      id: 'm11',
      title: 'Omok Houria',
      category:  ['c1'],
      imageUrl: 'assets/images/traditional/torchi.jpg',
      time: '30 min',
      characteristic: [
        'High protein',
        'Gluten free'
      ],
      ingredients:
      [
        "60 g de riz blanc",
        "1 carotte",
        "1 boite de maïs",
        "2 œufs",
        "5 brins de ciboulette "
            "2 c.à.s d’huile"
            "sel, poivre du moulin",
        "1 tomates",
        "1 boite de petits pois",
        "1 saucisses de Francfort",
        "8 olives noires",
        "2 c.à.s de vinaigre balsamique",
      ],
      steps: [],
      kcal: 239,
      protein: 100,
      fat: 100,
      carbs: 100
  ),
  Meal(
      id: 'm12',
      title: 'Sandwitch',
      category:  ['c1'],
      imageUrl: 'assets/images/traditional/sandwich.jpg',
      time: '30 min',
      characteristic: [
        'High protein',
        'Gluten free'
      ],
      ingredients:
      [
        "60 g de riz blanc",
        "1 carotte",
        "1 boite de maïs",
        "2 œufs",
        "5 brins de ciboulette "
            "2 c.à.s d’huile"
            "sel, poivre du moulin",
        "1 tomates",
        "1 boite de petits pois",
        "1 saucisses de Francfort",
        "8 olives noires",
        "2 c.à.s de vinaigre balsamique",
      ],
      steps: [],
      kcal: 239,
      protein: 100,
      fat: 100,
      carbs: 100
  ),






  // Vegetarian
  Meal(
      id: 'm13',
      category: ['c2','c3'],
      title: 'Vegan Scramble with Tomato',
      imageUrl: 'assets/images/vegetarian/scramble.jpg',
      time: '25 min',
      characteristic: [
        'High protein',
        'Quick & Easy'
      ],
      ingredients: [
        "firm tofu"
        "red onion",
        "tumeric",
        "soy cream/cuisine or almond butter",
        "soy sauce",
        "kala namak (Himalayan black salt)",
        "black pepper",
        "a large tomato",
        "fresh chives"
      ],
      steps :[
        "Use a fork or hands to crumble the tofu into small pieces. In a medium pan, heat the olive oil over medium heat. Cook the tofu for 1 minute, then stir in the red onion.",
        "Cook for another 2 minutes before adding the turmeric. Add the water and season with soy sauce, kala namak, and black pepper.",
        "Cut the tomato into small chunks and add it to the scrambled tofu. Sprinkle with chives. Enjoy!",

      ],
      kcal: 528,
      protein: 26,
      fat: 28,
      carbs: 42
  ),
  Meal(
      id: 'm14',
      category: ['c2','c3'],
      title: 'Lentils With Mushrooms',
      imageUrl: 'assets/images/vegetarian/mushrooms.jpg',
      time: '40 min',
      characteristic: [
        "Super hearty"
        "Comforting"
      ],
      ingredients: [
        "POTATOES",
        "MUSHROOM LENTIL GRAVY",
        "GARNISH optional",
      ],
      steps :[
        "Heat a large rimmed pan over medium heat. ",
        "Once hot, add oil or water and shallot and sauté for 2 minutes, stirring occasionally.",
        "Add mushrooms and coconut aminos and increase heat to medium-high. Sauté for 5 minutes, stirring frequently. Add a pinch of salt and pepper.",
        "Add thyme, lentils, and 2 cups (480 ml // or the smaller end of the range if adjusting recipe size) vegetable broth.",
        "In the meantime, add potatoes to a large pot and cover with water so they are just submerged"

      ],
      kcal: 428,
      protein: 25,
      fat: 15,
      carbs: 48
  ),
  Meal(
      id: 'm15',
      category: ['c2','c3'],
      title: 'Salad With Beets',
      imageUrl: 'assets/images/vegetarian/saladwithbeets.jpg',
      time: '25 min',
      characteristic: [
        "Lactose free",
        " Quick & Easy"
      ],
      ingredients: [
       "1/2 cup uncooked quinoa, rinsed",
      "1 cup frozen organic edamame",
      " 1/3 cup slivered almonds or pepitas (green pumpkin seeds)",
      "1 medium raw beet, peeled",
      "1 medium-to-large carrot (or 1 additional medium beet), peeled",
      "2 cups packed baby spinach or arugula, roughly chopped",
      "1 avocado, cubed"
      ],
      steps :[
        "Heat a large rimmed pan over medium heat. ",
        "Once hot, add oil or water and shallot and sauté for 2 minutes, stirring occasionally.",
        "Add mushrooms and coconut aminos and increase heat to medium-high. Sauté for 5 minutes, stirring frequently. Add a pinch of salt and pepper.",
        "Add thyme, lentils, and 2 cups (480 ml // or the smaller end of the range if adjusting recipe size) vegetable broth.",
        "In the meantime, add potatoes to a large pot and cover with water so they are just submerged"

      ],
      kcal: 502,
      protein: 15,
      fat: 13,
      carbs: 79
  ),
  Meal(
      id: 'm16',
      category: ['c2','c3'],
      title: 'Fruit With Cheese',
      imageUrl: 'assets/images/vegetarian/fruit.jpg',
      time: '5 min',
      characteristic: [
        "Gluten free",
        " Quick & Easy"
      ],
      ingredients: [
        "1/2 cup uncooked quinoa, rinsed",
        "1 cup frozen organic edamame",
        " 1/3 cup slivered almonds or pepitas (green pumpkin seeds)",
        "1 medium raw beet, peeled",
        "1 medium-to-large carrot (or 1 additional medium beet), peeled",
        "2 cups packed baby spinach or arugula, roughly chopped",
        "1 avocado, cubed"
      ],
      steps :[
        "Place 3/4 cup of yogurt in a bowl.",
        "Wash and slice your berries, place on top of the yogurt.",
        "Drizzle honey over top. Enjoy as an amazing breakfast!",
      ],
      kcal: 97,
      protein: 5,
      fat: 6,
      carbs: 5
  ),
  Meal(
      id: 'm17',
      category: ['c2','c3'],
      title: 'Greek Yogurt With Berries',
      imageUrl: 'assets/images/vegetarian/greekyogurt.jpg',
      time: '10 min',
      characteristic: [
        "Gluten free",
        " Quick & Easy"
      ],
      ingredients: [
        "Berries of choice",
        "Tofu",
      ],
      steps :[
        "Place 3/4 cup of yogurt in a bowl.",
        "Wash and slice your berries, place on top of the yogurt.",
        "Drizzle honey over top. Enjoy as an amazing breakfast!",
      ],
      kcal: 247,
      protein: 12,
      fat: 9,
      carbs: 28
  ),
  Meal(
      id: 'm18',
      category: ['c2','c3'],
      title: 'Braised Greens with Golden Raisins and Maple',
      imageUrl: 'assets/images/vegetarian/maple.png',
      time: '20 min',
      characteristic: [
        "Gluten free",
        " Quick & Easy"
      ],
      ingredients: [
        "1 lb Hearty greens, such as italian kale, collards or swiss chard, about 4 cups packed",
        "2 Tbsp Extra-virgin olive oil",
      ],
      steps :[],
      kcal: 224,
      protein: 12,
      fat: 9,
      carbs: 28
  ),
  Meal(
      id: 'm19',
      category: ['c2','c3'],
      title: 'Alfredo Sauce',
      imageUrl: 'assets/images/vegetarian/sauce.png',
      time: '15 min',
      characteristic: [
        "Gluten free",
        " Quick & Easy"
      ],
      ingredients: [],
      steps :[],
      kcal: 545,
      protein: 12,
      fat: 9,
      carbs: 28
  ),
  Meal(
      id: 'm20',
      category: ['c2','c3'],
      title: 'Stuffed Mushrooms',
      imageUrl: 'assets/images/vegetarian/stuffed.png',
      time: '25 min',
      characteristic: [
        "Gluten free",
        " Quick & Easy"
      ],
      ingredients: [],
      steps :[],
      kcal: 161,
      protein: 12,
      fat: 9,
      carbs: 28
  ),


  //vegetarian (Plan diet)


  //keto vegan
  Meal(
      id: 'm21',
      category: ['c4'],
      title: 'Curried Tofu Scramble',
      imageUrl: 'assets/images/keto_vegan/scramble.png',
      time: '10 min',
      characteristic: [
        "Gluten free",
        " Quick & Easy"
      ],
      ingredients: [
        "1 block firm or extra firm tofu pressed and drained",
        "3-4 tbsp vegetable broth (used to saute)",
        "1 small onion diced",
        "1 large red pepper diced",
        "8 oz mushrooms sliced",
        "1/2 tsp turmeric powder",
        "1/2 tsp curry powder",
        "1/2 tsp garlic powder",
        "1/2 tsp cumin",
        "1/4 tsp coriander",
        "1/4 tsp paprika",
        "1/4 tsp garam masala",
        "2-3 cups fresh spinach",
        "1/4 tsp black salt (add more to taste)",
        "1/4 tsp black pepper",
        "1/2 cup green onions sliced"
      ],
      steps :[],
      kcal: 64,
      protein: 12,
      fat: 9,
      carbs: 28
  ),
  Meal(
      id: 'm22',
      category: ['c4'],
      title: 'Low-Carb Maple Oatmeal',
      imageUrl: 'assets/images/keto_vegan/carb.png',
      time: '20 min',
      characteristic: [
        "Gluten free",
        " Quick & Easy"
      ],
      ingredients: [
        '60 g walnuts',
        '60 g pecans',
        '40 g sunflower seeds',
        '15 g coconut flakes',
        '1000 ml unsweetened almond milk',
        '4 tbsp chia seeds',
        '3/8 tsp stevia powder',
        '1/2 tsp cinnamon',
        '1 tsp maple flavouring optional',
      ],
      steps :[],
      kcal: 374,
      protein: 12,
      fat: 9,
      carbs: 28
  ),
  Meal(
      id: 'm23',
      category: ['c4'],
      title: 'Best Ever Guacamole',
      imageUrl: 'assets/images/keto_vegan/guacamole.png',
      time: '20 min',
      characteristic: [
        "Gluten free",
        " Quick & Easy"
      ],
      ingredients: [
        '3 avocados, ripe',
        '1/2 small onion, finely diced',
        '2 Roma tomatoes, diced',
        '3 tablespoons finely chopped fresh cilantro',
        '1 jalapeno pepper, seeds removed and finely diced',
        '2 garlic cloves, minced',
        '1 lime, juiced',
        '1/2 teaspoon sea salt'
      ],
      steps :[],
      kcal: 374,
      protein: 12,
      fat: 9,
      carbs: 28
  ),
  Meal(
      id: 'm24',
      category: ['c4'],
      title: 'Asian Ginger Slaw',
      imageUrl: 'assets/images/keto_vegan/slaw.png',
      time: '10 min',
      characteristic: [
        "Gluten free",
        " Quick & Easy"
      ],
      ingredients: [
        '3 avocados, ripe',
        '1/2 small onion, finely diced',
        '2 Roma tomatoes, diced',
        '3 tablespoons finely chopped fresh cilantro',
        '1 jalapeno pepper, seeds removed and finely diced',
        '2 garlic cloves, minced',
        '1 lime, juiced',
        '1/2 teaspoon sea salt'
      ],
      steps :[],
      kcal: 184,
      protein: 12,
      fat: 9,
      carbs: 28
  ),

//keto
  Meal(
    id: 'm25',
    category: ['c5'],
    title: 'Avocado Boats',
    imageUrl: 'assets/images/keto/avocado.jpg',
    time: '30 min',
    characteristic: ['High protein','Lactose free'],
    ingredients: [
      '2 ripe avocados, halved and pitted',
      '4 large eggs',
      'Kosher salt',
      'Freshly ground black pepper',
      '3 slices bacon',
      'Freshly chopped chives, for garnish'
    ],
    steps: [
      'Preheat oven to 350°. Scoop about 1 tablespoon worth of avocado out of each half; discard or reserve for another use.',
      'Place hollowed avocados in a baking dish, then crack eggs into a bowl, one at a time. Using a spoon, transfer one yolk to each avocado half, then spoon in as much egg white as you can fit without spilling over.',
      'Season with salt and pepper and bake until whites are set and yolks are no longer runny, 20 to 25 minutes. (Cover with foil if avocados are beginning to brown.)',
      'Meanwhile, in a large skillet over medium heat, cook bacon until crisp, 8 minutes, then transfer to a paper towel-lined plate and chop.',
      'Top avocados with bacon and chives before serving.'
    ],
    kcal: 712,
    protein: 27,
    fat: 55,
    carbs: 24
),
  Meal(
      id: 'm26',
      category: ['c5'],
      title: 'Keto Salad',
      imageUrl: 'assets/images/keto/ketosalade.jpg',
      time: '30 min',
      characteristic: ['Quick & Easy','Gluten free'],
      ingredients: [
        '1/2 salade iceberg',
        '2 poignées de jeunes pousses',
        '2 œufs durs',
        '2 saucisses végétales type knacks',
        '4 radis roses',
        '1/3 de piment vert (selon goût)',
        '2 gros champignons de Paris',
        "1/3 d'un petit oignon rouge",
        '4 cerneaux de noix',
        '4 tomates cerises',
        '1 avocat bien mûr',
        '1 cuillère à soupe de persil frais ciselé'
      ],
      steps: [
        "Râper avec un économe une tranche fine de chou rouge. Je fais ainsi pour éviter le sortir le gros robot juste pour râper ce légume ! En effet, le chou rouge est excellent pour la santé, c'est un antioxydant entre autres.",
        "D'une part couper une demi laitue iceberg et y ajouter d'autre part deux poignées de jeunes pousses lavées (épinards, mâche, scarole, roquette). Un peu de différentes salades cela fait des nutriments plus intéressants qu'une seule.",
        "Couper le tiers d'un petit oignon rouge en rondelles. Les légumes colorés sont très bons pour la santé. Toutefois pour un régime cétogène il faut mettre très peu d'oignon car il contient des glucides.",
        "Laver un piment vert et en découper quelques rondelles. Sans les pépins qui sont trop forts ! Enfin si vous n'aimez"
      ],
      kcal: 407,
      protein: 14,
      fat: 34,
      carbs: 10
  ),
  Meal(
      id: 'm27',
      category: ['c5'],
      title: 'Keto Pancakes with Salmon',
      imageUrl: 'assets/images/keto/salmon.jpg',
      time: '30 min',
      characteristic: ['Quick & Easy','Gluten free'],
      ingredients: [
        '1/2 cup + 1 tbsp almond flour (58 g/ 2 oz)',
        '1/2 tsp gluten-free baking powder',
        'pinch of pink Himalayan salt',
        '2 large eggs',
        '3 tbsp unsweetened almond milk (45 ml)',
        '1 tbsp butter, melted (15 ml)',
        '1 tbsp extra virgin olive oil or ghee',
        '100 g cream cheese (3.5 oz)',
        '160 g smoked salmon (5.6 oz)',
        '3 tbsp capers, drained (26 g/ 0.9 oz)',
        '3 sprigs fresh dill',
        '1/2tsp cracked black pepper'
      ],
      steps: [
       'Separate the egg whites and yolks. Place the egg yolks, melted butter and almond milk in a mixing bowl. Gently whisk using a hand whisk until combined.',
        'Fold in the almond flour, baking powder and salt.',
        'Whisk the egg whites in a high speed mixer using the whisk blade until light and fluffy.',
        'Carefully fold the egg whites into the batter until combined. Don’t over beat or this will flatten the blinis.',
        'Heat a little olive oil in a pan until the base is coated. Spoon a heaped teaspoon per blini into the pan and fry on a low heat for about 50 seconds per side until golden. Flip and repeat on the other side. Repeat the above step until all the batter is used up (you should be able to make 16 blinis).',
        'Once cooked, place on a sheet of kitchen paper to cool. Top each blini with a little cream cheese, smoked salmon, 2 - 3 capers, dill and a tiny sprinkle of cracked black pepper. Store in the fridge for up to 2 days.'
      ],
      kcal: 586,
      protein: 30,
      fat: 50,
      carbs: 5
  ),





];


const DUMMY_COACHES = [
  Coach(
      id: 'c1',
      name: 'Yessine Bouaziz',
      imageUrl: 'assets/images/coaches/yessine.jpg',
      experience: '10 years',
      cost: '30 dt ',
      workPlace: 'One gym',
      field: ['Body Building /','Fitness'],
      rate: '',
      phoneNumber: '22497695',
      email: 'yessine.bouaziz@supcom.tn',
      trophies: 'Master de recherche en sport et éducation physique',
      images: ['assets/images/gym/one_gym/one_gym1.jpg','assets/images/gym/one_gym/one_gym2.jpg','assets/images/gym/one_gym/one_gym3.jpg','assets/images/gym/one_gym/onegym4.jpg','assets/images/gym/one_gym/onegym5.jpg'],
      imgWorkplace: 'assets/images/gym/one_gym/onegymlogo.jpg',
      width: 36.84168226987249,
      height: 10.155875355253972
  ),
  Coach(
      id: 'c2',
      name: 'Ahmed Bouzid',
      imageUrl: 'assets/images/coaches/ahmed.jpg',
      experience: '8 years',
      cost: '20 dt ',
      workPlace: 'Factory',
      field: ['Body Building /','Fitness'],
      rate: '',
      phoneNumber: '95208371',
      email: 'ahmed.bouzid@supcom.tn',
      trophies: 'Master de recherche en sport et éducation physique',
      images: [],
      imgWorkplace: '',
      width: 36.84168226987249,
      height: 10.155875355253972

  ),
  Coach(
      id: 'c3',
      name: 'Wiseem Bettaieb',
      imageUrl: 'assets/images/coaches/wissem.jpg',
      experience: '5 years',
      cost: '25 dt ',
      workPlace: 'One gym',
      field: ['Body Building /','Karate'],
      rate: '',
      phoneNumber: '22497695',
      email: 'wissem.bettaeib@supcom.tn',
      trophies: 'Master de recherche en sport et éducation physique',
      images: ['assets/images/gym/one_gym/one_gym1.jpg','assets/images/gym/one_gym/one_gym2.jpg','assets/images/gym/one_gym/one_gym3.jpg'],
      imgWorkplace: 'assets/images/gym/one_gym/onegymlogo.jpg',
      width: 36.84168226987249,
      height: 10.155875355253972

  ),
  Coach(
      id: 'c4',
      name: 'Cheyma Bhouri',
      imageUrl: 'assets/images/coaches/cheyma.jpg',
      experience: '3 years',
      cost: '10 dt ',
      workPlace: 'One gym',
      field: ['Dancing /','Body Building'],
      rate: '',
      phoneNumber: '*********',
      email: 'cheyma.bhouri@supcom.tn',
      trophies: 'Master de recherche en sport et éducation physique',
      images: ['assets/images/gym/one_gym/one_gym1.jpg','assets/images/gym/one_gym/one_gym2.jpg','assets/images/gym/one_gym/one_gym3.jpg'],
      imgWorkplace:'assets/images/gym/one_gym/onegymlogo.jpg',
      width: 36.84168226987249,
      height: 10.155875355253972

  ),
  Coach(
      id: 'c5',
      name: 'Ala Ben Amara',
      imageUrl: 'assets/images/coaches/ala.jpg',
      experience: '15 years',
      cost: '35 dt ',
      workPlace: 'Titans',
      field: ['Body Building','Fitness'],
      rate: '',
      phoneNumber: '*********',
      email: 'aziziala2040@gmail.com',
      trophies: 'Master de recherche en sport et éducation physique',
      images: ['assets/images/gym/titans/titans1.jpeg','assets/images/gym/titans/titans2.png',],
      imgWorkplace: 'assets/images/gym/titans/titan_logo.jpg',
      width: 36.84168226987249,
      height: 10.155875355253972

  ),
  Coach(
      id: 'c6',
      name: 'Mohamed Amine Toumi',
      imageUrl: 'assets/images/coaches/toumi.jpg',
      experience: '0 year',
      cost: '0 dt ',
      workPlace: 'No gym',
      field: ['Mekla /', 'Rkad'],
      rate: '',
      phoneNumber: '*********',
      email: 'aziziala2040@gmail.com',
      trophies: 'Master de recherche en Mekla',
      images: ['assets/images/gym/one_gym/one_gym1.jpg','assets/images/gym/one_gym/one_gym2.jpg','assets/images/gym/one_gym/one_gym3.jpg'],
      imgWorkplace: 'assets/images/gym/titans/titan_logo.jpg',
      width: 36.84168226987249,
      height: 10.155875355253972
  ),



];

const DUMMY_GYMS = const [
  Gym(
      id: 'g1',
      name: 'One Gym',
      images: ['assets/images/gym/one_gym/one_gym1.jpg','assets/images/gym/one_gym/one_gym2.jpg','assets/images/gym/one_gym/one_gym3.jpg'],
      categories: []
  ),

  Gym(
      id: 'g2',
      name: 'Titans',
      images: ['assets/images/gym/titans/titans1.jpg','assets/images/gym/titans/titans2.jpg'],
      categories: []
  ),

  Gym(
      id: 'g1',
      name: 'Factory',
      images: [],
      categories: []
  )
];

const DUMMY_PLAN = const [
  Plan(
      id: 'p1',
      title: 'Start With Your Mind',
      subtitle: 'Chapter1',
      image: 'assets/images/plan/mind.png',
      color:Color.fromRGBO(159,191,223,100),
      routeName: 'mind_plan'
  ),
  Plan(
      id: 'p2',
      title: 'Fasting',
      subtitle: 'Start now',
      image: 'assets/images/plan/fasting.png',
      color: Color.fromRGBO(121,166,210,100),
      routeName: 'fasting'

  ),
  Plan(
      id: 'p3',
      title: 'Workout',
      subtitle: 'Stomach exercices',
      image: 'assets/images/plan/workout.png',
      color:Color.fromRGBO(250, 220, 217, 100),
      routeName: 'work_out'

  ),
  Plan(
      id: 'p4',
      title: 'Add food',
      subtitle: '',
      image: 'assets/images/plan/addfood.png',
      color: Color.fromRGBO(200, 244, 249, 100),
      routeName: 'add_food'

  ),
  Plan(
      id: 'p5',
      title: 'Water tracker',
      subtitle: '',
      image: 'assets/images/plan/water.png',
      color: Color.fromRGBO(187, 231, 254, 100),
      routeName: 'mind_plan'

  ),
  Plan(
      id: 'p6',
      title: 'Walk',
      subtitle: 'Your goal is 7,000 steps',
      image: 'assets/images/plan/walking.png',
      color: Color.fromRGBO(239, 241, 219, 100),
      routeName: 'mind_plan'

  ),
];

const DUMMY_CHALLENGES = const [
  Challenge(
      id: 'c1',
      title: 'Clean Eating',
      imageUrl: 'assets/images/challenges/clean_eating.png',
      days: 28,
      price: 10,
      aboutChallenge: '',
      users: '3,036'

  ),

  Challenge(
      id: 'c2',
      title: 'Sugar Free',
      imageUrl: 'assets/images/challenges/sugar_free.png',
      days: 21,
      price: 12,
      aboutChallenge: '',
      users: '3,036'

  ),
  Challenge(
      id: 'c3',
      title: 'HIIT with Jared',
      imageUrl: 'assets/images/challenges/hit_jared.png',
      days: 30,
      price: 15,
      aboutChallenge: '',
      users: '3,036'

  ),
  Challenge(
      id: 'c4',
      title: 'Fat burn with Liana',
      imageUrl: 'assets/images/challenges/liana.png',
      days: 28,
      price: 25,
      aboutChallenge: '',
      users: '3,036'
  ),
  Challenge(
      id: 'c5',
      title: 'Shredded Body with\nMike',
      imageUrl: 'assets/images/challenges/mike.png',
      days: 28,
      price: 27,
      aboutChallenge: '',
      users: '5,036'
  ),
  Challenge(
      id: 'c5',
      title: 'Shredded Inga',
      imageUrl: 'assets/images/challenges/inga.png',
      days: 21,
      price: 21,
      aboutChallenge: '',
      users: '3,001'
  ),
  Challenge(
      id: 'c6',
      title: 'Fasting',
      imageUrl: 'assets/images/challenges/fasting.png',
      days: 21,
      price: 35,
      aboutChallenge: '',
      users: '4,036'
  ),
  Challenge(
      id: 'c7',
      title: 'Fat-Burning Yoga',
      imageUrl: 'assets/images/challenges/yoga.png',
      days: 21,
      price: 25,
      aboutChallenge: '',
      users: '2,036'
  ),
];


const WORK_OUT_LIBRARY = const [

  WorkOut(
      id: 'w1',
      name: 'Fitness at Home',
      number: 81,
      image: 'assets/images/workout/fitness_home.png'
  ),
  WorkOut(
    id: 'w2',
    name: 'Kegel Workouts',
    number: 7,
    image: 'assets/images/workout/kegel.png'

  ),
  WorkOut(
    id: 'w3',
    name: 'Running',
    number: 23,
    image: 'assets/images/workout/running.png'
  ),
  WorkOut(
    id: 'w4',
    name: 'Yoga',
    number: 15,
    image: 'assets/images/workout/yoga.png'
  ),
  WorkOut(
    id: 'w5',
    name: 'Military Boot Camp',
    number: 10,
    image: 'assets/images/workout/military.png'
  ),
  WorkOut(
    id: 'w6',
    name: 'Boxing',
    number: 15,
    image: 'assets/images/workout/boxing.png'
  ),
  WorkOut(
    id: 'w7',
    name: 'Fighting',
    number: 10,
    image: 'assets/images/workout/fighting.png'
  ),
  WorkOut(
    id: 'w8',
    name: 'Abs Program',
    number: 12,
    image: 'assets/images/workout/abs.png'
  ),
  WorkOut(
    id: 'w9',
    name: 'Dancing Workouts',
    number: 10,
    image: 'assets/images/workout/dancing.png'
  ),
];

const DUMMY_EXERCICES = const [
  Exercice(
      id: 'e1',
      title: 'Full-Body Burner',
      category: ['w1'],
      time: 17,
      image: 'assets/images/fitness_at_home/burner.jpg'
  ),
  Exercice(
      id: 'e2',
      title: 'Full Body Fat Blast',
      category: ['w1'],
      time: 20,
      image: 'assets/images/fitness_at_home/fatblast.jpg'
  ),
  Exercice(
      id: 'e3',
      title: 'Shared Fat Burning\nWorkout',
      category: ['w1'],
      time: 17,
      image: 'assets/images/fitness_at_home/burner.jpg'
  ),
  Exercice(
      id: 'e5',
      title: 'Beginner Legs Workout',
      category: ['w1'],
      time: 24,
      image: 'assets/images/fitness_at_home/legs.jpg'
  ),
  Exercice(
      id: 'e6',
      title: 'Get Rid of Fat',
      category: ['w1'],
      time: 24,
      image: 'assets/images/fitness_at_home/rid.jpg'
  ),
  Exercice(
      id: 'e7',
      title: 'Strong Bicep and Tricep\nWorkout',
      category: ['w1'],
      time: 18,
      image: 'assets/images/fitness_at_home/bicep.png'
  ),
  Exercice(
      id: 'e8',
      title: 'Astonishing Workout for\nLegs',
      category: ['w1'],
      time: 19,
      image: 'assets/images/fitness_at_home/astonishing.jpg'
  ),
];


