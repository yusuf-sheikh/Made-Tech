require "rspec/autorun"

# calc = Calculator.new
# calc.add(5, 10) # => 15

class Calculator
    def add(a, b)
        a + b
    end

    def factorial(n)
        if n == 0
            1
        else
            (1..n).reduce(:*)
        end
    end

    def subtract(a, b)
        a - b
    end

    def multiply(a, b)
        a * b
    end

    def divide(a, b)
        a.fdiv(b)
    end
end

describe Calculator do
    describe "#add" do
        it "returns the sum of its two arguments" do
            calc = Calculator.new

            expect(calc.add(5, 10)).to eq(15)
        end

        it "returns the sum of two different arguments" do
            calc = Calculator.new

            expect(calc.add(1, 2)).to eq(3)
        end
    end

    describe "#factorial" do
        it "returns 1 when given 0" do
            calc = Calculator.new

            expect(calc.factorial(0)).to eq(1)
        end

        it "returns 120 when given 5" do
            calc = Calculator.new

            expect(calc.factorial(5)).to eq(120)
        end
    end

    describe "#subtract" do
        it "returns the difference of its two arguments" do
            calc = Calculator.new

            expect(calc.subtract(10, 5)).to eq(5)
        end

        it "returns the difference of two different arguments" do
            calc = Calculator.new

            expect(calc.subtract(1, 2)).to eq(-1)
        end
    end

    describe "#multiply" do
        it "returns the product of its two arguments" do
            calc = Calculator.new

            expect(calc.multiply(5, 10)).to eq(50)
        end

        it "returns the product of two different arguments" do
            calc = Calculator.new

            expect(calc.multiply(1, 2)).to eq(2)
        end
    end

    describe "#divide" do
        it "returns the division of its two arguments" do
            calc = Calculator.new

            expect(calc.divide(10, 5)).to eq(2)
        end

        it "returns the division of two different arguments" do
            calc = Calculator.new

            expect(calc.divide(1, 2)).to eq(0.5)
        end
    end
end