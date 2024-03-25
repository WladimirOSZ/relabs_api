class Api::V1::ExamsController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :authenticate_user!

  def index
    render json: Exam.all, include: ['lab', 'doctor', 'patient']
  end

  def show
    render json: Exam.find(params[:id]), include: ['lab', 'doctor', 'patient', 'exam_result']
  end
end