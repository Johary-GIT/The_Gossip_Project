require 'gossip'
class View

    def create
        puts "Author:"
        author = gets.chomp

        puts "content"
        content = gets.chomp
        return params = {conent : content,author : author}
    end

    def index_gossip
        Gossip.all
    end
    
end