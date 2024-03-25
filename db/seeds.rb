
User.create(email: 'user@rebase.com', password: 'password')
User.create(email: 'seconduser@rebase.com', password: 'password')

Patient.create(name: 'João Souza', cpf: '12345678901', email: 'user@rebase.com', user_id: 1)
Patient.create(name: 'Maria Oliveira', cpf: '12345678902', email: 'seconduser@rebase.com', user_id: 2)

Doctor.create(name: 'Doctor 1', crm: '12345678901')
Doctor.create(name: 'Doctor 2', crm: '12345678902')

Lab.create(name: 'Lab 1')
Lab.create(name: 'Lab 2')

TestType.create(name: 'Blood', reference: '60-100')
TestType.create(name: 'HDL', reference: '75-105')
TestType.create(name: 'LDL', reference: '60-100')
TestType.create(name: 'Triglycerides', reference: '150-200')

Exam.create(patient_id: 1, doctor_id: 1, lab_id: 1, date: '2020-01-01')
Exam.create(patient_id: 2, doctor_id: 2, lab_id: 2, date: '2020-01-02')

ExamResult.create(exam_id: 1, test_type_id: 1, doctor_id: 1, result: '56')
ExamResult.create(exam_id: 1, test_type_id: 2, doctor_id: 1, result: '100')
ExamResult.create(exam_id: 1, test_type_id: 3, doctor_id: 2, result: '98')
ExamResult.create(exam_id: 1, test_type_id: 4, doctor_id: 2, result: '175')

ExamResult.create(exam_id: 2, test_type_id: 1, doctor_id: 1, result: '50')
ExamResult.create(exam_id: 2, test_type_id: 2, doctor_id: 1, result: '125')
ExamResult.create(exam_id: 2, test_type_id: 3, doctor_id: 2, result: '60')
ExamResult.create(exam_id: 2, test_type_id: 4, doctor_id: 2, result: '70')

p 'finished seeding!'