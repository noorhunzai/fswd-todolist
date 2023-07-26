# Assuming you have a User model with attributes like name, email, and password.
# If your User model has different attributes, make sure to adjust accordingly.

# Create a new User record with a password
user = User.create!(name: 'Alice Johnson', email: 'alice@example.com', password: 'secretpassword')

# Create associated tasks and save them to the database
user.tasks.create(content: '1st task', due: DateTime.now)
user.tasks.create(content: '2nd task', due: DateTime.now)
