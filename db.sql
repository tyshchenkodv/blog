-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 25 2019 г., 18:19
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `title`, `description`, `content`, `date`, `image`, `viewed`, `user_id`, `status`, `category_id`) VALUES
(8, 'Modern life is impossible without travelling', '<p>Рassion for travel</p>\r\n', '<p>Modern life is impossible without travelling. Thousands of people travel every day either on business or for pleasure. They can travel by air, by rail, by see or by road.</p>\r\n\r\n<p>Travelling by air is the fastest and the most convenient way, but it is the most expensive too. To my mind travelling by train is more interesting. You can see interesting places of the country you are travelling through. Modern trains have very comfortable seats. There are also sleeping carriages and a dining- carriage which make even the longest journey enjoyable.</p>\r\n\r\n<p>Travelling by sea is very popular. On board of ship you can enjoy your trip. There are tennis and badminton grounds, a swimming-pool, a cinema and a dancing hall there. Some people prefer travelling by car. If you have your own car you may go to the Black Sea, where there are a lot of rest-houses, sanatorium&#39;s and tourist camps. In the daytime you can have a nice opportunity to play volley-ball, swim in the warm water of the sea and sunbathe. In the evening you like to sit on the beach watching the sea and enjoying the sunset.</p>\r\n\r\n<p>As for me I&#39;m a hiker. I like to go on a hike to the mountains or to the forest. You go agree with me that it is pleasant to gather mushrooms and berries in the forest, swim in the river, make a fire and prepare meals on it. On my week-end I take a tent, a rucksack and go to railway station take the train. In an hour I find myself out of noisy city. The air is fresh, birds sing their merry songs. To make my long story short I&#39;d like to say that travelling is one of my hobbies. Travelling helps me to see to country-side better, to know about customs and traditions of the Republic, to meet people and make friends with them.</p>\r\n', '2019-12-16', '06e6b54467b5411f7400245a9dd92a6c.jpg', 71, 3, 1, 1),
(9, 'Travel Arrangements', '<p>Traveling is an essential part of any business</p>\r\n', '<p>Traveling is an essential part of any business. Even with new communication technology business people have to travel much as it&#39;s particularly important to establish good face-to-face relations with partners, suppliers and customers.</p>\r\n\r\n<p>The top priority for business travelers is good organization of their business trip. Generally, that is the responsibility if a Secretary of a Personal Assistant.Travel arrangements involve booking tickets for a plane or train, transport to and from the airport, booking accommodation, making appointments and arranging meetings.</p>\r\n\r\n<p>The first thing which the secretary should do is to learn about the destination and the exact dates of the trip.The dates and times of all the journey, appointments, meetings and events should be listened carefully in the itinerary.She should be aware of the number of people who are going to travel and the budget allowed for the trip so that she could book tickets and hotel accommodation properly. Most businessmen prefer air travel as it saves time. Calling a travel agency and booking a package tour which combines air tickets and accommodation is a common practice when making travel arrangements. The secretary should take care of the visas, passports and medical insurance in advance if travel arrangements are made without the involvement of a travel agency.</p>\r\n\r\n<p>One more thing which is of great importance is the ability of the secretary to support her boss whenever needed when unexpected things happen.For example, when the flight is delayed or cancelled, she should be ready to make changes in the itinerary, reschedule the appointments and meetings, inform the hotel about the problem.</p>\r\n', '2019-11-11', 'd36da14c0113faf9491772b3b96a623d.jpg', 110, 3, 2, 2),
(10, 'Business Trips', '', '<p>Never before in the history of the world have businessmen traveledas much as they do today. It is not surprising because we areliving in a world of growing international trade and expandingeconomic and technical cooperation. Though it is fascinating fortourist travelling, it has become the most tiring of alloccupations for many businessmen and experts. Therefore, choosing acomfortable hotel to stay at is a matter of bigimportance. There are plenty of good hotels, motels and guesthouses in the world, which are conviently located in major businesscenters.</p>\r\n\r\n<p>Many developing countries, such as India, Egypt,Nigeria, Lybia, etc have excellent hotels. Their numerousfacilities include both large and small cocktail bars, barber&#39;s shopsand conference halls equipped with simultaneous, multilingualtranslation systems. There are parking areas which can accomodatea lot of cars. It might be useful for travelling businessmen andtourists to know that tailor shops, shoe repair shops,laundry and dry cleaning services are available for guests. Peoplein the office help guests to book train or steamer tickets andrent a car. They are also ready to give all necessary information.Nowadays people who go on business mostly travel by air as it isthe fastest means of travelling. Passengers are requested toarrive at the airport 2 hours before the departure time oninternational flights and an hour on domestic flights, as theremust be enough time to complete the necessary airportformalities.Passengers must register their tickets, weigh andregister the luggage.</p>\r\n\r\n<p>Most airlines have at least 2 classes oftravel: first class and economy class which is cheaper. Eachpassenger of more than 2 years of age has a free luggageallowance. Generally this limit is 20kg for economic classpassenger and 30kg for first class passenger. Excess luggage mustbe paid for except for some articles that can be carried free ofcharge. Each passenger is given a boarding card to show atgeparture gate and again to the stewardess when boarding theplane. Watch the electric sign flashes when you are on board,when the &quot;Fasten Seat Belts&quot; sign goes on do it promptly and alsoobey the &quot;No Smoking&quot; signal. Do not forget your personal effectswhen leaving the plane.</p>\r\n', '2019-10-30', '9ac7c89f0919bc1fd05bfa2c0251dcfd.jpg', 60, 2, 3, 2),
(13, 'Restaurants', '<p>Today there are a lot of different restaurants and cafes where you can eat delicious and expensive food.</p>\r\n', '<p>Today there are a lot of different restaurants and cafes where you can eat delicious and expensive food. In restaurants people can also meet and communicate with their friends, relatives or business partners.</p>\r\n\r\n<p>There are many types of restaurants. They are divided into groups for price class, for service type (fast food, smorgasbord, a la carte), for type of cuisine (Italian, Chinese, Japanese, Indian and others).</p>\r\n\r\n<p>Fast food is very popular and saves time for busy working people and it is not expensive. For example, McDonald&#39;s restaurants sell what is called &quot;fast&quot; or &quot;junk&quot; food &mdash; hamburgers, chips and so on. Such food is very popular, especially with children and teenagers. Personally, I don&rsquo;t go to fast food restaurants often because I think that fast food is tasty, cheap but it is not completely healthy. But sometimes I can relax, enjoy the food and celebrate some event with my friends there.</p>\r\n\r\n<p>There are many traditional restaurants of a la carte menu. The service is usually excellent and friendly waiters help you to relax and enjoy your meal fully.</p>\r\n\r\n<p>You can try any types of food in restaurants &ndash; you can try homemade cakes, beefsteaks, pasta and macaroni and others. For a main course you can order fish, meat or chicken with some rice or potatoes, also you can ask for pasta and salad. You can eat a bowl of ice-cream, a pieces of apple pie, strawberries with cream or something like that for dessert. For drink you can order a glass of water or juice, a cup of coffee or tea or alcohol drink such as wine or beer.</p>\r\n\r\n<p>Many people often prefer restaurants of national cuisine such as Italian, Mexican and other. This restaurants offer types of food which are traditional for one or other country. For example, in the Italian restaurant you find many kinds of pasta, vegetables, cheese. In Mexican restaurant you are offered many meet dishes with different hot sauces. Personally, I dislike going to a Chinese restaurant but I prefer to order a portion of traditional rolls and a cup green tea in Japanese restaurant.</p>\r\n\r\n<p>Everyone can find a caf&eacute; or restaurant for own taste. I think that restaurants are important part of public life.</p>\r\n', '2019-11-05', '485499a3c36814053bf667c257a28b0f.jpg', 17, 1, NULL, 4),
(14, 'Travelling', '<p>Types of travel</p>\r\n', '<p>Almost all people are fond of travelling. It is very interesting to see new places, another towns and countries. People may travel either for pleasure or on business. There are various means of travelling. For me there is nothing like travel by air; it is more comfortable, more convenient and, of course, far quicker than any other means. There is none of the dust and dirt of a railway or car journey, none of the trouble of changing from train to steamer and then to another train.</p>\r\n\r\n<p>With a train you have speed, comfort and pleasure combined. From the comfortable seat of a railway carriage you have a splendid view of the whole countryside. If you are hungry, you can have a meal in the dining-car; and if a journey is a long one you can have a wonderful bed in a sleeper.</p>\r\n\r\n<p>Travelling by ship is also very popular now. It is very pleasant to feel the deck of the ship under the feet, to see the rise and fall of the waves, to feel the fresh sea wind blowing in the face and hear the cry of the seagulls.</p>\r\n\r\n<p>Many people like to travel by car. It is interesting too, because you can see many sights in a short time, you can stop when and where you like, you do not have to buy tickets or carry your suitcases.</p>\r\n\r\n<p>A very popular means of travelling is hiking. It is travelling on foot. Walking tours are very interesting. Hitch-hiking is a very popular method of travelling among young people. But it is not as popular in our country as abroad.</p>\r\n', '2019-12-01', 'c2133f39bc8faf814adeba516a9fb28e.jpg', 8, 3, NULL, 1),
(15, 'Whiskey', '<p>Whiskey (from the Gaelic for &quot;water of life&quot;), spirituous liquor distilled from a fermented mash of grains, usually rye, barley, oats, wheat, or corn. Inferior whiskeys are made from potatoes, beets, and other roots.</p>\r\n', '<p>Whiskey (from the Gaelic for &quot;water of life&quot;), spirituous liquor distilled from a fermented mash of grains, usually rye, barley, oats, wheat, or corn. Inferior whiskeys are made from potatoes, beets, and other roots.</p>\r\n\r\n<p>The standard whiskeys of the world are Scotch (commonly spelled whisky ), Irish, American, and Canadian. The Scotch Highland whisky (made in pot stills) and that of the Lowlands (patent stills) differ in the percentage of barley used, quality of the water, quantity of peat employed in curing the malt, manner of distilling, and kind of casks in which they are matured. Irish whiskey resembles Scotch, but no peat is used in the curing, and instead of the dry, somewhat smoky flavor of Scotch, it has a full, sweet taste.</p>\r\n\r\n<p>American whiskeys are divided into two main varieties, rye and bourbon, a corn whiskey that derives its name from Bourbon co., Ky. They have a higher flavor and a much deeper color than Scotch or Irish and require from two to three years longer to mature. Newly made whiskey is colorless, the rich brown of the matured liquor being acquired from the cask in which it is stored. Canadian whiskey has a characteristic lightness of body and must, according to law, be produced from cereal grain only.</p>\r\n\r\n<p>Whiskey was made in England in the 11th cent., chiefly in monasteries, but in the 16th cent. distilling was carried on commercially. No whiskey can be released from bond in Great Britain until it has matured in wood at least three years, and in practice most whiskey is stored seven or eight years before marketing. In the United States bonded whiskey must stay a minimum of four years in bond before it can be labeled as bonded rye or bourbon.</p>\r\n\r\n<p>The illicit manufacture of whiskey to avoid payment of excise taxes has been common. In the United States this is known as moonshining.</p>\r\n', '2019-12-19', '72d8c7b2debbcebe2baba3614e4e8466.jpg', 2, 2, NULL, 4),
(16, 'The Story of \"McDonald\'s\" and \"Coca-Cola\"', '<p>In 1937 the McDonnald brothers, Dick and Mark, opened little restaurant in California. They served hot dogs and milk shakes. In 1945 they have 20 waiters. All the teenagers in town ate hamburgers there. When the 1948 year came they got paper boxes and bags for the hamburgers. They put the price down from 30 to 15 cents. There were no more waiters &amp;mdash; it was self-service. So it was cheaper and faster.</p>\r\n', '<p>In 1937 the McDonnald brothers, Dick and Mark, opened little restaurant in California. They served hot dogs and milk shakes. In 1945 they have 20 waiters. All the teenagers in town ate hamburgers there. When the 1948 year came they got paper boxes and bags for the hamburgers. They put the price down from 30 to 15 cents. There were no more waiters &mdash; it was self-service. So it was cheaper and faster.</p>\r\n\r\n<p>In 1960s the McDonald&#39;s company opened hundreds of McDonald&#39;s restaurants all over the States. In 1971 they opened restaurants in Japan, Germany and Australia.</p>\r\n\r\n<p>Now the McDonald&#39;s company opens a new restaurant every 8 hours. There are more than 14,000 restaurants in over 70 countries.The Coca-Cola story began in Atlanta in 1886. John Pemberton invented a new drink. Two of the ingredients were the South American coca leaf and the African cola nut. Pemberton couldn&#39;t think of a good name for the drink. Finally, Dr. Pemberton&#39;s partner Frank Robinson suggested the name Coca-Cola. Thirty years later the famous Coca-Cola bottle design first appeared.</p>\r\n\r\n<p>For many years only Coca-Cola was made. They only introduced new drinks &mdash; Fanta, Sprite in the 1960s. The recipe of Coca-Cola is a secret. Today they sell Coca-Cola in 195countries. Hundreds of millions of people from Boston to Beijing drink it every day. It has the most famous trademark in the world.</p>\r\n', '2019-12-14', '9544940fbe48855e9e4ca92706a1e61e.jpg', 2, 2, NULL, 4),
(17, 'Shopping', '<p>I would like to tell you about shopping in the United Kingdom. Marks &amp; Spencer is Britain&#39;s favourite store. Tourists love it too. It attracts a great variety of customers from house wives to millionaires. Princess Diana, Dustin Hoffman and the British Prime-minister are just a few of its famous customers. Last year it made a profit of 529 million pounds, which is more than 10 million a week.</p>\r\n', '<p>I would like to tell you about shopping in the United Kingdom. Marks &amp; Spencer is Britain&#39;s favourite store. Tourists love it too. It attracts a great variety of customers from house wives to millionaires. Princess Diana, Dustin Hoffman and the British Prime-minister are just a few of its famous customers. Last year it made a profit of 529 million pounds, which is more than 10 million a week.</p>\r\n\r\n<p>It all started 105 years ago when a young Polish immigrant Michael Marks had a stall in Leeds market. He didn&#39;t have many things to sell: some cotton, a little wool, lots of buttons and a few shoe laces. Above his stall he put the now famous notice: &quot;Don&#39;t ask how much - it&#39;s a penny.&quot; Ten years later he met Tom Spencer and together they started Penny stalls in many towns in the North of England. Today there are 564 brances of Marks &amp; Spencer all over the world: in America, Canada, Spain, France, Belguim and Hungary.</p>\r\n\r\n<p>The store bases its business on 3 principles: good price, good quality and good service. Also, it changes with the times; once it was all jumpers and knickers. Now it sells food, furniture and flowers as well. Top fashion designers advice on styles of clothes. Perhaps, the most important key to its success is its happy well-trained staff. Conditions of work are excellent. There are company doctors, dentists, hairdressers, etc. And all the staff can have lunch for less than 40 pence.</p>\r\n\r\n<p>Suprisingly tastes about food and clothes are international. What sells well in Paris, sells just as well in Newcastle and Moscow. Their best selling clothes are: for women - jumpers and knickers (M &amp; S is famous for its knickers); for men - shirts, socks, pyjamas, dressing gowns and suits; for children - underwear and socks. Best sellers in food include: fresh chickens, vegetables and sandwiches, &quot;Chicken Kiev&quot; is internationally the most popular convience food.</p>\r\n\r\n<p>Shopping in Britain is also famous for its Freshfood. Freshfood is a chain off ood stores and very successful supermarkets which has grown tremendously in the twenty years since it was founded, and now it has branches in the High Streets of all the towns of any size in Britain. In the beginning the stores sold only food stuffs, but in recent years they have diversified enormously and now sell clothes, books, records, electrical and domestic equipment. The success of the chain has been due to an enterprising managment and to attractive layout and display in the stores. It has been discovered that impulse buying accounts for almost 35 percent of the total turn over of the stores. The stores are organized completly for self-service and customers are encouraged to wander around the spaciously laid out stands. Special free gifts and reduced prices are used to tempt customers into the stores and they can&#39;t stand the temptation.</p>\r\n', '2019-12-07', 'fb3d2e72e999ac79e2895d2459383286.jpg', 2, 2, NULL, 3),
(18, 'American Homes', '<p>American homes are some of the biggest and best in the world. Many have a garage for one or two cars, a big modern kitchen, a living room, and a playroom for the children.</p>\r\n', '<p>American homes are some of the biggest and best in the world. Many have a garage for one or two cars, a big modern kitchen, a living room, and a playroom for the children.</p>\r\n\r\n<p>Upstairs there are two bathrooms and three or four bedrooms. Young Johnny sleeps in one room. His sister, Sally, has another one. Their parents sleep in the third bedroom. There is another room for visitors.</p>\r\n\r\n<p>Some families have two homes. They have one house or apartment in the city or suburbs. They live and work there. But they have another home near the sea or in the mountains. They go to their second home on weekends and for vacations.Seventy percent of Americans buy the house they live in. They are lucky. But thirty percent cannot buy a house or an apartment. Some of them rent their home from a landlord. Some landlords are good, but some are not. Windows may break, or roofs get old, and the landlord does not always help.The poorest people live in public housing apartments. These apartments are not like rich American homes. People do not like to live in public housing projects. They are afraid of thieves and drug sellers.</p>\r\n\r\n<p>Americans who live in towns and cities move often. A family stays in one house for four or five years, and then they move again. Some people move because they have found a new job. Other people move because they want a bigger or a smaller home. In American suburbs, families come and go all the time.Americans are always trying to make their homes better. They take a lot of time to buy furniture and make their homes beautiful. They buy books and magazines about houses and furniture. They work hard on their homes in the evenings and on weekends.</p>\r\n\r\n<p>Americans like to think the United States is a young country, but really it has a long and interesting history. You can see some of its history in the styles of the houses. The lovely pueblo houses of Native American villages, the old pioneer log cabins, the plantation houses in the South, the beautiful colonial homes of the Northeast - they are all a part of American history. They are part of modern America too, because people copy the old styles in new houses. The history goes on.</p>\r\n', '2019-11-01', 'd552af1e79b83bdb6e37311a93823890.jpg', 1, 1, NULL, 5),
(19, 'British Homes', '<h1>British Homes</h1>\r\n', '<p>There are 22 million homes in Britain - big homes and small homes, old cottages and new buildings, houses and flats. (Americans say &quot;apartment&quot; but British people say &quot;flat&quot;). Many British people love old houses and these are often more expensive than modern ones. They also love gardening and you will see gardens everywhere you go: in towns, villages and out in the country. Some are very small with just one tree and a few flowers. Others are enormous with plenty of flowers and enough vegetables and fruit trees. Two third of the families in Britain own their houses. Millions of these houses are the same with two or three bedrooms and a bathroom upstairs, dining-room and kitchen downstairs. To pay for their house, home owners borrow money from a &quot;building society&quot; and pay back a little every month.There are a great many different kinds of homes in Britain, but there are not enough! It is often very difficult for young people to find a home when they want to start a family. British homes are usually smaller than American homes. But like in America, in Britain the older generation of the family and their married children do not usually live together.</p>\r\n', '2019-12-21', '2dbfe6a107492f27504936bcc451d2e1.jpg', 4, 1, NULL, 5),
(20, 'Healthy Food', '<p>All food is made up of nutrients which our bodies use. There are different kinds of nutrients: carbohydrates, proteins, fats, vitamins and minerals. Different kinds of food contain different nutrients.</p>\r\n', '<p>All food is made up of nutrients which our bodies use. There are different kinds of nutrients: carbohydrates, proteins, fats, vitamins and minerals. Different kinds of food contain different nutrients.</p>\r\n\r\n<p>Before we cut down on fat, sugar and salt, we have to know a bit more about the kind of food these things might be in. The biggest problem comes when these things are hidden in other foods: biscuits, crisps, sausages, meat pies, soft drinks and so on. The best way is to get into the habit of checking the ingredients and nutritional value on the sides of packets although this isn&#39;t always easy to do. Another thing to know is, for example, that we do need fat to live, it&#39;s an essential part of our diet and physically we couldn&#39;t exist without it. But we all know that to eat much fat is bad for our health. The matter is that there are different kinds of fat. There are fats that are good for us and fats that are bad for us. Eating less of the bad ones and more of the good ones can actually help us to live longer! Bad fats are the saturated fats, found in animal productions, like red meat, butter and cheese.</p>\r\n\r\n<p>Friendly fats are the unprocessed fats found naturally in foods like nuts and seeds, olives, avocados and oily fish, including tuna.One more thing to know is that when food is cooked, its structure changes. It can change the vitamin and nutrient contents of food.More and more people feel strongly about the way, their food is produced. Nowadays so much of the basic food we eat &mdash; meat, fish, fruit and vegetables &mdash; is grown using chemicals and additives.</p>\r\n\r\n<p>Although fertilizers and pesticides have greatly increased the quantity of food and helped to improve its appearance, there is a growing concern about the effects of these chemicals in the food chain. This concern has led to a growth in the demand for organically grown products.Today there is another problem. It is modified food, which is cheaper that ordinary one. There is a rumour that such food can cause cancer and other problems. Nobody knows, either it is just an imagined fear or a real problem. This problem could be solved and examined, but it will take some time.The food we eat, depends on lots of things. Taste is a big factor. Culture, religion and health also play a part in what food we eat. Advertising and social factors also have a big influence.</p>\r\n\r\n<p>Income is also an important factor. That is why not surprisingly, money, rather than a lack of knowledge about how to eat well, is at the heart of the problem.Finally, there are three main messages to follow for healthy eating: First, we should eat less fat, particularly saturated fat. Secondly, we are to cut down on sugar and salt. Thirdly, we must eat more fresh fruit and vegetables.</p>\r\n', '2019-12-10', '73b21201eac9f988dac9d6dbb74c5032.jpg', 1, 3, NULL, 4),
(21, 'Hotels', '<h1>Hotels</h1>\r\n', '<p>It`s a well known fact that hotels nowadays play a big role. Every year more and more new hotels are opened.<br />\r\nSometimes it is even difficult to decide which to choose while traveling. There are luxury hotels, which seem to be expensive, b &amp; b hotels, where you will get only breakfasts and a place to sleep, youth hostels, where you meant to serve everything yourself and many other places to stay in. For example an apartment, a tent, a caravan and 3, 4 or 5 star hotel.<br />\r\nSome people enjoy staying in a hotel while others prefer other places to stay in. Sure, on the one hand there are a lot of advantages in it.<br />\r\nTo begin with, it`s convenient. You have a chance to make a telephone call and reserve any room you want in a good time, to be confident by your arrival. Besides, you don`t need to serve yourself, everything will be done by the hotel staff, I find it wonderful. More than that, I do like that in the hotel you can be offered some interesting excursions and you can be sure that they are safe because the hotel is responsible for every offer.<br />\r\nBut on the other hand there are still some disadvantages in staying in a hotel.<br />\r\nFirst of all, the service can be poor and slowly, for this reason you can be late for a business conferation or a friends party, I find it extremely disappointing. Second, the food can be too salty, overcooked and etc...spoiled. It can be a serious problem for people with weak stomach. Third, the view from the window can be not so romantic as the advertisement said but more modest, it can also disappoint some people, who care about the beaty around them.<br />\r\nPersonally I`m for staying in a hotel inspite of all disadvantages. It`s only a freak of chance, everything can happen. So before booking a hotel, you`d better learn some facts about it in the net or from your friends for sure. Last summes I stayed in a hotel in Turkey, everything was up to date, wonderful service, tasty food and friendly staff. I would be happy to wisit &quot;Saray hotel&quot; ne more time. By the way, Saray in Turkish means a palace and it really looks so. I have only positive impressions about that place and hotel.<br />\r\nIf I`m not mistaken there are 4 big hotels in Petrozavodsk. They are &quot;Masks&quot;, &quot;Karelia&quot;, &quot;Severnaya&quot; and one more near the embankment, unfortunately I don`t know it`s name yet. In my opinion our town provides good hotels for foreigners and native people. You can stay there from one night only to even a month or more, if you can afford it sure.<br />\r\nIn general I am only for staying in a hotel, this will save your money, time and will be convenient.</p>\r\n', '2019-12-02', '2029d2b4a7f24fff99f9c6853ad0cd6b.jpg', NULL, 3, NULL, 5),
(22, 'Hotels', '<p>It`s a well known fact that hotels nowadays play a big role.</p>\r\n', '<p>It`s a well known fact that hotels nowadays play a big role. Every year more and more new hotels are opened.<br />\r\nSometimes it is even difficult to decide which to choose while traveling. There are luxury hotels, which seem to be expensive, b &amp; b hotels, where you will get only breakfasts and a place to sleep, youth hostels, where you meant to serve everything yourself and many other places to stay in. For example an apartment, a tent, a caravan and 3, 4 or 5 star hotel.<br />\r\nSome people enjoy staying in a hotel while others prefer other places to stay in. Sure, on the one hand there are a lot of advantages in it.<br />\r\nTo begin with, it`s convenient. You have a chance to make a telephone call and reserve any room you want in a good time, to be confident by your arrival. Besides, you don`t need to serve yourself, everything will be done by the hotel staff, I find it wonderful. More than that, I do like that in the hotel you can be offered some interesting excursions and you can be sure that they are safe because the hotel is responsible for every offer.<br />\r\nBut on the other hand there are still some disadvantages in staying in a hotel.<br />\r\nFirst of all, the service can be poor and slowly, for this reason you can be late for a business conferation or a friends party, I find it extremely disappointing. Second, the food can be too salty, overcooked and etc...spoiled. It can be a serious problem for people with weak stomach. Third, the view from the window can be not so romantic as the advertisement said but more modest, it can also disappoint some people, who care about the beaty around them.<br />\r\nPersonally I`m for staying in a hotel inspite of all disadvantages. It`s only a freak of chance, everything can happen. So before booking a hotel, you`d better learn some facts about it in the net or from your friends for sure. Last summes I stayed in a hotel in Turkey, everything was up to date, wonderful service, tasty food and friendly staff. I would be happy to wisit &quot;Saray hotel&quot; ne more time. By the way, Saray in Turkish means a palace and it really looks so. I have only positive impressions about that place and hotel.<br />\r\nIf I`m not mistaken there are 4 big hotels in Petrozavodsk. They are &quot;Masks&quot;, &quot;Karelia&quot;, &quot;Severnaya&quot; and one more near the embankment, unfortunately I don`t know it`s name yet. In my opinion our town provides good hotels for foreigners and native people. You can stay there from one night only to even a month or more, if you can afford it sure.<br />\r\nIn general I am only for staying in a hotel, this will save your money, time and will be convenient.</p>\r\n', '2019-12-12', '950f1d64981a77e954d6f513b39cc5a9.jpg', NULL, 2, NULL, 5),
(23, 'My life in India', '<p>It is very strange but i have never think that one day I will go to India.</p>\r\n', '<p>It is very strange but i have never think that one day I will go to India.<br />\r\nAs I work in international call center, it was like exchange between countires for some time.<br />\r\nThe first day was really difficult for me, because i was shocked: you will find the Indian roads very dirty with a lot of dust,besides, that there are many beggars outside, which will disturb you a lot. When the first day was over i began thinking about foreigners,which live in India for a long time. BUT it was my big mistake, because i found many beautiful and interesting places here to see and adore, besides of that always you will find fresh fruits and vegetables outside with the best price. For us,foreigners, it is really great to stay here,especially,for pure vegetarian people.<br />\r\nPeople of this country very kind and sweet, indian women are like a sunflower. Almost they are house vifes and they taking care of their families the best.. They are very hard working people. To understand this you have to live for a moment in their join family. Indian women will rise early in the morning, make breakfast for whole the family, after they will wash the cloth and clean the house. After when everybody will complete their breakfast they will clean the utensiles and will have rest for a moment. Very soon you will find them in the kitchen again in making lunch. So, in generally, indian women prepair the dish three times in a day. Besides that she will offer water and tea to everybody who will visit her house.<br />\r\nIndian men also do a lot of work, especially thay take the whole responsability of their families and relatives.<br />\r\nTo stay in India in summer time is very difficult, because you will find the weather very hot, especially, for us foreigners who didn&#39;t get in used to stay outside when the temperature 45 above ziro. It is realy hard to imagine indian houses without air conditions, but still you will find many here.<br />\r\nWhen my trip became to the end I was regret that i didn&#39;t have a lot of time to see the whole country, but Ii hope next year I will back here again.</p>\r\n', '2019-12-20', '840f828af3315b024653d819136e6348.jpg', NULL, 2, NULL, 1),
(24, 'Shopping', '<p>People usually go to the shop two or three times a week to buy food. Less frequently people go shopping to buy clothes, usually it is women and teenagers.</p>\r\n', '<p>People usually go to the shop two or three times a week to buy food. Less frequently people go shopping to buy clothes, usually it is women and teenagers.</p>\r\n\r\n<p>And everywhere you go, you&#39;ll find adverts. There are many varieties of adverts: on TV, on radio, in magazines, on streets and so on.</p>\r\n\r\n<p>You can see your favorite sportsman or actor advertising cars, drinks, sports shops. Superstars make big money from advertising. For example, some football and basketball players make millions of dollars from advertising sport clothes or drinks.</p>\r\n\r\n<p>What are the functions of advertisements? The first function is to inform. A big part of the information people have about houses, cars, building materials, electronic equipment, cosmetics, drinks and food comes from the advertisements they read. Advertisements introduce them to new products or remind them of the existing ones.</p>\r\n\r\n<p>The second function is to sell. The products are shown from the best point of view and the potential buyer, on having entered the store, unconsciously chooses the advertised products. One buys this washing powder or this chewing gum because the colorful TV commercials convince him of the best qualities of the product. Even cigarettes or alcohol are associated with the good values of human life such as joy, freedom, love and happiness, and just those associations make a person choose the advertised products.</p>\r\n\r\n<p>All those small ads in the press such as &quot;employment&quot;, &quot;education&quot; and &quot;for sale and wanted&quot; columns, help ordinary people to find a better job or a better employee, to sell or to buy their second-hand things and to find services, or to learn about educational facilities, social events such as concerts, theatre plays, football matches, and to announce births, marriages and deaths.</p>\r\n', '2019-11-25', 'ebcf3c5097ec3b4f8add931353c75dbe.jpg', NULL, 3, NULL, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`) VALUES
(18, 14, 3),
(19, 14, 4),
(20, 14, 5),
(21, 14, 6),
(22, 14, 7),
(23, 8, 1),
(24, 8, 2),
(25, 8, 3),
(26, 8, 4),
(27, 8, 5),
(28, 8, 6),
(29, 8, 7),
(30, 8, 8),
(31, 8, 9),
(35, 9, 1),
(36, 9, 10),
(37, 9, 11),
(38, 10, 1),
(39, 10, 2),
(40, 10, 3),
(41, 10, 4),
(42, 10, 8),
(43, 10, 9),
(44, 10, 11),
(64, 13, 1),
(65, 13, 2),
(66, 13, 4),
(67, 13, 7),
(68, 13, 12),
(69, 13, 13),
(70, 13, 14),
(72, 15, 1),
(73, 15, 12),
(74, 15, 13),
(75, 15, 15),
(86, 16, 1),
(87, 16, 10),
(88, 16, 12),
(89, 16, 13),
(90, 16, 14),
(91, 17, 1),
(92, 17, 14),
(93, 17, 16),
(94, 17, 17),
(95, 18, 1),
(96, 18, 10),
(97, 18, 18),
(98, 19, 1),
(99, 19, 2),
(100, 19, 3),
(101, 19, 4),
(102, 19, 10),
(103, 19, 18),
(104, 20, 1),
(105, 20, 2),
(106, 20, 3),
(107, 20, 4),
(108, 20, 10),
(109, 20, 12),
(110, 20, 13),
(111, 21, 1),
(112, 21, 2),
(113, 21, 3),
(114, 21, 4),
(115, 21, 10),
(116, 21, 14),
(117, 21, 18),
(118, 22, 1),
(119, 22, 2),
(120, 22, 3),
(121, 22, 4),
(122, 22, 10),
(123, 22, 14),
(124, 22, 18),
(125, 23, 1),
(126, 23, 2),
(127, 23, 3),
(128, 23, 4),
(129, 23, 5),
(130, 23, 6),
(131, 23, 7),
(132, 23, 8),
(133, 23, 9),
(134, 23, 10),
(135, 23, 11),
(136, 23, 12),
(137, 23, 13),
(138, 23, 14),
(139, 23, 15),
(140, 23, 16),
(141, 23, 17),
(142, 23, 18),
(154, 24, 1),
(155, 24, 2),
(156, 24, 3),
(157, 24, 4),
(158, 24, 6),
(159, 24, 7),
(160, 24, 8),
(161, 24, 9),
(162, 24, 10),
(163, 24, 16),
(164, 24, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'All travel'),
(2, 'Business Trips'),
(3, 'Shopping'),
(4, 'Restaurants'),
(5, 'Homes');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `text`, `user_id`, `article_id`, `status`, `date`) VALUES
(8, 'I\'m agree, that modern life is imposible without travelling!', 5, 8, 1, '2019-12-25'),
(9, 'deliciousness ☺', 5, 13, 1, '2019-12-25'),
(10, 'I really like the way people live abroad, including the British.', 5, 19, 1, '2019-12-25'),
(11, 'according to you', 6, 19, 1, '2019-12-25'),
(12, 'I also travel frequently in business, around the world.', 6, 10, 1, '2019-12-25'),
(13, 'Cooool!', 7, 14, 1, '2019-12-25'),
(14, 'I didn\'t know that, thanks for the info.', 7, 16, 1, '2019-12-25'),
(15, 'I like Italian food, especially pizza)', 7, 13, 1, '2019-12-25'),
(16, 'Well I don\'t know, I like Mexican food more. I love sharp.', 4, 13, 1, '2019-12-25'),
(17, 'I love shopping, it\'s cool. I can say that the best shopping in Milan.', 4, 17, 1, '2019-12-25'),
(18, 'Awful article, I don\'t like it. who wrote it at all?', 1, 9, 0, '2019-12-25'),
(19, 'Yeees!!!', 1, 15, 1, '2019-12-25'),
(20, 'Mmmmm', 1, 13, 0, '2019-12-25'),
(21, 'Yes, almost all people are fond of travelling!', 2, 14, 1, '2019-12-25');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1576447155),
('m191215_215510_create_article_table', 1576447165),
('m191215_215602_create_categoty_table', 1576447165),
('m191215_215614_create_tag_table', 1576447165),
('m191215_215629_create_user_table', 1576447165),
('m191215_215646_create_comment_table', 1576447166),
('m191215_215702_create_article_tag_table', 1576447166),
('m191217_151548_add_date_to_comment', 1576595877);

-- --------------------------------------------------------

--
-- Структура таблицы `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tag`
--

INSERT INTO `tag` (`id`, `title`) VALUES
(1, 'Travel'),
(2, 'Plane'),
(3, 'Ship'),
(4, 'Car'),
(5, 'Hiking'),
(6, 'Train'),
(7, 'Air'),
(8, 'Rail'),
(9, 'Road'),
(10, 'travel_agency'),
(11, 'Business'),
(12, 'food'),
(13, 'restorant'),
(14, 'country'),
(15, 'alcohol'),
(16, ' shopping '),
(17, 'store'),
(18, 'building');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isAdmin` int(11) DEFAULT 0,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `isAdmin`, `photo`) VALUES
(1, 'Dima', 'dima@gmail.com', '1234', 1, NULL),
(2, 'Evgeniy', 'evgesha@gmail.com', '4321', 1, NULL),
(3, 'Katya', 'katya@gmail.com', '1111', 1, NULL),
(4, 'Liliya', '123@gmail.com', '123', 0, NULL),
(5, 'Sofia', 'sofia@gmail.com', 'sofasofa', 0, NULL),
(6, 'Varvara', 'var@gmail.com', '121212', 0, NULL),
(7, 'Sasha', 'sasha@gmail.com', 'saha15', 0, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_article_article_id` (`article_id`),
  ADD KEY `idx_tag_id` (`tag_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-post-user_id` (`user_id`),
  ADD KEY `idx-article_id` (`article_id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `fk-tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tag_article_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk-article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-post-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
