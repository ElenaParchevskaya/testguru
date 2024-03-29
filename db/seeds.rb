users = User.create!([
  { first_name: 'Alena', last_name: 'bub', email: 'parchi1@pp.by', password: '314314' },
  { first_name: 'Kate', last_name: 'bub', email: 'bun1@pp.by', password: '159159' },
  { first_name: 'adminka', last_name: 'adminka', email: 'alena.lemoon.test@gmail.com', password: '101101', type: 'Admin' }
])

categories = Category.create!([
  { title: 'Математика' },
  { title: 'Русский' },
  { title: 'Другое' }
])

tests = Test.create!([
  { title: 'Деление чисел', level: 1, category: categories[0], author: users[0] },
  { title: 'Литература', level: 1, category: categories[1], author: users[0] },
  { title: 'Шуточные', level: 0, category: categories[2], author: users[0] }
])

questions = Question.create!([
  { body: 'Число 4822x делится на 3 и не делится на 2. Какая цифра должна стоять вместо x?', test: tests[0] },
  { body: 'Укажи лишнее слово', test: tests[1] },
  { body: 'Что тяжелее 1 килограмм пуха или железа', test: tests[2] },
  { body: "15 / 3 = 5. Что здесь является 'делителем'?", test: tests[0] },
  { body: 'Имя богатыря из города Мурома?', test: tests[1] },
  { body: 'Плод, в котором было спрятано платье Золушки?', test: tests[1] }
])

Answer.create!([
  { body: '2', question: questions[0] },
  { body: '3', question: questions[0] },
  { body: '5', question: questions[0], correct: true },
  { body: 'стихотворение', question: questions[1] },
  { body: 'пословица', question: questions[1] },
  { body: 'песенка', question: questions[1], correct: true },
  { body: 'пуха', question: questions[2] },
  { body: 'железа', question: questions[2] },
  { body: 'равны', question: questions[2], correct: true },
  { body: '15', question: questions[3] },
  { body: '3', question: questions[3], correct: true },
  { body: 'его тут нет', question: questions[3] },
  { body: 'Илья', question: questions[4], correct: true },
  { body: 'Иван', question: questions[4] },
  { body: 'там не было богатырей', question: questions[4] },
  { body: 'Орех', question: questions[5], correct: true },
  { body: 'Тыква', question: questions[5] },
  { body: 'Платье было в шкафу', question: questions[5] }
])

Badge.create!([
  { name: 'best rookie',
    image_link: 'https://bipbap.ru/wp-content/uploads/2019/05/86ae0b2400c92d333751c8d9a9ae68e4.png',
    description: 'Пройти тест с первой попытки',
    rule_type: :on_first_try,
    rule_value: nil },

  { name: 'Category',
    image_link: 'https://bipbap.ru/wp-content/uploads/2019/05/orig-3-10.jpg',
    description: 'Пройти все тесты категории Математика',
    rule_type: :passed_all_tests_of_category,
    rule_value: 'Математика' },

  { name: 'Level',
    image_link: 'https://bipbap.ru/wp-content/uploads/2019/05/orig-21.jpg',
    description: 'Пройти все тесты 1 уровня',
    rule_type: :passed_all_tests_of_level,
    rule_value: 1}
])
