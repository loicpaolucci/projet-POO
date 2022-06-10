class Router

        def initialize
            @controller = Controller.new
        end

        def perform
        puts " 😇 WELCOME 😇 "
        puts ""
            while true 
                puts " 🙂 Que veux tu faire 🙂 ?"
                puts ""
                puts "1. Creer un item"
                puts "2. afficher la liste des items"
                puts "3. Chercher un item grace a son ID"
                puts "4. Quitter l'app"
                puts ""
                print "👉"
                    set = gets.chomp.to_i

        case set
            when 1 
            puts "Tu veux creer un item"
            @controller.create_item
            when 2
            puts "Tu veux afficher la liste des items"
            @controller.index
            when 3
            @controller.show
            when 4
            puts "Au revoir !"
            break 
            else
            puts "Cette commande ne marche pas ! "
            end  
        
        end
    end
end