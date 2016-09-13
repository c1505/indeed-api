working with the indeed api in order to eventually add it to the jobs application

I am looking for a developer job and I want to better organize my search.  I made a ruby application with the sinatra framework for this purpose, but haven't been using
it and have just been using a spreadsheet to track my job search.

I want to work with the api so I can pull in job information automatically.  I
don't want to have to copy and paste so much stuff into either a spreadsheet
or an application.  

I am going to test drive this application.

## Problem
I want to be able to add indeed posting data to a ruby application without having to copy and paste.

## Desired Outcome(I think)
Pull down all posts given a search location and a search term.

I want the full descriptions, but I only need the full descriptions for the jobs I am at least interested in and potentially just those that I have applied for or desire to.  

## Challenges

## Things Learned

## Odd Things
First odd behavior of the API.  There is a start parameter.  You pass in the number of the result to start with and it returns one number after that except if you give a number that would have the last fetch have fewer than 25.  

In that case it isn't all of the remaining posts, the posts end at the number you pass in for the start.... WHAHAHHAT?!

fetch(10) yields "end" of 35
fetch(210) yields "end" of 210



## Interesting or fun things
I am enjoying TDD.  I haven't been in the practice of it.  Mostly writing tests after the fact if at all.  It does really make me think differently to write the tests first and I write different tests than I would otherwise.  I think I write better tests.

### User Agent?
I am not doing this for clicks so it might not matter for me.  Thought it was odd that the link I was using said firefox and still worked when I was in chrome.  Looks like I should change that and get that information from the "User-Agent" HTTP request header from the end user.  Not sure how to do that at the moment.  Could be interesting to look into.
