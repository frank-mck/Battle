# Battle

Week 3 Makers Academy pair programming challenge. This battle app challenge covers how to create a simple web application using the GET / POST methods.
This game lets players enter names to start the game, and attack each other until there is a winner.

The app is deployed using Ruby, Sinatra, HTML, CSS. Tested using RSPEC and Capybara.

## Technical skills & Concepts

- Debugging programs that use multiple languages.
- Using a framework (Sinatra) in your code.
- Structuring the code for apps that have user interaction and visual output.
- Testing apps that have user interaction and visual output.
- Tracing data between the browser and server.

### Concepts

- The relationship between a client and a server.
- How HTTP is used to send information over the web.
- RESTful APIs.
- The request/response cycle.
- Web templating with HTML/CSS.

## User stories

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

## How to use
 ```
 git clone https://github.com/frank-mck/Battle.git
 cd Battle
 ruby app.rb
 ```
 Open in [browser](http://localhost:4567)
 
 Run tests
 ```
 gem install rspec
 rspec
 ```
 
 Have fun!! :) 
 
