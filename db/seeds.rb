puts "🌱 Seeding spices..."

GeneralContractor.destroy_all
Project.destroy_all
BudgetItem.destroy_all
# Subcontractor.destroy_all
# Estimate.destroy_all

real = GeneralContractor.create(company_name: "Real Construction", address: Faker::Address.street_address, email: "real@construction.com", password_digest: Faker::Code.asin)
sb = GeneralContractor.create(company_name: "SB Construction", address: Faker::Address.street_address, email: "sbconstruction@construction.com", password_digest: Faker::Code.asin)

project_types = ["Medical", "School", "Restaurant", "Office", "Industrial"]
phases = ["Pre-Construction", "Construction", "Complete"]


a = Project.create(
    title: Faker::Company.name,
    location: Faker::Address.street_address,
    description: "New construction project",
    sector: project_types[1],
    phase: phases[0],
    size: Faker::Number.number(digits: 4),
    duration: rand(8..18),
    start_date: Faker::Date.between(from: '2022-05-23', to: '2022-12-25'),
    general_contractor_id: real.id
  )
b = Project.create(
    title: Faker::Company.name,
    location: Faker::Address.street_address,
    description: "New construction project",
    sector: project_types[0],
    phase: phases[2],
    size: Faker::Number.number(digits: 4),
    duration: rand(8..18),
    start_date: Faker::Date.between(from: '2022-05-23', to: '2022-12-25'),
    general_contractor_id: sb.id
  )
c = Project.create(
    title: Faker::Company.name,
    location: Faker::Address.street_address,
    description: "New construction project",
    sector: project_types[2],
    phase: phases[1],
    size: Faker::Number.number(digits: 4),
    duration: rand(8..18),
    start_date: Faker::Date.between(from: '2022-05-23', to: '2022-12-25'),
    general_contractor_id: sb.id
  )
d = Project.create(
    title: Faker::Company.name,
    location: Faker::Address.street_address,
    description: "New construction project",
    sector: project_types[3],
    phase: phases[0],
    size: Faker::Number.number(digits: 4),
    duration: rand(8..18),
    start_date: Faker::Date.between(from: '2022-05-23', to: '2022-12-25'),
    general_contractor_id: real.id
  )


# framer = Subcontractor.create(company_name: "Framer", trade: "Framing", address: Faker::Address.street_address, email: "framer@framing.com", phone_number: Faker::PhoneNumber.cell_phone)
# painter = Subcontractor.create(company_name: "Painter", trade: "Painting", address: Faker::Address.street_address, email: "painter@painting.com", phone_number: Faker::PhoneNumber.cell_phone)
# flooring = Subcontractor.create(company_name: "Resilient Floors", trade: "Flooring", address: Faker::Address.street_address, email: "resilientfloors@flooring.com", phone_number: Faker::PhoneNumber.cell_phone)
# electrician = Subcontractor.create(company_name: "Electrician", trade: "Electrical", address: Faker::Address.street_address, email: "electrician@electrical.com", phone_number: Faker::PhoneNumber.cell_phone)
# mechanical = Subcontractor.create(company_name: "Mechanical", trade: "Total Mechanical", address: Faker::Address.street_address, email: "mechanical@totalmechanical.com", phone_number: Faker::PhoneNumber.cell_phone)


5.times do 
  BudgetItem.create(
    number: 1,
    unit: "ls",
    cost_per_unit: Faker::Number.number(digits: 6),
    subcontracted: rand(0..1),
    project_id: a.id,
    description: Faker::Construction.subcontract_category
  )
end

  5.times do 
    BudgetItem.create(
      number: 1,
      unit: "ls",
      cost_per_unit: Faker::Number.number(digits: 6),
      subcontracted: rand(0..1),
      project_id: b.id,
      description: Faker::Construction.subcontract_category
    )
end
5.times do 
  BudgetItem.create(
    number: 1,
    unit: "ls",
    cost_per_unit: Faker::Number.number(digits: 6),
    subcontracted: rand(0..1),
    project_id: c.id,
    description: Faker::Construction.subcontract_category
  )
end

5.times do 
  BudgetItem.create(
    number: 1,
    unit: "ls",
    cost_per_unit: Faker::Number.number(digits: 6),
    subcontracted: rand(0..1),
    project_id: d.id,
    description: Faker::Construction.subcontract_category
  )
end

puts "✅ Done seeding!"
