require "csv"
class Gossip

    def initialize(author, content)
        @content = content
        @author = author
    end

    def save
        CSV.open("./db/gossip.csv", "a+") do |s|
            s << [@author,@content]
        end
    end

    def self.all
        CSV.read("./db/gossip.csv").each do |line|
        puts line
        end
    end

end