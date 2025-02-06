class HomeController < ApplicationController
    before_action :authenticate_user!
   

    def add_index
    end
end
