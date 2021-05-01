require_relative '../lib/case_when'
require 'set'
require 'minitest/autorun'
require 'mutant/minitest/coverage'


class CaseWhenTest < MiniTest::Test
  cover CaseWhen

  def case_when
    CaseWhen.new
  end

  def test_low
    assert_equal 'low value', case_when.(0)
    assert_equal 'low value', case_when.(1)
    assert_equal 'low value', case_when.(2)
    assert_equal 'low value', case_when.(3)
  end

  def test_medium
    assert_equal 'medium value', case_when.(4)
    assert_equal 'medium value', case_when.(5)
    assert_equal 'medium value', case_when.(6)
    assert_equal 'medium value', case_when.(7)
  end

  def test_high
    assert_equal 'high value', case_when.(8)
    assert_equal 'high value', case_when.(9)
    assert_equal 'high value', case_when.(10)
  end

  def test_invalid
    assert_equal 'invalid value', case_when.(11)
    assert_equal 'invalid value', case_when.(-1)
  end
end
