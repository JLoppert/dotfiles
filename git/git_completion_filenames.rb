names = []
files = `git status --porcelain`

files.each_line do |file|
  parts = file.split('/')

  if parts.last.length != 1
    names << parts.last
  else
    names << parts[-2]
  end
end

puts names
