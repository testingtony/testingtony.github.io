module CVFormatter
  def qualification(source)
    first, rest = source.split(/\s/,2)

    return "<span class='when'>#{first}</span> #{rest}"
  end

  def role(source)
    whenwhere, role = source.split(/,/,2)
    dates, who = whenwhere.split(/\s/, 2)

    return "<span class='when'>#{dates}</span> <span class='where'>#{who}</span>, #{role}"
  end
end

Liquid::Template.register_filter(CVFormatter)