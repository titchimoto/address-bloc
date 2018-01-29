require_relative '../models/address_book'

class MenuController

  attr_reader :address_book

  def initialize
    @address_book = AddressBook.new
  end

  def main_menu
    p "Main Menu - #{address_book.entries.count} entries"
    p "1 - View all entries"
    p "2 - View Entry Number n"
    p "3 - Create an entry"
    p "4 - Search for an entry"
    p "5 - Import entries from a CSV"
    p "6 - Exit"
    print "Enter your selection: "

    selection = gets.to_i

    case selection
      when 1
        system "clear"
        view_all_entries
        maine_menu
      when 2
        system "clear"
        view_entry_number
        main_menu
      when 3
        system "clear"
        create_entry
        main_menu
      when 4
        system "clear"
        search_entries
        main_menu
      when 5
        system "clear"
        read_csv
        main_menu
      when 6
        p "Goodbye!"
        exit(0)
      else
        system "clear"
        p "Sorry, that is not a valid input."
        main_menu
      end
  end

  def view_all_entries
    address_book.entries.each do |entry|
      system "clear"
      p entry.to_s
      entry_submenu(entry)
    end

    system "clear"
    p "End of entries"
  end

  def view_entry_number
      print "Entry number: "
      entry_number = gets.chomp.to_i
      if entry_number > 0 && entry_number <= address_book.entries.length
        puts address_book.entries[entry_number - 1].to_s
      else
        puts "Invalid entry. Please try again."
        view_entry_number
      end
  end

  def create_entry
    system "clear"
    p "New AddressBloc Entry"
    print "Name: "
    name = gets.chomp
    print "Phone Number: "
    phone = gets.chomp
    print "Email: "
    email = gets.chomp

    address_book.add_entry(name, phone, email)

    system "clear"
    p "New entry created"
  end

  def search_entries
  end

  def read_csv
  end

  def entry_submenu(entry)
    p "n - next entry"
    p "d - delete entry"
    p "e - edit this entry"
    p "m - return to main menu"

    selection = gets.chomp

    case selection
      when "n"

      when "d"

      when "e"

      when "m"
        system "clear"
        main_menu

      else
        system "clear"
        p "#{selection} is not a valid input"
        entry_submenu(entry)
    end
  end

end