require 'plist'

icons = Dir.glob "*.png"

File.open("theme", "w") do |f|
  f << "Name=Emoji for Pidgin\n"
  f << "Description=Emoji for Pidgin\n"
  f << "Icon=emoji-9.png\n"
  f << "Author=Jason Salaz\n"
  f << "#Original Author=Karl Fischer\n"
  f << "\n"
  f << "\n"
  f << "[default]\n"

  f << "plus1.png :+1:\n"
  f << "minus1.png -+1:\n"

  icons.each do |icon|
    file = icon
    next if file == 'plus1.png' || file == 'minus1.png'
    name = ':' + icon.gsub('.png','') + ':'

    f << "#{file} #{name}\n"
  end
end