file = ARGV[0]
files = `git status --porcelain`

files.each_line do |f|
  full_path = f.split(' ').last
  file_name = f.split('/').last
  file_name = f.split('/')[-2] if file_name.length == 1
  full_path if file_name.strip == file
end

puts full_path
