require "./test/test_helper"

class EquationSolverTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::EquationSolver::VERSION
  end

  def test_that_it_handles_wrong_input
    assert_nil ::EquationSolver.solve(0, 1, 'test')
  end

  def test_that_it_handles_linear_equation
    assert_equal [1, nil], ::EquationSolver.solve(0, 1, -1)
  end

  def test_that_it_handles_square_case
    assert_equal [2, -2], ::EquationSolver.solve(4, 0, 0)
  end

  def test_that_it_handles_generic_case
    assert_equal [2, 3], ::EquationSolver.solve(1, -5, 6)
  end

  def test_that_it_handles_float_values
    assert_equal [2.5, 3], ::EquationSolver.solve(1, -5.5, 7.5)
  end
end
