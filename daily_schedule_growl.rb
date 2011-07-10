require 'rubygems'

daily_schedule = {
                  }

hash={}
loop do
  sleep 5
  if hash.empty?
    hash = daily_schedule.clone
  end
  time = Time.now.strftime("%H:%M").to_s
  if hash.include?(time)
    system("growlnotify -w -n DailySchedule -p 0 -m '#{hash[time]}' '#{time}' &")
    hash.delete(time)
  end
end
