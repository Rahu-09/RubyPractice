# Question:-Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:
# * url = "http://github.com/carbonfive/raygun" -> domain name = "github"
# * url = "http://www.zombie-bites.com"         -> domain name = "zombie-bites"
# * url = "https://www.cnet.com"                -> domain name = cnet"
# Answer:-
def domain_name(url)
  str=""
  if url.include?"www."
    l=url.index("www.")+4
    (l...url.length).each do |i|
      if url[i]=="."
        break
      end
      str+=url[i].to_s
    end
    return str
  end
  if url.include?"://"
    l=url.index("://")+3
    (l...url.length).each do |i|
      if url[i]=="."
        break
      end
      str+=url[i].to_s
    end
    return str
  end
  if url.include?"."
    l=url.index(".")
    (0...l).each do |i|
      if url[i]=="."
        break
      end
      str+=url[i].to_s
    end
    return str
  end
end
puts domain_name("www.xakep.ru")
