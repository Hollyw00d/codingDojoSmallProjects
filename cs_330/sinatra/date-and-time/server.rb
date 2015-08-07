require "sinatra"
require "date"

get "/" do
  # Use "Time.new" to get the current date and time
  time = Time.new
  time.month

  # Get month name
  @month = Date::MONTHNAMES[Date.today.month]

  # Get current day of month
  @day_of_month = time.day

  # Get current year
  @year = time.year

  # Get current hour
  @hour = time.hour

  # Set variable a starting value of "AM"
  @am_pm = "AM"

  if @hour > 12
    @hour = (@hour - 12).to_s
    # Reset variable to "PM"
    @am_pm = "PM"
  end

  # Get current minutes
  @minutes = time.min

  if @minutes < 10
    @minutes = "0" + @minutes.to_s
  end

  erb :index
end
