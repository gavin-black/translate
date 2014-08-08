module ProjectsHelper

  def ratio_string(numer, total)
     percent = number_with_precision(100*numer.to_f / total.to_f, :precision => 2)
     "#{numer} / #{total} (#{percent}%)"
  end

end
