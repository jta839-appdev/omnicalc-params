class CalcController < ApplicationController
    def flex_square
        #The parameters look like this:  {"the_num" => "5"}
        #Rails puts stuff in params
        
        @num_input = params.fetch("the_num").to_i
        @num_output = @num_input**2.0
        
        render("calc_templates/flexible_square.html.erb")
        
    end
end