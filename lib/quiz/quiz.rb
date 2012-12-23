# File : quiz.rb

require 'erb'

module Quiz

	# Debe definir una clase Quiz que soporte un pequeño lenguaje 
	# en el que las preguntas puedan ser especificadas.
	# Puede que le interese crear tres clases, una tercera para el cuestionario (Quiz)
	class Quiz

		# El constructor de Quiz va seguido de un bloque al que le
		# pasa como argumento el objeto e que representa al examen
		# quiz = Quiz.new("Cuestionario de PFS 10/12/2011") do |e| ... end
		def initialize(title)
			raise ArgumentError unless title.is_a? String
			@counter = 0
			@questioning = []
			@title = title

			yield self
		end

		# Los cuestionarios deberían tener un método to_s 
		# que devuelve un String conteniendo el examen en texto plano.
		def to_s

		end

		# Los cuestionarios deberían tener un método run que formulará cada 
		# una de las preguntas del cuestionario y mostrara el porcentaje de aciertos
		def run
			puts "#{self.title} \n"
			self.questioning.each do |q|
				puts q
				ans = gets.chomp.to_i
				raise IndexError unless ans > 0 and ans <= q.size

			end 



		end

		# El método question recibe dos argumentos
		# El primero es el título del examen, el segundo es un hash
		# Si el segundo argumento de question es un hash y las claves son :wrong y :right 
		# se va a producir una colisión y el último valor sobreescribirá a los anteriores. 
		def question (title, hash)

		end

		# Una posible forma de hacerlo es que los métodos wrong y right diferencien las 
		# ocurrencias de las repsuestas usando un contador @counter
		def wrong
			@counter += 1
			[@counter, WRONG]
		end
	end

	# Puede que le interese crear tres clases, una para modelar las respuestas (Answer)
	#class Answer 

		#def initialize()

		#end

		#def to_s

		#end

	#end

	# Puede que le interese crear tres clases, otra para modelar las preguntas (Question)
	class Question

		def initialize(title, answer)
			@title = title
			@answer = answer
		end

		def to_s
			puts "#{self.title} \n"
			i = 1
			self.answer.each do |ans|
				puts "#{i} - #{ans} \n"
				i += 1
			end 
		end

		def size
			@answer.size
		end

	end
end