# Defini le full patch du repertoire courant
baseddir = Dir.pwd

# Parcours du répertoire
Dir.foreach(baseddir) do |f| 

  # Affiche 
  # les fichiers en excluant ce script et tous les fichier .swp
  # les dossiers en excluant . et ..  
  if File.file?(f) and !(f == 'link.rb' || f =~ /^*.swp/ ) or File.directory?(f) and !(f =='.' || f == '..'|| f == '.git')
    #puts f 
    exec( "ln -s -F "+f+" ~/"+f)
    puts "Symbolic link "+f+" create."
  end
end
