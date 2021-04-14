module GistsHelper
  GIST_API_ENDPOINT = 'https://gist.github.com/'

  def link_to_gist(gist)
    url = GIST_API_ENDPOINT + gist.url + '.git'
    link_to(gist.url, url, target: '_blank')
  end
end
