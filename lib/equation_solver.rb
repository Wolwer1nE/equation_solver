require "equation_solver/version"

# Solves quadratic equations
module EquationSolver
  class Error < StandardError;
  end

  # equation a*x^2+b*x+c=0
  # output: [x1, x2], nil if equation has now solutions
  def self.solve(a, b, c)
    d = Math.sqrt(b**2-4*a*c)
    [(-b-d)/(2*a), (-b+d)/(2*a)]
  end

end
