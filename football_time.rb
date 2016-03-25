require "win32/sound"
require "mechanize"
require "watir-webdriver"
include Win32


puts "hello_world"

oxford_score = 0
stevenage_score = 0
plymouth_score = 0
morecambe_score = 0
cambridge_score = 0
bristol_score = 0
exeter_score = 0
barnet_score = 0

while true

	#OXFORD UNITED
	puts "Now checking Oxford!"

#scrape
	a=Mechanize.new
	a=a.get("http://www.bbc.co.uk/sport/football/35839149")
	if a.search("span.fixture__number--home")[0].text.to_i != oxford_score
		Sound.beep(700, 4000)
		sleep 1
		Sound.play("Schwad.wav")
		oxford_score = a.search("span.fixture__number--home")[0].text.to_i
		browser = Watir::Browser.new :firefox # should open a new Firefox window
		browser.goto "http://www.readspeaker.com/voice-demo/" # or type the local path to your downloaded copy
		browser.select_list(:id => "voice-demo-lang").select "English (American) - male"
		# browser.text_field(:id => "my_text_field").set "Yes!"
		browser.textarea(:id => "voice-demo-text").set "Oxford #{oxford_score}, Stevenage #{stevenage_score}"
		browser.input(:id => "voice-demo-submit").click
	elsif a.search("span.fixture__number--away")[0].text.to_i != stevenage_score
		Sound.beep(700, 4000)
		sleep 1
		Sound.play("Schwad.wav")
		stevenage_score = a.search("span.fixture__number--away")[0].text.to_i
		browser = Watir::Browser.new :firefox # should open a new Firefox window
		browser.goto "http://www.readspeaker.com/voice-demo/" # or type the local path to your downloaded copy
		browser.select_list(:id => "voice-demo-lang").select "English (American) - male"
		# browser.text_field(:id => "my_text_field").set "Yes!"
		browser.textarea(:id => "voice-demo-text").set "Oxford #{oxford_score}, Stevenage #{stevenage_score}"
		browser.input(:id => "voice-demo-submit").click
	end

	#PLYMOUTH GAME
	puts "Now checking Plymouth!"
	a=Mechanize.new
	a=a.get("http://www.bbc.co.uk/sport/football/35839152")
	if a.search("span.fixture__number--home")[0].text.to_i != morecambe_score
		Sound.beep(700, 4000)
		sleep 1
		Sound.play("Schwad.wav")
		morecambe_score = a.search("span.fixture__number--home")[0].text.to_i
		browser = Watir::Browser.new :firefox # should open a new Firefox window
		browser.goto "http://www.readspeaker.com/voice-demo/" # or type the local path to your downloaded copy
		browser.select_list(:id => "voice-demo-lang").select "English (American) - male"
		# browser.text_field(:id => "my_text_field").set "Yes!"
		browser.textarea(:id => "voice-demo-text").set "Plymouth #{plymouth_score}, Morecambe #{morecambe_score}"
		browser.input(:id => "voice-demo-submit").click
	elsif a.search("span.fixture__number--away")[0].text.to_i != plymouth_score
		Sound.beep(700, 4000)
		sleep 1
		Sound.play("Schwad.wav")
		plymouth_score = a.search("span.fixture__number--away")[0].text.to_i
		browser = Watir::Browser.new :firefox # should open a new Firefox window
		browser.goto "http://www.readspeaker.com/voice-demo/" # or type the local path to your downloaded copy
		browser.select_list(:id => "voice-demo-lang").select "English (American) - male"
		# browser.text_field(:id => "my_text_field").set "Yes!"
		browser.textarea(:id => "voice-demo-text").set "Plymouth #{plymouth_score}, Morecambe #{morecambe_score}"
		browser.input(:id => "voice-demo-submit").click
	end

	puts "Now Checking Bristol!"
	#Bristol Rovers
	a=Mechanize.new
	a=a.get("http://www.bbc.co.uk/sport/football/35839205")
	if a.search("span.fixture__number--home")[0].text.to_i != bristol_score
		Sound.beep(700, 4000)
		sleep 1
		Sound.play("Schwad.wav")
		bristol_score = a.search("span.fixture__number--home")[0].text.to_i
		browser = Watir::Browser.new :firefox # should open a new Firefox window
		browser.goto "http://www.readspeaker.com/voice-demo/" # or type the local path to your downloaded copy
		browser.select_list(:id => "voice-demo-lang").select "English (American) - male"
		# browser.text_field(:id => "my_text_field").set "Yes!"
		browser.textarea(:id => "voice-demo-text").set "Bristol #{bristol_score}, Cambridge #{cambridge_score}"
		browser.input(:id => "voice-demo-submit").click
	elsif a.search("span.fixture__number--away")[0].text.to_i != cambridge_score
		Sound.beep(700, 4000)
		sleep 1
		Sound.play("Schwad.wav")
		cambridge_score = a.search("span.fixture__number--away")[0].text.to_i
		browser = Watir::Browser.new :firefox # should open a new Firefox window
		browser.goto "http://www.readspeaker.com/voice-demo/" # or type the local path to your downloaded copy
		browser.select_list(:id => "voice-demo-lang").select "English (American) - male"
		# browser.text_field(:id => "my_text_field").set "Yes!"
		browser.textarea(:id => "voice-demo-text").set "Bristol #{bristol_score}, Cambridge #{cambridge_score}"
		browser.input(:id => "voice-demo-submit").click
	end

	puts "Now Checking Exeter!"
	#Bristol Rovers
	a=Mechanize.new
	a=a.get("http://www.bbc.co.uk/sport/football/35839181")
	if a.search("span.fixture__number--home")[0].text.to_i != exeter_score
		Sound.beep(700, 4000)
		sleep 1
		Sound.play("Schwad.wav")
		exeter_score = a.search("span.fixture__number--home")[0].text.to_i
		browser = Watir::Browser.new :firefox # should open a new Firefox window
		browser.goto "http://www.readspeaker.com/voice-demo/" # or type the local path to your downloaded copy
		browser.select_list(:id => "voice-demo-lang").select "English (American) - male"
		# browser.text_field(:id => "my_text_field").set "Yes!"
		browser.textarea(:id => "voice-demo-text").set "Exeter #{exeter_score}, Barnet #{barnet_score}"
		browser.input(:id => "voice-demo-submit").click
	elsif a.search("span.fixture__number--away")[0].text.to_i != barnet_score
		Sound.beep(700, 4000)
		sleep 1
		Sound.play("Schwad.wav")
		barnet_score = a.search("span.fixture__number--away")[0].text.to_i
		browser = Watir::Browser.new :firefox # should open a new Firefox window
		browser.goto "http://www.readspeaker.com/voice-demo/" # or type the local path to your downloaded copy
		browser.select_list(:id => "voice-demo-lang").select "English (American) - male"
		# browser.text_field(:id => "my_text_field").set "Yes!"
		browser.textarea(:id => "voice-demo-text").set "Exeter #{exeter_score}, Barnet #{barnet_score}"
		browser.input(:id => "voice-demo-submit").click
	end


	sleep 10
end

# a=Mechanize.new
# a=a.get("http://www.bbc.co.uk/sport/football/35839149")
# browser = Watir::Browser.new :firefox # should open a new Firefox window
# browser.goto "http://www.readspeaker.com/voice-demo/" # or type the local path to your downloaded copy
# browser.select_list(:id => "voice-demo-lang").select "English (American) - male"
# # browser.text_field(:id => "my_text_field").set "Yes!"
# browser.textarea(:id => "voice-demo-text").set "Plymouth 1, Bristol Nil"
# browser.input(:id => "voice-demo-submit").click

# sleep 2 # puts the entire program to sleep for 2 seconds, so you can see the change
# browser.radio(:name => "familiar_rails", :value => "1").click # yes, I"m very familiar
# browser.radio(:name => "familiar_rails", :value => "3").click # actually, just a bit...

# browser.text_field(:name => "favorite_1").set "Yukihiro" # the creator of Ruby
# browser.text_field(:id => "favorite_2").set "Matsumoto" # is my favorite Ruby person!

# browser.checkbox(:index => 1).click # I like the TDD culture
# browser.checkbox(:index => 2).click # And Matz!
# sleep 2 # puts the entire program to sleep for 2 seconds, so you can see the change
# browser.checkbox(:index => 1).click # Oh well, I like only Matz..


# browser.select_list(:id => "usage").select_value "2" # Changed my mind

# # Here I entered C:/watir.txt because I had such a file inside my C: directory. Please be sure
# # to enter a valid path to a file, or your script will report "No such file or directory" error
# browser.file_field.set "C:/watir.txt" # Change this path to any path to a local file on your computer
# puts browser.p(:id => "my_description").text