def filter(text,*files)
  files.each do |file|
    filter=File.new(file).read
    eval filter
  end
  text
end
