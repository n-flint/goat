<h1 align="center">THE G.O.A.T.</h1>

<h3 align="center">The Greatest Olympic Analytics Tracker </h3>

![Alt Text](https://media.giphy.com/media/ZDu7yBPidAtIt4CxsR/giphy.gif )


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

G.O.A.T. (Greatest Olympic Analytics Tracker), is a JSON API that provides information about olympians from the 2016 summer games. 

## Production
Link Coming Soon

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
<img width="607" alt="goat_db_schema" src="https://user-images.githubusercontent.com/34421236/64912521-e3442d00-d6ed-11e9-9ab8-1bac652ddc8f.png">

## Challenges
Coming Soon....

## Successes
Coming Soon....

## Extensions
Coming Soon....

## Known Issues
Coming Soon....

## Developers

👤 **Noah Flint**

* Github: [@n-flint](https://github.com/n-flint)