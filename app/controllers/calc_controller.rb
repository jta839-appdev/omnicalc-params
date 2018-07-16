class CalcController < ApplicationController
    def flex_square
        #The parameters look like this:  {"the_num" => "5"}
        #Rails puts stuff in params
        
        @num_input = params.fetch("the_num").to_i
        @num_output = @num_input**2.0
        
        render("calc_templates/flexible_square.html.erb")
        
    end
    
    def flex_square_root
        #The parameters look like this:  {"the_num" => "5"}
        #Rails puts stuff in params
        
        @num_input = params.fetch("the_num").to_i
        @num_output = @num_input**0.5
        
        render("calc_templates/flexible_square_root.html.erb")
        
    end
    
    def flex_payment
        #The parameters look like this:  {"the_num" => "5"}
        #Rails puts stuff in params
        
        @basis_points = params.fetch("basis_points").to_i
        @num_years = params.fetch("num_years").to_i
        @principal = params.fetch("principal").to_i
        
        @rate = (@basis_points/100.0)
        @payment = ((@rate/100.0)/12.0*@principal)/(1-(1+(@rate/100.0)/12.0)**(-@num_years*12.0))
        
        @rate = sprintf('%.2f', @rate)
        @payment = sprintf('%.2f', @payment)
        
        render("calc_templates/flexible_payment.html.erb")
        
    end
    
    def flex_random
        #The parameters look like this:  {"the_num" => "5"}
        #Rails puts stuff in params
        
        @min_input = params.fetch("min_input").to_i
        @max_input = params.fetch("max_input").to_i
        
        range = @max_input - @min_input
        @num_output = @min_input + rand(range + 1)
        
        
        render("calc_templates/flexible_random.html.erb")
        
    end
   
    
end