# Resume Maker

 Resume Maker is a app to parse json response and show resume.

Pass a nested json url and get a beautiful resume.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine to try.

### Prerequisites

Assuming you have installed `git`, `ruby`, `rails` and `rvm` or any other `ruby version manager` like `rbenv`.


### Installing

```
git clone git@github.com:grsahil20/resume_maker.git
cd resume_maker
```

This will automatically create a gemset name `resume_maker`. Install `bundler` if you don't have.

`gem install bundler`

Now install all other gems using command

```
bundle install
```

Next, create datbase and run migrations.


```
rake db:create db:migrate
```


## Running the program

Start server

```
rails s
```

Open browser tab and go to `http://localhost:3000`

Here you will see history of resumes.
Click on any link to see resume.

Use `dummy_request` file in project base folder to create dummy resume. If using local dev machine change url accordingly at the end of file.

Change `https://mv-resume.herokuapp.com/api/resumes` to `https://localhost:3000/api/resumes`

Live demo can be seen at [here on heroku](https://mv-resume.herokuapp.com/)


## Author

**Sahil Grover**


## License

Feel free to copy/edit/use code anywhere :)
