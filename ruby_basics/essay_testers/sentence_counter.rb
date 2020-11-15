File.open('podcast_myopia.txt', 'r') do |f|
  counted_words = f.read.split('.').map { |sen| sen.length }
end
