Patient.create(name: 'João Souza', cpf: '12345678901', email: 'user@rebase.com')
Patient.create(name: 'Maria Oliveira', cpf: '12345678902', email: 'seconduser@rebase.com')

User.create(email: 'user@rebase.com', password: 'password', patient_id: 1)
User.create(email: 'seconduser@rebase.com', password: 'password', patient_id: 2)

Doctor.create(name: 'Victor Henrique', crm: '12345678901')
Doctor.create(name: 'Deivid dos Santos', crm: '12345678902')
Doctor.create(name: 'Lucas Barreto', crm: '12345678903')
Doctor.create(name: 'Yasmini Chiofalo', crm: '12345678904')

Lab.create(name: 'Lab 1')
Lab.create(name: 'Lab 2')

TestType.create(name: 'Blood', reference: '60-100')
TestType.create(name: 'HDL', reference: '75-105')
TestType.create(name: 'LDL', reference: '60-100')
TestType.create(name: 'Triglycerides', reference: '150-200')
TestType.create(name: 'Glucose', reference: '70-100')
TestType.create(name: 'Urea', reference: '20-40')

1..10.times do |i|
  Exam.create(patient_id: 1, doctor_id: Random.rand(1..4), lab_id: 1, date: "2023-10-10")
  ExamResult.create(exam_id: i, test_type_id: Random.rand(1..6),
                    doctor_id: Random.rand(1..4), result: Random.rand(1..200))
  ExamResult.create(exam_id: i, test_type_id: Random.rand(1..6),
                    doctor_id: Random.rand(1..4), result: Random.rand(1..200))
  ExamResult.create(exam_id: i, test_type_id: Random.rand(1..6),
                    doctor_id: Random.rand(1..4), result: Random.rand(1..200))
  ExamResult.create(exam_id: i, test_type_id: Random.rand(1..6),
                    doctor_id: Random.rand(1..4), result: Random.rand(1..200))
end

1..10.times do |i|
  Exam.create(patient_id: 2, doctor_id: Random.rand(1..4), lab_id: 2, date: "2022-03-01")
  ExamResult.create(exam_id: i, test_type_id: Random.rand(1..6),
                    doctor_id: Random.rand(1..4), result: Random.rand(1..200))
  ExamResult.create(exam_id: i, test_type_id: Random.rand(1..6),
                    doctor_id: Random.rand(1..4), result: Random.rand(1..200))
  ExamResult.create(exam_id: i, test_type_id: Random.rand(1..6),
                    doctor_id: Random.rand(1..4), result: Random.rand(1..200))
  ExamResult.create(exam_id: i, test_type_id: Random.rand(1..6),
                    doctor_id: Random.rand(1..4), result: Random.rand(1..200))
end

p 'finished seeding!'