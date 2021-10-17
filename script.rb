require 'pry-byebug'
def caesar (str,num)
  str_arr=str.bytes
  str_arr.each_with_index do |code,i|
    #binding.pry
    if str_arr[i]>=65 and str_arr[i]<=90
      str_arr[i]+=num
      str_arr[i]=
      check_wrap_cap(str_arr[i]) if str_arr[i]<65 or str_arr[i]>90
      str_arr[i]=str_arr[i].chr
    elsif str_arr[i]>=97 and str_arr[i]<=122
      str_arr[i]+=num
      str_arr[i]=
      check_wrap_smol(str_arr[i]) if str_arr[i]<97 or str_arr[i]>122
      str_arr[i]=str_arr[i].chr
    else 
      str_arr[i]=str[i]
    end
 end
  str_arr.join('')
end

def check_wrap_cap(code_cap)
  code_cap>90? 
  while(code_cap>90) do 
    code_cap=(code_cap-90)+65-1 
  end : 
  while(code_cap<65) do 
    code_cap=90-(65-code_cap)+1
  end
  #check_wrap_cap(code_cap) if code_cap>90 or code_cap<65
  code_cap
end

def check_wrap_smol(code_smol)
  code_smol>122? 
  while(code_smol>122) do 
    code_smol=(code_smol-122)+97-1 
  end : 
  while(code_smol<97) do 
    code_smol=122-(97-code_smol)+1 
  end
  #check_wrap_smol(code_smol) if code_smol>90 or code_smol<65
  code_smol
end

p caesar('A',1)
p caesar('Aaa',1)
p caesar('Hello, World!', 5)
p caesar('Mjqqt, Btwqi!', -5)
p caesar('Z',1)
p caesar('Hello, World!', 75)
p caesar("Hello, World!",-29)