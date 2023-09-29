class OmnicalcController < ApplicationController
 
  def homepage
    render({:template => "omnicalc_templates/homepage"})
  end

  def parrot
    render({:template => "omnicalc_templates/payment_calc"})
  end
  
  def giraffe
    @principal = params.fetch("user_pv").to_f
    @apr = params.fetch("user_apr").to_f
    @years =  params.fetch("user_years").to_i

    @r = (@apr / 100.0) / 12.0
    @n = @years *12.0
        

    @numerator = (@r * @principal)
    @denom = 1.0 - ((1.0 + @r)**-@n)
    @results = @numerator / @denom

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
