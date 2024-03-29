class GistQuestionService
  ResultObject = Struct.new(:success?, :html_url)

  def initialize(question, client: http_client)
    @client = client
    @question = question
    @test = @question.test
  end

  def call
    response = @client.create_gist(gist_params)
    ResultObject.new(response.html_url.present?, response.html_url)
  end

  private

  def http_client
    Octokit::Client.new(access_token: ENV['TOKEN_GITHUB_GIST'])
  end

  def gist_content
    content = [@question.body]
    content += @question.answers.pluck(:body)
    content.join("\n")
  end

  def gist_params
    {
      'description': I18n.t('sevices.gist.description',title: @test.title),
      'public': true,
      'files': {
        'test-guru-question.txt': {
          content: gist_content
        }
      }
    }
  end
end
