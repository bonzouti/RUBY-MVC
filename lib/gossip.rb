require 'CSV'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end


  def save
    CSV.open('db/gossip.csv', 'ab') do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []
    CSV.foreach('db/gossip.csv') do |ligne|
      gossip_provisoire = Gossip.new(ligne[0],ligne[1])
      all_gossips << gossip_provisoire
    end
    return all_gossips   
  end
end