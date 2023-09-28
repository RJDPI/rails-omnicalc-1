class OmnicalcController < ApplicationController
 
  def homepage
    render({:template => "omnicalc_templates/homepage"})
  end

  def parrot
    render({:template => "omnicalc_templates/payment_calc"})
  end
  
  def giraffe
    @principal = params.fetch("user_pv").to_f#.to_fs(:currency)
    @apr = params.fetch("user_apr").to_f.round(4)#.to_fs(:percentage) #((params.fetch("users_apr").to_f) /12)/ 100
    @years =  params.fetch("user_years").to_i #params.fetch("users_year").to_f * 12

    r = (@apr / 12.0) / 100
    y = @years * 12
    top = r * @principal
    bottom = 1 - (1 + r) ** (-1 * y)

    @payment = top / bottom

    render({:template => "omnicalc_templates/payment_calc_results"})
  end

  def lion
  render({:template => "omnicalc_templates/new_square_calc"})
  end

  def panther

  render({:template => "omnicalc_templates/new_square_root_calc"})

  end

  

  def monkey
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f

    @random_number = rand(@min..@max)
    render({:template => "omnicalc_templates/random_results"})
  end


  def dog
    render({:template => "omnicalc_templates/random"})
  end

  def eagle

    @the_num=params.fetch("user_number").to_f

    @the_result=@the_num ** 2
    render({:template => "omnicalc_templates/square_results"})
  end

  def tiger
    @the_num = params.fetch("user_number").to_f

    @the_result = Math.sqrt(@the_num).to_f
    render({:template => "omnicalc_templates/square_root_results"})
  end

end
