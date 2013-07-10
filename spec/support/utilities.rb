include ApplicationHelper

def main_title(page_title)
	the_message = "HAPPY 50th BIRTHDAY!"
	mom_name = "Julie Esparrago"
	if page_title.empty?
		the_message
	else
		mom_name
	end
end