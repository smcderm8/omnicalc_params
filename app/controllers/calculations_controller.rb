class CalculationsController < ApplicationController
    def flex_square
        #The incoming parameters for this actions look like {"a_number"=>"8"}
        #Rails stores that hash in a variable called params
        
        @user_number = params["a_number"].to_i
        
        @squared_number = @user_number**2
        
        render("calculations/flexible_square_template.html.erb")
    end
    
    def flex_square_root
        
        @user_number = params["a_number"].to_i
        
        @square_root = @user_number**0.5
        
        render("calculations/flexible_square_root_template.html.erb")
    end
    
    def flex_payment
        
        @user_interest_rate = params["interest_rate"].to_i
        
        @user_years = params["years"].to_i
        
        @user_principal = params["principal"].to_f
        
        @monthly_interest_rate = @user_interest_rate/100.000/12.000/100.000
        
        @period = @user_years*12
        
        @monthly_payment = (@monthly_interest_rate/(1-((1+@monthly_interest_rate)**-@period)))*@user_principal
        
        #@monthly_payment = (r/(1-((1+r)**-period)))*@principal
        
        render("calculations/flexible_payment_template.html.erb")
    end
    
    def flex_random
        
        @user_low_end = params["low_end"].to_i
        
        @user_high_end = params["high_end"].to_i
        
        @random_number = rand(@user_low_end .. @user_high_end)
        
        render("calculations/flexible_random_template.html.erb")
        
    end
    
    def square_form
        
        
        render("calculations/square_form_template.html.erb")
    end
    
    def process_square
        
        #The incoming parameters for this actions look like {"the_user_number"=>"8"}
        #Rails stores that hash in a variable called params
        
        @user_number = params["the_user_number"].to_i
        
        @squared_number = @user_number**2
        
        render("calculations/square_results_template.html.erb")
    end
    
end