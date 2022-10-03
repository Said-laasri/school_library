require_relative 'app'

class Select
  def select_method(option, app)
    case option
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      app.add_person
    when 4
      app.add_book
    when 5
      app.add_rental
    when 6
      app.list_rentals
    when 7
      app.exit_method
    end
  end
end
