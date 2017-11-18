# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
puts "Creating Admin and Editor"
Admin.create_with(password: 'asdqwe123', password_confirmation: 'asdqwe123')
         .find_or_create_by(email: 'admin@example.com')
Editor.create_with(password: 'asdqwe123', password_confirmation: 'asdqwe123')
         .find_or_create_by(email: 'editor@example.com')

puts "Creating Sections"
%w(Deportes Espectaculos Sociedad).each do |section_name|
  Section.find_or_create_by(name: section_name)
end

puts "Creating Articles"
Section.all.each do |section|
  Article.create_with(lead: "Copete_#{section.id}", body: "Cuerpo_#{section.id}", section: section)
         .find_or_create_by(headline: "Titulo_#{section.id}")
end