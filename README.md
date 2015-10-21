# Wildlife_Tracker


About the Project:

This exercise is not complete. This application was an extra in-class challenge using scaffolding. Two scaffolds were created. One for Species and the other for Sightings. The plan was to have the sightings appear on the Species' Show View. As of current, a user is able to add a new species as well, a list of all species will show. 

The Assignment:

The Forest Service is considering a proposal from a timber company to clear-cut an old-growth forest of virgin Douglas fir just outside of Portland. Before they give the go-ahead, they need to do an environmental impact study. They've asked you and your pair to build an app so that the rangers can report wildlife sightings.

Start out by letting users CRUD/L (create, read, update, destroy, list) species.

Next, allow them to input a sighting of an animal, along with the date, latitude, and longitude. (Hint: a species has many sightings.) Add CRUD functionality for these sightings.

Now, the area under consideration has been divided into several regions. Build out CRUD/L functionality for regions, and when a user reports a sighting, have them choose the region from a drop-down menu. (Hint: do a web search for html drop-down mdn.)

Bonus: let users run reports to list all the sightings during a given time period. Write a form that looks something like this:

<form action="/sightings" method="get">
  <label for="sightings_start_date">Start date</label>
  <input id="sightings_start_date" name="sightings[start_date]" type="text">
  <label for="sightings_end_date">End date</label>
  <input id="sightings_end_date" name="sightings[end_date]" type="text">
  <button>Run report</button>
</form>

Now, your controller action will need to look something like this:

class SightingsController < ApplicationController
  def index
    @sightings = Sighting.between(params[:sightings])
    render('sightings/index.html.erb')
  end
end

This code may not be exactly correct... but should get you on the right path.

Again, note the RESTfulness - we're using GET /sightings with some parameters to represent this report.

Finally, let users narrow their reports down to a particular region.

How to set it up: Not yet available

Heroku or site44 link: Not yet available 
