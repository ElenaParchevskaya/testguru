module TestPassagesHelper
  def result_test(test_passage)
    if test_passage.success?
      content_tag(:span, "Ура, тест пройден. У тебя #{test_passage.result}% правильных ответов", class: 'success')
    else
      content_tag(:span, "К сожалению, тест не пройдет. У тебя #{test_passage.result}% правильных ответов.", class: 'fail')
    end
  end
 end
