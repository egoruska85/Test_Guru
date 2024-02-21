# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
              {title: "Ruby", level: 1, category_id: 1},
              {title: "Python", level: 1, category_id: 1},
              {title: "Basing webpage codding", level: 2, category_id: 2},
              {title: "Webpage codding profi", level: 2, category_id: 3},
              {title: "Movie constructions", level: 1, category_id: 5},
              {title: "3d's Max and Blender", level: 2, category_id: 6},
              {title: "Ruby on Rails", level: 3, category_id: 4}
              ])

p "Создано #{Test.count} тестов"

Question.create!([
                {body: "Какой язык Ruby", test_id: 1},
                {body: "Где в основном используется язык програмирования Ruby", test_id: 1},
                {body: "Для чего нужен HTML", test_id: 2},
                {body: "Для чего нужен CSS", test_id: 2},
                {body: "Для чего нужен Javascript", test_id: 3},
                {body: "Для чего нужен JQuery", test_id: 3},
                {body: "Что такое Active Record", test_id: 7},
                {body: "Что такое MVC", test_id: 7}
                ])

p "Создано #{Question.count} вопросов"

Answer.create!([
              {body: "Динамический, рефлективный, интерпретируемый высокоуровневый язык программирования", question_id: 1, correct: true},
              {body: "Язык ввода вывода", question_id: 1, correct: false},
              {body: "В основном в фреймворке Ruby on Rails. Так же существует фреймворки как Sinatra, Merb, Hanami и т п.", question_id: 2, correct: true},
              {body: "HTML для написания сервеной части веб-приложения", question_id: 3, correct: false},
              {body: "HTML для создания веб страниц клиентской части", question_id: 3, correct: true},
              {body: "CSS для написания стилей для веб страниц", question_id: 3, correct: true},
              {body: "Active Record это M в MVC - модель - которая является слоем в системе, ответственным за представление бизнес-логики и данных", question_id: 7, correct: true},
              {body: "MVC расшифровывается как «модель-представление-контроллер", question_id: 8, correct: true}
              ])

p "Создано #{Answer.count} ответов"

User.create!([
            {username: "Vasiliy"}
              ])
TestsUser.create!([
                  {user_id: 1, test_id: 1},
                  {user_id: 1, test_id: 3},
                  {user_id: 1, test_id: 4},
                  {user_id: 1, test_id: 7},
                  ])

p "Создано #{User.count} пользователей"
