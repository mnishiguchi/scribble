# Scribble

## Memo

#### Create models and migration files (database schema)

- [docs](http://guides.rubyonrails.org/command_line.html#rails-generate)
- `rails generate model NAME [field[:type][:index] field[:type]`

## Planning the database structure using ERD

```
user:
  - name: string
  - email: string
post:
  - title: string
  - content: text
  - user: references
  - (tag: post_tag_id)
comment:
  - content: text
  - user: references
  - post: references
tag:
  - name: string
  - (post: post_tag_id)
posts_tags(join table):
  - tag_id
  - post_id
```

```
rails g model post title:string content:text
rails g model comment content:text
```

## Some gems used

- [devise](https://github.com/plataformatec/devise)
  + Follow the [docs](http://devise.plataformatec.com.br/)

```
$ rails generate devise:install
$ rails generate devise User
$ rails generate devise:views
$ rails db:migrate
```

## Troubleshooting

#### [ActiveRecord::ConnectionAdapters::PostgreSQLColumn#number? has been removed in rails 5 #1341](https://github.com/plataformatec/simple_form/issues/1341)

```rb
gem 'simple_form', github: 'kesha-antonov/simple_form', branch: 'rails-5-0'
```

#### Slim syntax for multiple attributes

- [ key="value", key="value" ]
- Attributes are separated by space.

```slim
button.close[aria-hidden="true" data-dismiss="alert" type="button"]
  | ×
```

## references

- [WDI-DC's demo app](https://wdi-scribble.herokuapp.com)
- [mnishiguchi/musicians_rails](https://github.com/mnishiguchi/musicians_rails)
- [mnishiguchi/moving_estimator](https://github.com/mnishiguchi/moving_estimator)
