require 'sinatra/base'
require 'date'

class Snaas < Sinatra::Application
  get '/names' do
    'list of names'
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
    blunts_in_life = 81 * 365 * (Date.today.mjd - Date.today.mjd - Date.new(1971,10,20).mjd)

    {
      :blunts_per_day       => 81,
      :blunts_in_life       => blunts_in_life,
      :est_grams_per_blunt  => 1.4,
      :total_grams          => 1.4 * blunts_in_life
    }
  end

  get '/doggpound' do
    'random photo of snoop'
  end
end
