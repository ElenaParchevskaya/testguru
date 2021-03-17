users = User.create!([
  {name: 'Admin', email: 'adminka@admin.by', password: '123'}
  {name: 'Alena', email: 'parchi@pp.by', password: '314'},
  {name: 'Kate', email: 'bun@pp.by', password: '159'}
])

categories = Category.create!([
  {title: 'Математика'},
  {title: 'Русский'},
  {title: 'Другое'}
])

test = Test.create!([
  {title: 'Деление чисел', level: 1, category: categories[0]}, user: users[0]},
  {title: 'Литература', level: 1, category: categories[1], user: users[0]},
  {title: 'Шуточные', level: 0, category: categories[2], user: users[0]}
])

questions = Question.create!([
  {body: 'Число 4822x делится на 3 и не делится на 2. Какая цифра должна стоять вместо x?', test: tests[0]},
  {body: 'Укажи лишнее слово', test: tests[1]},
  {body: 'Что тяжелее 1 килограмм пуха или железа', test: tests[2]},
])

Answer.create!([
  {body: '2', question: questions[0]},
  {body: '3', question: questions[0]},
  {body: '5', question: questions[0]},
  {body: 'стихотворение', question: questions[1]},
  {body: 'пословица', question: questions[1]},
  {body: 'песенка', question: questions[1]},
  {body: 'пуха', question: questions[2]},
  {body: 'железа', question: questions[2]},
  {body: 'равны', question: questions[2]}
])

Result.create([
  {user: users[1], test: tests[0]},
  {user: users[1], test: tests[1]},
  {user: users[1], test: tests[2]},
  {user: users[2], test: tests[2]}
])
