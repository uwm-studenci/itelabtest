module UsersHelper
	def button_new(name, path)
		link_to(name, path, :class => "button radius")
	end

	def header(name)
		icon = content_tag :span do
			tag :i, :class => "fi-info"
		end

		content_tag :h1 do
			concat(name)
			concat(icon)
		end
	end
end
