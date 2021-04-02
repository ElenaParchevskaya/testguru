users = User.create!([
  { name: 'Admin', email: 'adminka@admin.by', password: '123' },
  { name: 'Alena', email: 'parchi@pp.by', password: '314' },
  { name: 'Kate', email: 'bun@pp.by', password: '159' }
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
