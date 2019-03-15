class QuizzController < ApplicationController
  skip_before_action :authenticate_user!, only: :quizz
  def quizz
  end
end
