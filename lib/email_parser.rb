# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'csv'

class EmailAddressParser
    attr_accessor :emails
    def initialize(emails)
        @emails = emails
    end

    def parse
     new_array = @emails.split(' ')
     new_array.map do |email|
        if email.include?(",")
            email.delete!(",")
        end
     end
     new_array.uniq
    end
end