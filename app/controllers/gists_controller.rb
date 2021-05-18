# class GistsController < ApplicationController
#   before_action :set_test_passage
#
#   def create
#     gist = GistQuestionService.new(@test_passage.current_question).call
#     if gist.success?
#       url = gist.url_hash
#      @gist = Gist.create(user: current_user, question: @test_passage.current_question, url: url)
#       flash.now[:notice] = t('.success', gist: helpers.link_to_gist(@gist))
#     else
#       flash.now[:notice] = t('.failure')
#     end
#      render '/test_passages/show'
#   end
#
#   private
#
#   def set_test_passage
#     @test_passage = TestPassage.find(params[:test_passage_id])
#   end
# end
