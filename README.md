# Secret Santa
A technical challenge based around Secret Santa. The description below is an MVP.

## Technologies
- Ruby
- RSpec - testing

## Usage
```
$ git clone git@github.com:alexscotttonge/SecretSanta
$ cd SecretSanta
$ irb
```

## Functionality
```
2.4.0 :002 > secret_santa = SecretSanta.new(Message.new)
 => #<SecretSanta:0x007ff7911389a0 @list=[], @santa_pairs=[], @message=#<Message:0x007ff7911389c8>> 
2.4.0 :003 > secret_santa.add_participant('Emily')
 => ["Emily"] 
2.4.0 :004 > secret_santa.add_participant('Sarah')
 => ["Emily", "Sarah"] 
2.4.0 :005 > secret_santa.add_participant('Claire')
 => ["Emily", "Sarah", "Claire"] 
2.4.0 :006 > secret_santa.add_participant('Ella')
 => ["Emily", "Sarah", "Claire", "Ella"] 
2.4.0 :007 > secret_santa.choose_pairs
 => ["Emily", "Sarah"] 
2.4.0 :008 > secret_santa.santa_pairs
 => [["Emily", "Claire"], ["Sarah", "Ella"]] 
2.4.0 :009 > secret_santa.send_message
Subject: Secret Santa
From: Santa, Lapland
Hello Emily, you are Secret Santa. Your recipient is Claire. Please be generous.
Hello Sarah, you are Secret Santa. Your recipient is Ella. Please be generous.
 => [["Emily", "Claire"], ["Sarah", "Ella"]] 
2.4.0 :010 > secret_santa.update
Ho,ho,ho. Please be advised, Secret Santa present time starts at 6pm tomorrow
Ho,ho,ho. Please be advised, Secret Santa present time starts at 6pm tomorrow
 => [["Emily", "Claire"], ["Sarah", "Ella"]] 
```

## Run Tests
```sh
$ rspec
```

## User Stories

```
As an organizer
So I can create a participants list
I want to be able to enter their names
```

```
As an organizer
So I can match people up
I want to be able to select pairs from the list
```

```
As an organizer
So I can notify participants
I want to be able to contact participants with details of their gift recipient
```

```
As a player
So I know who I am getting a gift for
I want to receive a message with these details
```

```
As an organizer
So I can control spending
I want to set a total budget
```

```
As an organizer
So I can coordinate the participants
I want to be able to send everyone a message
```
