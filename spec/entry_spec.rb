require_relative '../models/entry'

RSpec.describe Entry do

  describe "attributes" do
    let(:entry) { Entry.new('Theo Deane', '555-123-8196', 'theo@meowmeow.com') }

    it "responds to new name" do
      expect(entry).to respond_to(:name)
    end

    it "reports its name" do
      expect(entry.name).to eq('Theo Deane')
    end

    it "responds to phone number" do
      expect(entry).to respond_to(:phone_number)
    end

    it "reports its phone number" do
      expect(entry.phone_number).to eq('555-123-8196')
    end

    it "responds to email" do
      expect(entry).to respond_to(:email)
    end

    it "reports its email" do
      expect(entry.email).to eq('theo@meowmeow.com')
    end
  end

  describe "#to_s" do
    it "prints an entry as a string" do
      entry = Entry.new('Theo Deane', '555-123-8196', 'theo@meowmeow.com')
      expected_string = "Name: Theo Deane\nPhone Number: 555-123-8196\nEmail: theo@meowmeow.com"
      expect(entry.to_s).to eq(expected_string)
    end
  end

end
