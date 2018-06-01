# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # FIRST TRY
  # if a != b && a != c && b == c
  #   :isosceles
  # elsif a != b && b != c && a == c
  #   :isosceles
  # elsif a != c && b != c && a == b
  #   :isosceles
  # elsif a == b && a == c
  #   :equilateral
  # elsif a != b && a != c
  #   :scalene
  # end


  if (a <= 0) || (b <= 0) || (c <= 0)
    raise TriangleError, "a side can not be equal to 0 or a negative number"
  elsif (a+b <= c) || (a+c <= b) || (b+c <= a)
    raise TriangleError, "the sum of two sides can not be greater than the third"
  elsif a == b && b == c then
    :equilateral
  elsif a == b || a == c || b == c then
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
