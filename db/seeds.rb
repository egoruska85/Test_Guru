# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.all
tests = Test.all
questions = Question.all
users = User.all
User.create!([
            {username: "Vasiliy"},
            {username: "Denis"},
            {username: "Alex"}
              ])

p "Создано #{User.count} пользователей"

Category.create!([
                {title: "Language"},
                {title: "HTML and CSS"},
                {title: "Javascript and JQuery"},
                {title: "Frameworks"},
                {title: "Movie"},
                {title: "3D Visaulions"}
                ])

p "Создано #{Category.count} категории"


Test.create!([
              {title: "Ruby", level: 1, category_id: categories[0].id, user_id: users[1].id},
              {title: "Python", level: 1, category_id: categories[0].id, user_id: users[2].id},
              {title: "Basing webpage codding", level: 2, category_id: categories[1].id, user_id: users[2].id},
              {title: "Webpage codding profi", level: 2, category_id: categories[2].id, user_id: users[2].id},
              {title: "Movie constructions", level: 1, category_id: categories[4].id, user_id: users[0].id},
              {title: "3d's Max and Blender", level: 2, category_id: categories[5].id, user_id: users[0].id},
              {title: "Ruby on Rails", level: 3, category_id: categories[3].id, user_id: users[0].id}
              ])

p "Создано #{Test.count} тестов"


Question.create!([
                {body: "Какой язык Ruby", test_id: tests[0].id},
                {body: "Где в основном используется язык програмирования Ruby", test_id: tests[0].id},
                {body: "Для чего нужен HTML", test_id: tests[2].id},
                {body: "Для чего нужен CSS", test_id: tests[2].id},
                {body: "Для чего нужен Javascript", test_id: tests[3].id},
                {body: "Для чего нужен JQuery", test_id: tests[3].id},
                {body: "Что такое Active Record", test_id: tests[6].id},
                {body: "Что такое MVC", test_id: tests[6].id}
                ])

p "Создано #{Question.count} вопросов"


Answer.create!([
              {body: "Динамический, рефлективный, интерпретируемый высокоуровневый язык программирования", question_id: questions[0].id, correct: true},
              {body: "Язык ввода вывода", question_id: questions[0].id, correct: false},
              {body: "В основном в фреймворке Ruby on Rails. Так же существует фреймворки как Sinatra, Merb, Hanami и т п.", question_id: questions[1].id, correct: true},
              {body: "HTML для написания сервеной части веб-приложения", question_id: questions[2].id, correct: false},
              {body: "HTML для создания веб страниц клиентской части", question_id: questions[2].id, correct: true},
              {body: "CSS для написания стилей для веб страниц", question_id: questions[2].id, correct: true},
              {body: "Active Record это M в MVC - модель - которая является слоем в системе, ответственным за представление бизнес-логики и данных", question_id: questions[6].id, correct: true},
              {body: "MVC расшифровывается как «модель-представление-контроллер", question_id: questions[7].id, correct: true}
              ])

p "Создано #{Answer.count} ответов"


TestsUser.create!([
                  {user_id: 1, test_id: tests[0].id},
                  {user_id: 1, test_id: tests[2].id},
                  {user_id: 1, test_id: tests[3].id},
                  {user_id: 1, test_id: tests[6].id},
                  ])
