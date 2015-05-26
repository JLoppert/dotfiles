file = ARGV[0]
files = `git status --porcelain`

# diff everything if file not found
full_path = '.'

files.each_line do |f|
  file_name = f.split('/').last
  file_name = f.split('/')[-2] if file_name.length == 1
  full_path = f.split(' ').last if file_name.strip == file.strip
end

puts full_path
