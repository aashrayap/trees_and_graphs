BinaryNode=Struct.new(:left,:right,:data)
class BinaryTree
  def initialize(inputarray)
  	@inputarray=inputarray
  end

  def build_tree
  	@inputarray.each_with_index |number,index| do
  	  @root_node=BinaryNode.new(nil,nil,number) if index==0
  	  next if index==0

  	  place_number(number,@root_node)
  	end

  	def place_number(number,checkernode)
  	  if number< checkernode.data
  		if checkernode.left.nil?
  		  checkernode.left=BinaryNode.new(nil,nil,number)
  		  return
  		else
  			checkernode=checkernode.left
  			find_placement(number,checkernode)
  			return
  		end
      elsif number>checkernode.data
  		if checkernode.right.nil?
  		  checkernode.right=BinaryNode.new(nil,nil,number)
  		  return
  		else
  			checkernode=checkernode.right
  			find_placement(number,checkernode)
  			return
  		end
  	  else
  	  	puts "hit this else statement"
      end
    end
end







end