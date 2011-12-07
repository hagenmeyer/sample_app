module ApplicationHelper
  def logo
    @logo = image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
  # Return a title on a per-page basis.
  def title #title hier gleich aufruf einer funktion
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil? # wenn instanzvariable @title keinen inhalt hat wird base titel wiedergegeben
      return base_title
    else
      return "#{base_title} | #{@title}"
      #alternativ: base_title + " | " + @title
    end
  end
end
