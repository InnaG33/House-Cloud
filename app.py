# import necessary libraries
import pandas as pd
from flask import Flask, render_template
from sqlalchemy import create_engine


conn = "username:YYYY@localhost:54XX/house_cloud"
engine = create_engine(f'postgresql://{conn}')

venue_found = pd.read_sql_query('select * from venue_found', con=engine)
this_month_venue = pd.read_sql_query('select * from may_venue', con=engine)
next_month_venue = pd.read_sql_query('select * from jun_venue', con=engine)

#################################################
# Flask Setup
#################################################
app = Flask(__name__)

#################################################
# Flask Routes
#################################################

@app.route("/")
def welcome():
    """List all available api routes."""
    return render_template("welcome.html")

@app.route("/all")
def index():
    # List of dictionaries
    artists = {}
    for i in range(len(venue_found.Artist)):
        artists.update( {venue_found.Artist[i]: [venue_found.Club[i], venue_found.Followers[i],\
        venue_found.Tracks[i], venue_found.Date[i], venue_found.Time[i]]} )
    
    return render_template("index.html", artists=artists)

@app.route("/this")
def this():
    artists = {}
    for i in range(len(this_month_venue.Artist)):
        artists.update( {this_month_venue.Artist[i]: [this_month_venue.Club[i], this_month_venue.Followers[i],\
        this_month_venue.Tracks[i], this_month_venue.Date[i], this_month_venue.Time[i]]} )

    return render_template("this.html", artists=artists)


@app.route("/next")
def next():
    artists = {}
    for i in range(len(next_month_venue.Artist)):
        artists.update( {next_month_venue.Artist[i]: [next_month_venue.Club[i], next_month_venue.Followers[i],\
        next_month_venue.Tracks[i], next_month_venue.Date[i], next_month_venue.Time[i]]} )

    return render_template("next.html", artists=artists)


if __name__ == "__main__":
    app.run(debug=True)

