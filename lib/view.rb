
class View
  def initialize
    
  end
  def create_gossip
    params = {}
    puts "ton histoire marante"
    print ">"
    params[:content]= gets.chomp
    puts "c'est l'histoire de qui ?"
    print ">"
    params[:author]= gets.chomp
    return params
  end

  def index_gossips(gossips)
    gossips.each {|goss| puts "#{goss.author}: #{goss.content}"}
  end
    
  end
  