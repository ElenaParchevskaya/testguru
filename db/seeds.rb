user = User.create!([
  {name: 'Admin', email: 'adminka@admin.by', password: '123'}
  {name: 'Alena', email: 'parchi@pp.by', password: '314'},
  {name: 'Kate', email: 'bun@pp.by', password: '159'}
])

category = Category.create!([
  {title: 'Математика'},
  {title: 'Русский'},
  {title: 'Другое'}
])

test = Test.create!([
  {title: 'Деление чисел', level: 1, category_id: category[0].id}, user_id: user[0].id},
  {title: 'Литература', level: 1, category_id: category[1].id, user_id: user[0].id},
  {title: 'Шуточные', level: 0, category_id: category[2].id, user_id: user[0].id}
])

question = Question.create!([
  {body: 'Число 4822x делится на 3 и не делится на 2. Какая цифра должна стоять вместо x?', test_id: test[0].id},
  {body: 'Укажи лишнее слово', test_id: test[1].id},
  {body: 'Что тяжелее 1 килограмм пуха или железа', test_id: test[2].id},
])

answer = Answer.create!([
  {body: '2', question_id: question[0].id},
  {body: '3', question_id: question[0].id},
  {body: '5', question_id: question[0].id},
  {body: 'стихотворение', question_id: question[1].id},
  {body: 'пословица', question_id: question[1].id},
  {body: 'песенка', question_id: question[1].id},
  {body: 'пуха', question_id: question[2].id},
  {body: 'железа', question_id: question[2].id},
  {body: 'равны', question_id: question[2].id}
])

Result.create([
  {user_id: user[1].id, test_id: test[0].id},
  {user_id: user[1].id, test_id: test[1].id},
  {user_id: user[1].id, test_id: test[2].id},
  {user_id: user[2].id, test_id: test[2].id}
])
