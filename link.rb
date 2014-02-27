require 'fileutils'
# Defini le full patch du repertoire courant
baseddir = Dir.pwd
home = ENV['HOME']
# Parcours du répertoire
Dir.foreach(baseddir) do |f| 

  # Affiche 
  # les fichiers en excluant ce script et tous les fichier .swp
  # les dossiers en excluant . et ..  
  if File.file?(f) and !(f == 'link.rb' || f =~ /^*.swp/ ) or File.directory?(f) and !(f =='.' || f == '..'|| f == '.git')
    FileUtils.rm_rf( "#{home}/#{f}")
    FileUtils.ln_s("#{baseddir}/#{f}",  "#{home}/#{f}", :force => true)
    #puts baseddir+"/"f
    puts "Symbolic link "+baseddir+"/"+f+" create."
  end
end
