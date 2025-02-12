class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
     files = []
     Dir.new(self.path).each do |file|
       files << file if file.length > 4
     end
     files
   end

   def import
      files.each{|f| Song.new_by_filename(f)}
   end
end
