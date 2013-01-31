#encoding: UTF-8
# File : quiz_spec.rb

require 'quiz'

describe Quiz do

    include Quiz

    before :all do
    	@quiz = Quiz::Quiz.new("Cuestionario") do |e|
			e.question "Enunciado",
	        e.wrong => "respuesta1",
	        e.right => "respuesta2",
	        e.wrong => "respuesta3"
	    end
        @answer = Quiz::Answer.new([:right, "respuesta2"])
        @question = Quiz::Question.new("Enunciado", ["respuesta1", "respuesta2", "respuesta3"])
    end

    describe "#Quiz_new" do
        it "Quiz::Quiz" do
            @quiz.should be_an_instance_of Quiz::Quiz
        end
    end
        

    describe "#Quiz_name" do 
        it "String" do
            @quiz.name.should be_a String
        end 
        it "Debe responder al método questions" do
            (@quiz.respond_to? :name).should == true
        end
        it "Se debe invocar al método name y devolver el nombre del cuestionario" do
            @quiz.name.should == "Cuestionario"
        end 
    end

    describe "#Quiz_questions" do 
        it "String" do
            @quiz.name.should be_a String
        end 
        it "Debe responder al método questions" do
            (@quiz.respond_to? :questions).should == true
        end
    end

    describe "#Quiz_to_s" do 
        it "String" do
            @quiz.to_s.should be_a String
        end 
        it "Debe responder al método to_s" do
            (@quiz.respond_to? :to_s).should == true
        end
    end

    describe "#Quiz_to_html" do 
        it "NilClass" do
            @quiz.to_html.should be_a NilClass
        end 
        it "Debe responder al método to_html" do
            (@quiz.respond_to? :to_html).should == true
        end
    end

    describe "#Quiz_wrong" do 
        it "Array" do
            @quiz.wrong.should be_a Array
        end 
        it "Debe responder al método wrong" do
            (@quiz.respond_to? :wrong).should == true
        end
        it "Devolverá el contador y false" do
            @quiz.wrong.should == [4, false]
        end
    end

    describe "#Quiz_right" do 
        it "Symbol" do
            @quiz.right.should be_a Symbol
        end 
        it "Debe responder al método right" do
            (@quiz.respond_to? :right).should == true
        end
        it "Devolverá el símbolo right" do
            @quiz.right.should == :right
        end
    end

    describe "#Quiz_run" do 
        it "Debe responder al método right" do
            (@quiz.respond_to? :run).should == true
        end
    end

    describe "#Answer_new" do 
        it "Quiz::Answer" do
            @answer.should be_an_instance_of Quiz::Answer
        end
    end

    describe "#Question_new" do 
        it "Quiz::Question" do
            @question.should be_an_instance_of Quiz::Question
        end
    end



end