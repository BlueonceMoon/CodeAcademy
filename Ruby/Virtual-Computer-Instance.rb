# Basic Virtual Computer Instance to add users and files.
# Will also display files created using date/time and username

class Computer
  @@users = {}

  def initialize(username,password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "New file: #{filename} was created by #{@username} at #{time} "
  end

  def Computer.get_users
    return @@users
  end

end

my_computer = Computer.new("test","test")