# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# @student = Student.new(:email => 'student@example.com',
#                  :password => 'password',
#                  :password_confirmation => 'password')

#@admin = Admin.new(:ausername => 'tmel',
                # :password => 'password',
                # :password_confirmation => 'password')
#Student.create!({email: 'student@test.com', password: 'password', password_confirmation: 'password', name: 'Steven'})
  #  puts "Student created!"
    

# Teacher.create(pusername: 'testeacher', password: 'password', password_confirmation: 'password')

# teacher = Teacher.create! :pusername => 'testeacher', :password => 'password', :password_confirmation => 'password', :firstname => "Te", :lastname => "Teacher"

# teacher = Teacher.create! :pusername => 'testeacher2', :password => 'password', :password_confirmation => 'password', :firstname => "Pe", :lastname => "Peacher"

# student = Student.create! :susername => 'testudent', :password => 'password', :password_confirmation => 'password', :firstname => "Te", :lastname => "Student"

# student = Student.create! :susername => 'testudent2', :password => 'password', :password_confirmation => 'password', :firstname => "Ge", :lastname => "Gtudent"

admin = Admin.create! :ausername => 'admin1', :password => 'rootroot', :password_confirmation => 'rootroot'

yearlevel = Yearlevel.create! :number => 0, :description => 'demonstrate understanding of key concepts and skills
involving numbers and number sense (whole numbers up to 100, basic
concepts on addition and subtracstion, money); geometry (basic attributes
of objects); patterns and algebra (basic concept of sequence and number
pairs); measurement (time, non-standard measures of length, mass and
capacity); and statistics and probability (data collection and tables).'

yearlevel = Yearlevel.create! :number => 1, :description => 'Learn key concepts and skills involving number and number sense (whole numbers up to 100, ordinal numbers up to 10th, money up to Php100, addition and subtraction of whole numbers, basic concepts of multiplication and division); measurement (time, non-standard measure of length); and statistics and probability (pictographs).'

yearlevel = Yearlevel.create! :number => 2, :description => 'Demonstrate understanding of key concepts and skills involving numbers and number sense (whole numbers up to 1000, money up to Php1000, unit fractions, the four fundamental operations of whole numbers); geometry (2-d and 3-d figures); patterns and algebra (continuous and repeating patterns and number sentences); measurement (time, length, mass and capacity); and statistics and probability (pictographs).'

yearlevel = Yearlevel.create! :number => 3, :description => 'Learn key concepts and skills involving number and number sense (whole numbers up to 10,000; the four fundamental operations of whole numbers; comparing, ordering, adding and subtracting of similar and dissimilar fractions); geometry (parallel and perpendicular lines); patterns and algebra (continuous and repeating patterns and number sentences); measurement (time and duration, length, mass and capacity, area of square and rectangle); and statistics and probability (bar graphs).'

yearlevel = Yearlevel.create! :number => 4, :description => 'Demonstrate understanding of key concepts and skills involving numbers and number sense (whole numbers up to 100,000, multiplication and division of whole numbers, divisibility, factors and multiples, mixed and improper fractions, comparing and ordering of fractions and fractions of a set, concept of decimals, four operations of decimals); geometry (angles, squares and rectangles, symmetry); patterns and algebra (continuous and repeating patterns and number sentences); measurement (time, perimeter and area); and statistics and probability (tables and line graphs).'

yearlevel = Yearlevel.create! :number => 5, :description => 'Learn key concepts and skills involving number and number sense (whole numbers up to 10,000,000, order of operations, fractions and decimals including money, average, ratio and percentage); geometry (angles, triangles and quadrilaterals); patterns and algebra (sequence and number sentences); measurement (area of triangles, volume of cubes and cuboids).'

yearlevel = Yearlevel.create! :number => 6, :description => 'Demonstrate understanding of key concepts and skills involving numbers and number sense (fractions, ratio and percentage); geometry (circles, angles in geometric figures, solid figures and nets); patterns and algebra (sequence, expression and equation); measurement (speed, volume of solid and liquid) and statistics and probability (pie charts).'

yearlevel = Yearlevel.create! :number => 7, :description => 'Demonstrate understanding of key concepts and principles of numbers and number sense [operations on whole numbers, fractions and decimals; prime factorization, LCM and GCF; rational numbers (integers and signed fractions); percentage; ratio]; patterns and algebra (properties of real numbers, algebra expressions and equations, first-degree equations in one variable); geometry (angles and angle relations, triangles and triangle properties, parallel line properties, quadrilateral properties); measurement (area and perimeter of plane figures, area and circumference of circles, area and perimeter of composite figures, surface area and volume of prisms and cylinder, composite figures); and statistics and probability (types of graph, pie chart).'

yearlevel = Yearlevel.create! :number => 8, :description => 'Demonstrate understanding of key concepts and principles of numbers and number sense (sets and real number system, laws of exponents); patterns and algebra (linear equations in 1 and in 2 variables and inequalities in 1 variable, polynomials, factoring polynomials, rational algebraic expressions, relations); geometry (Pythagorean theorem, building blocks of geometry, triangles, angle properties and relationships, quadrilateral properties with diagonals, triangle and polygon properties, geometric construction, slope); measurement (surface area and volume of pyramids, cones, spheres and composite figures) and statistics and probability (presentation of data and measures of central tendency).'

yearlevel = Yearlevel.create! :number => 9, :description => 'Demonstrate understanding of key concepts and principles of patterns and algebra (linear equations; literal equations; systems of linear equations; variation; rational exponents; radicals; rationalization; word problems on number, age, digit, geometry, motion and mixture; quadratic function; quadratic equations and inequalities; rational equations, radical equations, arithmetic and geometric sequences and series and infinite geometric sequence); geometry (slopes, coordinate geometry, distance formula, Pythagorean theorem, special right triangles, triangle congruence, extended proof); measurement (areas of circles, polygons, surface area and volume of solids); and statistics and probability (measures of central tendency for grouped and ungrouped data).'

yearlevel = Yearlevel.create! :number => 10, :description => 'Demonstrate understanding of key concepts and principles of patterns and algebra (quadratic and rational inequalities; absolute value equations and inequalities; functions, relations and functional notation; linear and quadratic functions and models; operations on functions; piecewise and absolute value functions; polynomial functions); geometry (circle terminologies; chord and tangent properties; arcs and angles; angles formed by chords, secants and tangents; equations of circles and related.'


# topic = Topic.create! :name => 'Addition 1', :description => 'Add stuff', :yearlevel_id => 3, :id => 3


