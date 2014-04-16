require 'sinatra/base'

class Snaas < Sinatra::Applicaton
  get '/names' do
    'list of names'
  end

  get 'names/:name' do
    'details of #{params[:name]} '
  end

  get '/albums' do
    'list of albums'
  end

  get 'albums/:album_name' do
    'details of #{params[:album_name]}'
  end

  get 'trees' do
    'est. amount of weed snoop has smoked so far'
  end

  get 'doggpound' do
    'random photo of snoop'
  end
end
