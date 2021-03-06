class FaqsController < Spree::BaseController
  helper 'spree/base'

  def index
    @categories = QuestionCategory.all :include => :questions
  end

  def show
    @question = Question.find(params[:id])
  end

  def default_title
    I18n.t 'frequently_asked_questions'
  end
end
