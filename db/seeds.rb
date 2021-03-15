User.create([
  {name: 'Alena', email: 'parchi@pp.by', password: '314'},
  {name: 'Kate', email: 'bun@pp.by', password: '159'}
])

Category.create([
  {title: 'Математика'},
  {title: 'Русский'},
  {title: 'Другое'}
])

Test.create([
  {title: 'Деление чисел', level: 1, category_id: 1},
  {title: 'Литература', level: 1, category_id: 2},
  {title: 'Шуточные', level: 0, category_id: 3}
])

Question.create([
  {body: 'Число 4822x делится на 3 и не делится на 2. Какая цифра должна стоять вместо x?', test_id: 1},
  {body: 'Укажи лишнее слово', test_id: 2},
  {body: 'Что тяжелее 1 килограмм пуха или железа', test_id: 3},
])

Answer.create([
  {body: '2', question_id: 1},
  {body: '3', question_id: 1},
  {body: '5', question_id: 1},
  {body: 'стихотворение', question_id: 2},
  {body: 'пословица', question_id: 2},
  {body: 'песенка', question_id: 2},
  {body: 'пуха', question_id: 3},
  {body: 'железа', question_id: 3},
  {body: 'равны', question_id: 3}
])

Result.create([
  {user_id: 1, test_id: 1},
  {user_id: 1, test_id: 2},
  {user_id: 1, test_id: 3},
  {user_id: 2, test_id: 3}
])
