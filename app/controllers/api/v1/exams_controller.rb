class Api::V1::ExamsController < ActionController::API
  def index
    # render exam with lab, doctor and patient 
    render json: Exam.all, include: ['lab', 'doctor', 'patient']
  end

  def show
    render json: Exam.find(params[:id]), include: ['lab', 'doctor', 'patient', 'exam_result']
  end

  # private
  # def authenticate_user_api!
  #   # print headers
  #   p 'headers:::'
  #   p request.headers
  #   return if current_user

  #   render json: { 'error' => 'authentication error' }, status: :unauthorized
  # end
end