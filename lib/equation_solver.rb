require "equation_solver/version"

# Solves quadratic equations
module EquationSolver
  class Error < StandardError;
  end

  # equation a*x^2+b*x+c=0
  # output: [x1, x2], nil if equation has no solutions
  def self.solve(a, b, c)
    return nil unless valid_params? a, b, c
    return [-c / b, nil] if a.zero?

    d = Math.sqrt(b**2 - 4 * a * c)
    [(-b - d) / (2 * a), (-b + d) / (2 * a)]
  end

  def self.valid_params?(a, b, c)
    [a, b, c].all? { |x| x.is_a? Numeric }
  end

  private_class_method :valid_params?
end
