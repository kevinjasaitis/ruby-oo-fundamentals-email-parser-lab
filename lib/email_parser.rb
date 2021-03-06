# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
require 'pry'
class EmailAddressParser 
    attr_accessor :name, :csv_emails
    
    def initialize(csv_emails)
  #   # you don't need name in here, it is redundant/
  #   @name = name
      @csv_emails = csv_emails
      
    end 
  
  # This will not work because "emails2" below will not be properly parsed  
  # def parse 
  #   csv_emails.split(/\s*,\s*/)
  # end 
  
    def parse 
      csv_emails.split.collect do |address|
        
        address.split(',') 
        
      end
      .flatten.uniq 
     
    end 
  end 
  
  emails1 = "asd@qw.com, per@er.org, Zaza@sugar.net"
  parser1 = EmailAddressParser.new(emails1)
  parser1.parse 
  
  
  emails2 = "asd@qw.com per@er.org per@er.org Zaza@sugar.net"
  parser2 = EmailAddressParser.new(emails2)
  parser2.parse