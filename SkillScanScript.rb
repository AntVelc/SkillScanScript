D00= "Choose a number between 1 and 5 that best describes your knowledge, skills or experience against the apprenticeship programme elements."
D01= "Duty 1. Can you take and interpret given software development requirements to estimate effort to deliver the work product to enable accurate costs to be established?"
D02= "Duty 2. Can you break software development activities down into logical units of work to enable sequencing and ensure the best possible structuring of activities to deliver a high quality product right first time?"
D03= "Duty 3. Can you report progress accurately throughout the development life-cycle stages to ensure adequate audit trails of key worksteps such that the organisation can demonstrate how the product has been created for quality and commercial purposes?"
D04= "Duty 4. Can you identify and report any impediments to software development activities and propose practical solutions?"
D05= "Duty 5. Can you convert customer requirements into technical requirements, both functional and non-functional to ensure that customers' expectations are accurately reflected in the software products developed?"
D06= "Duty 6. Can you identify and select the most appropriate technical solution, taking into consideration coding best practice and appropriate quality standards?"
D07= "Duty 7. Can you communicate software development solutions to a range of internal or external stakeholders to ensure clear understanding of requirements and how they have been met or adjusted?"
D08= "Duty 8. Can you consider security implications of proposed design to ensure that security considerations are built in from inception and throughout the development process?"
D09= "Duty 9. Can you write logical and maintainable software solutions to meet the design and organisational coding standards (Software Development Lifecycle -Implementation and Build phase)?"
D10= "Duty 10. Can you apply security best practice to the software solution throughout the software development life-cycle?"
D11= "Duty 11. Can you create and maintain appropriate project documentation to explain the development process and resources used?"
D12= "Duty 12. Can you apply appropriate recovery techniques to ensure the software solution being developed is not lost (Software Development Lifecycle -Implementation and Build phase)?"
D13= "Duty 13. Can you implement appropriate change control to ensure that software development changes may be tracked and quality risks managed?"
D14= "Duty 14. Can you undertake unit testing of solutions, with appropriate levels of test code coverage, to identify and, where necessary, resolve issues (Software Development Lifecycle -Implementation and Build phase)?"
D15= "Duty 15. Can you perfom testing of the software solution to ensure a high quality output (Software Development Lifecycle -Test phase)?"
D16= "Duty 16. Can you deliver a suitably documented deployable solution to the customer for their use (Software Development Lifecycle -Deploy phase)?"
D17= "Duty 17. Can you support delivery of one or more software deployment phases, such as trials and final release, to ensure that software developer outcomes are deployed correctly?"
D18= "Duty 18. Can you provide support during software trials and after final release to ensure that customers understand and can correctly apply the product, and risks are mitigated?"
D19= "Duty 19. Can you respond appropriately to given Service Level Agreements (SLAs) to ensure that time and resources invested in software development activity are allocated appropriately to deliver good customer service?"
D20= "Duty 20. Can you apply suitable 'bug fix', appropriate to the severity and priority of the software development issue identified?"
D21= "Duty 21. Do you effectively practice continuous self learning to keep up to date with technological developments to enhance relevant skills and take responsibility for own professional development?"

#Duty text into strings

duty_array = [D01,D02,D03,D04,D05,D06,D07,D08,D09,D10,D11,D12,D13,D14,D15,D16,D17,D18,D19,D20,D21]

#Duty put in arrays

duty_answered = Hash.new #Create hash with question-answer pair

puts D00

duty_nr = 0

while duty_nr <= 20

  puts duty_array[duty_nr]
  skill_nr = gets.to_i #Get a value for each question
  
  if skill_nr > 0 && skill_nr <= 3
    duty_answered[duty_array[duty_nr]] = skill_nr #Adds a value to the hash for the question as key
    duty_nr += 1  #Continue while function
  elsif skill_nr > 3 && skill_nr <=5
    puts "Please tell us how and when these skills were obtained"
	skill_comment = gets.chomp
	skill_nr_com = "#{skill_nr}, #{skill_comment}" #Combines value and comment to add as single value to the hash question as key
	duty_answered[duty_array[duty_nr]] = skill_nr_com #Add value to hash for question asked with comment since skill is 4 or 5
	duty_nr += 1 #Continue while function
  else 
    puts "Please answer between 1 and 5" #Incorrect answer will reload the while for the question
  end
  
end

duty_answered.each do |duty, duty_answer|
  puts "#{duty}" + "\n" + "#{duty_answer}" #Puts the final hash with the skill question and skill number, with comment if necessary
end