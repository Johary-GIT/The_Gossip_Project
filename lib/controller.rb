require "gossip.rb"
require "view.rb"

class Controller
    def create_gossip
        @view = View.new.create_gossip
        gossip = Gossip.new(@view[:author], @view[:content])
        gossip.save
    end

    def index_gossip
        allgossip = Gossip.all
        @view = View.new.index_gossip(allgossip)
    end
    
    def delete_gossip
        num = View.new.delete
        table = Gossip.all
        deltable = gossip.del(table,num)
        return deltable
    end