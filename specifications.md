# Scribble

![](https://dl.dropboxusercontent.com/s/8frf8rblw6pnpds/hipsterlogogenerator_1438007087793.png?dl=0)

is a Ruby on Rails application where users can read, write, and interact
with the best content all around the world. It is designed to be built, refined, and deployed over the course of four nights.

We will start off with two models: `Post` and `Comment`.

## Submitting

#### Please do one of the two following:

Create a new repo, and submit homework as an **ISSUE** on this repo.
```
$ rails new scribble -d postgresql
```

**OR...** Fork this repo, and submit homework as a **PULL REQUEST** on this repo.
```
$ git clone git@github.com:ga-wdi-exercises/scribble.git
$ cd scribble
# ***VERY IMPORTANT***
$ rails new . -d postgresql
```
The `.` creates a new Rails app inside the *CURRENT* folder. Otherwise, it creates a new folder. For instance, if you did `rails new scribble` it would create a `scribble` folder and put the Rails app inside there.

*This is how a lot of people end up with a `scribble` folder inside another `scribble` folder.*

## Monday Nights HW:

Do everything for:
- models && migrations
- index
- show
- creating
- deleting

## Models + Migrations

- Create ERD for Post and Comment
- Create models for Post and Comment
- Create migrations for Post and Comment

## Index Feature
- Create an index where a user can see all posts
- Each post should link to its respective show page

## Show Feature
- Create a show where a user can see each individual post.
- The show page should also show all of the post's comments.

## Creating
- Allow the user to create new posts and comments

## Editing
- Allow the user to edit existing posts and comments

## Deleting
- Allow the user to delete existing posts and comments.

## Bonus
- Create two additional models: Category and Tag.
  * Tag represents the join table between Post and Category.
- The Post show page should include...
  *  A linkable list of that Post's Categories.
    * When clicked, each Tag should link to its Category show page.
  *  A form that allows you to create a Tag and/or Category.
    *  If the Category exists, it will create a tag for that post.
    *  If the Category does not yet exist, it will create that Category and create a Tag for that post.
    *  If the Category exists AND the post already has that Tag, nothing will happen.
- The Category show page should display all posts with that particular category.
