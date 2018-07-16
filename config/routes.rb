Rails.application.routes.draw do
    
    get("flexible/square/:the_num", { :controller => "calc" , :action => "flex_square"})
    get("flexible/square_root/:the_num", { :controller => "calc" , :action => "flex_square_root"})
    get("flexible/payment/:basis_points/:num_years/:principal", { :controller => "calc" , :action => "flex_payment"})
    get("flexible/random/:min_input/:max_input", { :controller => "calc" , :action => "flex_random"})

end
