require 'zip'

# Compression
Zip::File.open('archive.zip', Zip::File::CREATE) do |zipfile|
  zipfile.add('file.txt', 'path/to/file.txt')
  # Ajouter d'autres fichiers ici
end

# Décompression
Zip::File.open('archive.zip') do |zipfile|
  zipfile.each do |file|
    file.extract('output_path/' + file.name)
  end
end
