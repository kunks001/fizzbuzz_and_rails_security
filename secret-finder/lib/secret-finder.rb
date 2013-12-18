require 'mechanize'
require 'open-uri'

a = Mechanize.new { |agent|
  agent.follow_meta_refresh = true
}

a.get("http://localhost:3000") do |home_page|
  signin_page = a.click(home_page.link_with(:text => /Login/))

  @my_page = signin_page.form_with(:class => 'new_user') do |form|

  	e_field = form.field_with(:name => "user[email]")
		e_field.value = "bob@bob.com"
		p_field = form.field_with(:name => "user[password]")
		p_field.value = "foobar12"
 	end.submit

end

a.get("http://localhost:3000/secrets/786") do |secrets_page|
	secret = a.page.parser.css('.secret')

	secret_file = File.open("./secret.txt", "w")
	secret_file.puts "#{secret}"
	secret_file.close
end