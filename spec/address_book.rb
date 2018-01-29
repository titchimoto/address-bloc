require_relative '../models/address_book'

RSpec.describe AddressBook do
  describe "attributes" do

    it "responds to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "initializes entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_an(Array)
    end

    it "initializes entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq(0)
    end

  end

  describe "#add_entry" do
    it "adds only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('Theo Deane', '555-123-8196', 'theo@meowmeow.com')
      expect(book.entries.size).to eq(1)
    end

    it "adds the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Theo Deane', '555-123-8196', 'theo@meowmeow.com')
      new_entry = book.entries[0]

      expect(new_entry.name).to eq('Theo Deane')
      expect(new_entry.phone_number).to eq('555-123-8196')
      expect(new_entry.email).to eq('theo@meowmeow.com')
    end
  end

  describe "#remove_entry" do
    it "removes the correct entry from the address book" do
      book = AddressBook.new
      book.add_entry('Dave Smith', '555-123-1234', 'dave@bigdave.com')
      book.add_entry('Theo Deane', '555-123-8196', 'theo@meowmeow.com')

      book.remove_entry('Dave Smith', '555-123-1234', 'dave@bigdave.com')
      expect(book.entries.size).to eq(1)
      expect(book.entries[0].name).to eq('Theo Deane')
    end

  end

end
