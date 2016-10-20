def full_title(page_title)
	title_base = "Ruby on Rails Tutorial"
	if page_title.empty?
		title_base
	else
		"#{title_base} | #{page_title}"
	end
end