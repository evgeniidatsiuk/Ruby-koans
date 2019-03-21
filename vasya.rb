require File.expand_path(File.dirname(__FILE__) + '/neo')

class Vasya < Neo::Koan
  def test_creating_arrays
    empty_array = Array.new
    assert_equal  Array, empty_array.class
    assert_equal __, empty_array.size
  end

  PI = 3.1416

  def test_constants_are_defined_with_an_initial_uppercase_letter
    assert_equal __, PI
  end

  def test_a_regexp_can_search_a_string_for_matching_content
    assert_equal __, "some matching content"[/match/]
  end

  def test_a_failed_match_returns_nil
    assert_equal __, "some matching content"[/missing/]
  end

  class CanNotBeTreatedAsString
    def to_s
      "non-string-like"
    end
  end

  def test_to_s_returns_a_string_representation
    not_like_a_string = CanNotBeTreatedAsString.new
    assert_equal  __, not_like_a_string.to_s
  end


  def test_symbols_can_be_compared
    symbol1 = :a_symbol
    symbol2 = :a_symbol
    symbol3 = :something_else

    assert_equal __, symbol1 == symbol2
    assert_equal __, symbol1 == symbol3
  end

  def test_double_quoted_strings_are_strings
    string = "Hello, World"
    assert_equal __, string.is_a?(String)
  end

  def test_single_quoted_strings_are_also_strings
    string = 'Goodbye, World'
    assert_equal __, string.is_a?(String)
  end

  def test_nil_has_a_few_methods_defined_on_it
    assert_equal __, nil.nil?
    assert_equal __, nil.to_s
    assert_equal __, nil.inspect
  end

  class ::Integer
    def even?
      (self % 2) == 0
    end
  end

  def test_even_existing_built_in_classes_can_be_reopened
    assert_equal __, 1.even?
    assert_equal __, 2.even?
  end



  def test_iterating_with_each
    array = [1, 2, 3]
    sum = 0
    array.each do |item|
      sum += item
    end
    assert_equal __, sum
  end

  def test_each_can_use_curly_brace_blocks_too
    array = [1, 2, 3]
    sum = 0
    array.each { |item| sum += item }
    assert_equal __, sum
  end

end