require 'sinatra/base'
require 'json'
require 'date'
require 'sinatra/cross_origin'


class Snaas < Sinatra::Application
  register Sinatra::CrossOrigin
  
  configure do
    enable :cross_origin
  end


  get '/' do
    markdown File.read(File.join('public', 'index.md'))
  end

  get '/names' do
 

  end

  get '/names/:name' do
    'details of #{params[:name]} '
  end

  get '/albums' do

   albums = [
      {
        :id           => 1,
        :name         => 'Doggystyle',
        :release_date => 'November 23, 1993',
        :label        => 'Death Row',
        :length       => '53:24',
        :img_url      => 'https://upload.wikimedia.org/wikipedia/en/6/63/SnoopDoggyDoggDoggystyle.jpg'
      },

      {
        :id           => 2,
        :name         => 'The Doggfather',
        :release_date => 'November 12, 1996',
        :label        => 'Death Row',
        :length       => '74:13',
        :img_url      => 'https://upload.wikimedia.org/wikipedia/en/a/a3/Tha-doggfather.jpg'
      },

      {
        :id           => 3,
        :name         => 'Da Game Is to Be Sold, Not to Be Told',
        :release_date => 'August 14, 1998',
        :label        => 'No Limit',
        :length       => '76:03',
        :img_url      => 'https://upload.wikimedia.org/wikipedia/en/c/c5/Gameistobesold.jpg'
      }

    ]
    albums.map { |album| {:id => album[:id], :name => album[:name]}}.to_json
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
      :total_grams          => 1.4 * blunts_in_life,
      :total_pounds         => 1.4 * blunts_in_life / 448
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
