require 'sinatra/base'
require 'json'
require 'date'

class Snaas < Sinatra::Application

  get '/' do
    markdown File.read(File.join('public', 'index.md'))
  end

  get '/names' do
 

  end

  get '/names/:name' do
    'details of #{params[:name]} '
  end

  get '/albums' do
    'list of albums'
  end

  get '/albums/:album_name' do
    'details of #{params[:album_name]}'
  end

  get '/trees' do
    #birthdate was 1971, assume started smoking at 15
    blunts_in_life = 81 * (Date.today.mjd - Date.new(1986,10,20).mjd)

    {
      :blunts_per_day       => 81,
      :blunts_in_life       => blunts_in_life,
      :est_grams_per_blunt  => 1.4,
      :total_grams          => 1.4 * blunts_in_life
    }.to_json
  end

  get '/doggpound' do
    'random photo of snoop'
  end

  name_list = [
    {
      :name => "Calvin Cordozar Broadus, Jr.",
      :start_year => 1971
    },
    {
      :name => "Snoop Doggy Dogg",
      :start_year => 1992,
    },
    {
      :name => "Snoop Dizzle",
      :start_year => 2002
    },
    {
      :name => "Snoop Lion",
      :start_year => 2012
    },
    {
      :name => "DJ Snoopadelic",
      :start_year => 2012
    }
  ]

end
