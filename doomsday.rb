puts "Willkommen beim Doomsday Calculator."
puts "Dieser Rechner berechnet den Wochentag von jedem Datum zwischen 1000 n. Chr. und 2999 n. Chr."
puts "Geben Sie das Datum in folgendem Format ein: 26. 7. 1994"

day, month, year = gets.chomp.to_s.split(" ")
day = day.chop.to_i
month = month.chop.to_i
year = year.to_i

if (1800...1900) === year #|| (2200...2300) || (2600...2700) || (1400...1500) || (1000...1100)
	anchor_day = 5
	last_digits_string  = year.to_s[-2..-1]
	last_digits = last_digits_string.to_i
elsif (1900...2000)  === year #|| (2300...2400) || (2700...2800) || (1500...1600) || (1100...1200)
	anchor_day = 3
	last_digits_string = year.to_s[-2..-1]
	last_digits = last_digits_string.to_i
elsif (2000...2100) === year #|| (2400...2500) || (2800...2900) || (1600...1700) || (1200...1300)
	anchor_day = 2
	last_digits_string = year.to_s[-2..-1]
	last_digits = last_digits_string.to_i
elsif (2100...2200) === year #|| (2500...2600)|| (2900...3000) || (1700...1800) || (1300...1400)
	anchor_day = 0
	last_digits_string = year.to_s[-2..-1]
	last_digits = last_digits_string.to_i
else
	puts "Außerhalb des gültigen Bereichs."
	break
end

weekdays = Array[:Sonntag, :Montag, :Dienstag, :Mittwoch, :Donnerstag, :Freitag, :Samstag]

def comptime(year, month, day)
	$time = Time.new
	if $time > Time.mktime(year, month, day)
		"war"
	else
		"ist"
	end
end

if (year % 4 == 0 && !(year % 100 == 0) || (year % 400 == 0))
	a = last_digits/12; b = last_digits-(a*12); c = b/4; d = a+b+c+anchor_day; y = d%7

	loomsdays = Hash[	1 => 4, 
										2 => 29, 
										3 => 14, 
										4 => 4, 
										5 => 9, 
										6 => 6, 
										7 => 11, 
										8 => 8, 
										9 => 5, 
										10 => 10, 
										11 => 7, 
										12 => 12]

	if day > loomsdays[month].to_i
		x = (day - (loomsdays[month]).to_i)%7
		puts "Der #{day}. #{month} #{year} #{comptime(year, month, day)} ein " + weekdays[(y+x)%7].to_s + "."
	elsif day < loomsdays[month]
		x = ((loomsdays[month]).to_i - day)%7
		puts "Der #{day}. #{month} #{year} #{comptime(year, month, day)} ein " + weekdays[(y-x)%7].to_s + "."
	else
		puts "Der #{day}. #{month} #{year} #{comptime(year, month, day)} ein " + weekdays[y%7].to_s + "."
	end
	
else
	a = last_digits/12; b = last_digits-(a*12); c = b/4; d = a+b+c+anchor_day; y = d%7

	doomsdays = Hash[	1 => 3, 
						2 => 28, 
						3 => 14, 
						4 => 4, 
						5 => 9, 
						6 => 6, 
						7 => 11, 
						8 => 8, 
						9 => 5, 
						10 => 10, 
						11 => 7, 
						12 => 12]

	if day > doomsdays[month].to_i
		x = (day - (doomsdays[month]).to_i)%7
		puts "Der #{day}. #{month} #{year} #{comptime(year, month, day)} ein " + weekdays[(y+x)%7].to_s + "."
	elsif day < doomsdays[month]
		x = ((doomsdays[month]).to_i - day)%7
		puts "Der #{day}. #{month} #{year} #{comptime(year, month, day)} ein " + weekdays[(y-x)%7].to_s + "."
	else
		puts "Der #{day}. #{month} #{year} #{comptime(year, month, day)} ein " + weekdays[y%7].to_s + "."
	end
end
