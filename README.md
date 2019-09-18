<h1 align="center">THE G.O.A.T.</h1>

<h3 align="center">The Greatest Olympic Analytics Tracker </h3>

<div style="text-align:center" markdown="1">
![Alt Text](https://media.giphy.com/media/ZDu7yBPidAtIt4CxsR/giphy.gif )
</div>


## Table of Contents
* [Description](#Description)
* [Production](#Production)
* [Project Board](#Project-Board)
* [Technologies Used](#Technologies-Used)
* [Setup](#Setup)
* [Testing](#Testing)
* [Endpoints](#Endpoints)
* [Database Schema](#Database-Schema)
* [Challenges](#Challenges)
* [Successes](#Successes)
* [Extensions](#Extensions)
* [Known Issues](#Known-Issues)
* [Developers](#Developers)


## Description

G.O.A.T. (Greatest Olympic Analytics Tracker), is a JSON API that provides information about olympians from the 2016 summer games. This is a mock technical challenge provided to MOD 4 students at Turing.

## Production
  - [G.O.A.T.](https://goatness.herokuapp.com/)

## Project Board
  - [G.O.A.T. Project Board](https://github.com/n-flint/goat/projects/1)

## Technologies Used
  - [Ruby](https://ruby-doc.org/)
  - [Ruby On Rails](https://guides.rubyonrails.org/)
  - [PostgreSQL](https://www.postgresql.org/)
  - [RSpec-Rails](https://github.com/rspec/rspec-rails)


## Setup
1. Clone this repository
```
cd goat
bundle install
rails db:create
rails db:migrate
rails db:seed
rails server
```
2. Navigate to 
```
http://localhost:3000
```

## Testing
Testing Requests:

```
bundle exec rspec spec/requests
```

Testing Models:

```
bundle exec rspec spec/models
```

## Endpoints

- [All Olympians](#all-olympians)
- [Youngest Olympian](#youngest-olympian)
- [Oldest Olympian](#oldest-olympians)
- [Olympian Statistics](#olympian-statistics)
- [All Olympic Events](#all-olympic-events)
- [Medalists By Event](#medalists-by-event)

---

## All Olympians

Send a GET request to receive all olympians

  #### GET /api/v1/olympians

  ##### Successful Response
status: 200

body: 

```json
{
  "olympians":
    [
      {
        "name": "Maha Abdalsalam",
        "team": "Egypt",
        "age": 18,
        "sport": "Diving"
        "total_medals_won": 0
      },
      {
        "name": "Ahmad Abughaush",
        "team": "Jordan",
        "age": 20,
        "sport": "Taekwondo"
        "total_medals_won": 1
      },
      {...}
    ]
}
  ```

## Youngest Olympian

Send a GET request to receive the youngest olympian

  #### GET /api/v1/olympians?age=youngest

  ##### Successful Response
status: 200

body: 

```json
{
  [
    {
      "name": "Ana Iulia Dascl",
      "team": "Romania",
      "age": 13,
      "sport": "Swimming"
      "total_medals_won": 0
    }
  ]
}
  ```

## Oldest Olympian

Send a GET request to receive the oldest olympian

  #### GET /api/v1/olympians?age=oldest

  ##### Successful Response
status: 200

body: 

```json
{
  [
    {
      "name": "Julie Brougham",
      "team": "New Zealand",
      "age": 62,
      "sport": "Equestrianism"
      "total_medals_won": 0
    }
  ]
}
  ```
## Olympian Statistics

Send a GET request to receive stats about all olympians

  #### GET /api/v1/olympian_stats

  ##### Successful Response
status: 200
body: 

```json
  {
    "olympian_stats": {
      "total_competing_olympians": 3120
      "average_weight:" {
        "unit": "kg",
        "male_olympians": 75.4,
        "female_olympians": 70.2
      }
      "average_age:" 26.2
    }
  }
  ```

## All Olympic Events

Send a GET request to receive all olympic events

  #### GET /api/v1/events

  ##### Successful Response
status: 200

body: 

```json
{
  "events":
    [
      {
        "sport": "Archery",
        "events": [
          "Archery Men's Individual",
          "Archery Men's Team",
          "Archery Women's Individual",
          "Archery Women's Team"
        ]
      },
      {
        "sport": "Badminton",
        "events": [
          "Badminton Men's Doubles",
          "Badminton Men's Singles",
          "Badminton Women's Doubles",
          "Badminton Women's Singles",
          "Badminton Mixed Doubles"
        ]
      },
      {...}
    ]
}
  ```
## Medalists By Event

Send a GET request to receive all medalists per event

  #### GET api/v1/events/:id/medalists

  ##### Successful Response
status: 200

body: 

```json
{
  "event": "Badminton Mixed Doubles",
  "medalists": [
      {
        "name": "Tontowi Ahmad",
        "team": "Indonesia-1",
        "age": 29,
        "medal": "Gold"
      },
      {
        "name": "Chan Peng Soon",
        "team": "Malaysia",
        "age": 28,
        "medal": "Silver"
      }
    ]
}
  ```

  ##### Unsuccessful Response
  status: 404


---

## Database Schema
<img width="985" alt="Screen Shot 2019-09-18 at 9 45 13 AM" src="https://user-images.githubusercontent.com/34421236/65163896-11c94d00-d9f9-11e9-8058-8edba6b88170.png">

## Challenges
When I originally started this project, I did not setup my DB correctly, and had to go back and change/add/remove tables.

## Successes
Being able to fix the database with migrations, and not just deleting the whole thing and making another. 

## Extensions
Search all olympians by age, weight, height etc.

## Known Issues
Olympian Statistics test does not work, It has something to do with postgres I believe.

## Developers

👤 **Noah Flint**

* Github: [@n-flint](https://github.com/n-flint)