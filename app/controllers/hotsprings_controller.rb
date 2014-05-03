get '/' do
  erb :index
end

get '/springs' do
  @springs = Hotspring.where(code: params[:code])
  erb :springs, layout: false
end