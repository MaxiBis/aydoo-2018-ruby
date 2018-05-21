class Chopper


  def chop(n, array)
    i = 0
    devuelto = -1
    array.each do |e|

    	if(e == n)
    		devuelto = i
    	end
    	i+=1
    end	
    return devuelto
  end

  H={1=>'uno',2=>'dos',3=>'tres'}

  def sum (array)
  	total = 0
    array.each do |e|
    	total+= e
    	#if(e == n)
    	#	devuelto = i
    	#end
    	#i+=1
    end	  	
  	return H[total]
  end

end
