Rails.application.routes.draw do
    
    get("flexible/square/:the_num", { :controller => "calc" , :action => "flex_square"})
    

end
