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
  # WRITE THIS CODE
  raise TriangleError, 'arguments cannot be zero.' if [a, b, c].min <= 0
  s1, s2, s3 = [a, b, c].sort
  raise TriangleError, 'any two sides must add up to more than the third side.' if (s1 + s2) <= s3
  [:equilateral, :isosceles, :scalene].fetch([a, b, c].uniq.size - 1)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
