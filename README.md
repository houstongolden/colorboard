# AltSchool ColorBoard

This is a Rails 4, Ruby 2.1.2 application that let's you build custom sized grids with random colors and save them to a gallery. 

[View Live Demo](https://alt-colorboard.herokuapp.com/)

## Local Installation

```
$ git clone https://github.com/houstongolden/colorboard.git
$ cd colorboard
$ bundle install
$ rake db:reset
$ rails server
```
Then go to [http://localhost:3000](http://localhost:3000)

## About

Most of the work is in the [board model](https://github.com/houstongolden/colorboard/blob/master/app/models/board.rb) and [front-end coffeescript](https://github.com/houstongolden/colorboard/blob/master/app/assets/javascripts/boards.coffee) with minimal [SCSS](https://github.com/houstongolden/colorboard/blob/master/app/assets/stylesheets/boards.scss).


## Coding Challenge Specifications:

* :heavy_check_mark: Create a board of n x m tiles on a web page. Each tile on the board will start as white, but when clicked will toggle between a generated random color and returning to white. Each time a tile is toggled to a random color it should generate a new random color value.
 
* :heavy_check_mark: Include a button so that users can clear (set all tiles to white) on their board.
 
* :heavy_check_mark: And additionally include a save button that will persist the state of the board to a server side datastore.
 
## Instructions:
* Respond with your attached completed solution at the end of the allotted 3 hour period.
* Use any languages, frameworks, or 3rd party libraries as you see fit.
* Get as far as you can through the challenge starting with the front-end experience of rendering and user interaction of the board.
* Let us know if you have any questions as you're attempting the challenge.

## Bonus:
* :heavy_check_mark: Create a gallery of all boards which are viewable and editable by any user.

<img src="https://github.com/houstongolden/colorboard/blob/master/app/assets/images/altschool-colorboard.png?raw=true" />

You will be judged on:
* Simplicity of solution
* Best practices and idioms
* Use of a framework or sensible data/view separation
* Code quality, abstractions, and overall architecture
* Look, feel, and UI embellishments.

