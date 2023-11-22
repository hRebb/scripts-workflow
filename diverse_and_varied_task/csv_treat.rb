require 'csv'

# Lire un fichier CSV
CSV.foreach('input.csv') do |row|
  # Traiter chaque ligne du CSV ici
end

# Écrire dans un fichier CSV
CSV.open('output.csv', 'w') do |csv|
  # Écrire des lignes dans le CSV ici
end
