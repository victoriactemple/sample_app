class User
    
    #this getter and setter method allows us 
    #to retreive and assign @name and @email
    attr_accessor :first_name, :last_name, :email
  
    #attributes = {} is setting default to 
    # and empty hash so we can add a new user obkect

    def initialize(attributes = {})
      @first_name  = attributes[:first_name]
      @last_name = attributes[:last_name]
      @email = attributes[:email]
    end

    def full_name
      "#{first_name} #{last_name}"
    end

    def alphabetical_name
      "#{last_name}, #{first_name}"
    end
  
    def formatted_email
      "#{@first_name} <#{@email}>"
    end
  end


  # victoria.full_name.split == victoria.alphabetical_name.split(', ').reverse