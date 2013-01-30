#encoding: UTF-8

require 'quiz'
include Quiz

if __FILE__ == $0

	quiz = Quiz::Quiz.new("Gemas") do |e|

    	e.question "¿Qué comando permite manipular gemas?",
        e.wrong => "bundler",
        e.right => "gem",
        e.wrong => "Rubygems",
        e.wrong => "gem install"

     	e.question "¿Cómo se puede encontrar la gema, mygem, en la máquina local?",
        e.wrong => "gem search mygem --b",
        e.right => "gem search mygem --l",
        e.wrong => "gem search mygem -remote",
        e.wrong => "gem search mygem -local"

        e.question "¿Cómo se denomina el repositorio estándar de gemas?",
        e.wrong => "/etc/gem/",
        e.wrong => "Repository Gem",
        e.right => "Rubygems",
        e.wrong => "RubyGemas"
	end

	quiz.to_html

end