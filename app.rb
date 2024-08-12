require "sinatra"
require "sinatra/reloader"

get("/") do
erb(:new_square_calc)
end

get("/square/new") do
erb(:new_square_calc)
end

get("/square/results") do

@the_num = params.fetch("number").to_f

@the_result = @the_num ** 2

  erb(:square_results)
  end




get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do

  @the_num_root = params.fetch("user_number").to_f

  @the_result_root = @the_num_root ** 0.5

  erb(:square_root_results)
end




get("/payment/new") do
  erb(:payment_new)
end

get("/payment/results") do

  @the_num_apr = params.fetch("user_apr").to_f
  @the_num_principal = params.fetch("user_pv").to_f
  @the_num_years = params.fetch("user_years").to_i*12

  @the_result_payment = (((@the_num_apr/100)/12) * @the_num_principal)/@the_num_years

  erb(:payment_results)
end





get("/random/new")do

erb(:random_new)

end

get("/random/results") do


  @the_num_min = params.fetch("user_min").to_f
@the_num_max = params.fetch("user_max").to_f


  @the_result_random = rand(@the_num_min...@the_num_max)

  erb(:random_results)
end
