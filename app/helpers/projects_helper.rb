module ProjectsHelper

  def current_project(project)
    @project = project
  end

  def determine_color
    d = @project.patch
    td = Date.today
    ret = ""
    puts "HERE -- #{d} -- #{td} -- #{td - 45.days}" 
    if (@project.total == @project.translated  && @project.total == @project.edited )
      ret = "success"
    elsif (d < td - 45.days) 
      ret = "danger"
      puts "SO SICK"
    elsif (d < td - 22.days) 
      ret = "warning"
    elsif (@project.total == @project.translated)
      ret = "info"
    elsif (d > td - 1.days)
      ret = "active"
    end
    ret
  end

  def ratio_string(numer)
     total = @project.total
     percent = number_with_precision(100*numer.to_f / total.to_f, :precision => 2)
     "#{numer} / #{total} (#{percent}%)"
  end

end
