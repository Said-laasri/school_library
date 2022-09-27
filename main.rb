require_relative 'person'
require_relative 'capitalizedecorator'
require_relative 'trimmerdecorator'

person = Person.new(22, 'maximilianus')

person.correct_name

capitalizedperson = CapitalizeDecorator.new(person)

capitalizedperson.correct_name

capitalizedtrimmedperson = TrimmerDecorator.new(capitalizedperson)

capitalizedtrimmedperson.correct_name
