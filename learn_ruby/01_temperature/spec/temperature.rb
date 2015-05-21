def ftoc(t_far)
  t_cel = (t_far - 32)/1.8
  return t_cel.round(2)
end

def ctof(t_cel)
  t_far = t_cel*1.8 + 32
  return t_far.round(2)
end
