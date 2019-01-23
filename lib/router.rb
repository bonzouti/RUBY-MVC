require 'controller'
class Router
  def initialize
    @controller = Controller.new  
  end #ainsi, un "Router.new" lancé par app.rb va créer automatique une instance "@controller"

  def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
    puts "BIENVENUE DANS THE GOSSIP PROJECT, TU VAS NOUS RACONTER DES SALADES"
    while true

      #On affiche le menu
      puts "Tu veux faire quoi Beau gosse ?"
      puts "1. Je veux créer un gossip"
      puts "2. Je veux afficher tous les potins"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i #On attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        puts "Tu as choisi de créer un gossip"
        @controller.create_gossip
      when 2
        puts "Tu as choisi d'afficher les potins"
        @controller.index_gossips
      when 4
        puts "A bientôt patisan !"
        break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir
      else
        puts "Ce choix n'existe pas , merci de ressayer" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie/ potentiellement
      end  
    end
  end
end