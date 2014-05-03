get '/' do
  erb :index
end

get '/springs' do
  @springs = Hotspring.where(state_code: params[:code])
  erb :springs, layout: false
end