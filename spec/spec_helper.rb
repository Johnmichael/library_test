require("rspec")
require('pry')
require("pg")
require("book")
require("patron")
require("author")

DB = PG.connect({:dbname => "library_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM author_title *;")
    DB.exec("DELETE FROM authors *;")
    DB.exec("DELETE FROM checkouts *;")
    DB.exec("DELETE FROM patrons *;")
  end
end
