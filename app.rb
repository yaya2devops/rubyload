require 'sinatra'

# Set the public directory for static assets
set :public_folder, File.dirname(__FILE__) + '/public'

# Set the views directory
set :views, File.dirname(__FILE__) + '/views'

# Main route
get '/' do
  erb :index
end

get '/download' do
    pdf_path = 'next/gen-latex-prompt.pdf'
    send_file(pdf_path, disposition: 'attachment', filename: 'gen-latex-prompt.pdf')
end
  

# Thank you route
get '/thanks' do
    erb :thanks
end   