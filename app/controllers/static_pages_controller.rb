class StaticPagesController < ApplicationController

    def index
        @gossip = Gossip.all
    end

    def contact
    end

    def team
    end
    
end
