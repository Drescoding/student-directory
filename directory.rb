def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_if(names)
  names.each do |student|
      if student[:name][0] == "a"
        puts "#{student[:name]}"
      end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

#call the methods to make things happen
students = input_students
print_header
print_if(students)
print_footer(students)
