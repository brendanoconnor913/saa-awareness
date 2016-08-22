module SessionsHelper
    
    def log_in(user)
       session[:user_id] = user.id  
    end
    
    def log_out
       session.delete(:user_id) 
    end
    
    def logged_in?
        if session[:user_id]
            return true
        else
            return false
        end
    end
end
