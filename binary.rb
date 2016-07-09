BinaryNode=Struct.new(:left,:right,:data)
class BinaryTree

  def initialize(inputarray)
  	@inputarray=inputarray
  end

  def build_tree
  	@inputarray.each_with_index  do |number, index|
  	  @root_node=BinaryNode.new(nil,nil,number) if index==0
  	  next if index==0

  	  place_number(number,@root_node)
  	end
  end

  	def place_number(number,checkernode)

  	  if number< checkernode.data
  		if checkernode.left.nil?
  		  checkernode.left=BinaryNode.new(nil,nil,number)
  		  puts checkernode.left.data
  		  return
  		else
  			checkernode=checkernode.left
  			place_number(number,checkernode)
  			return
  		end

      elsif number>checkernode.data
  		if checkernode.right.nil?
  		  checkernode.right=BinaryNode.new(nil,nil,number)
  		  puts checkernode.right.data
  		  return
  		else
  			checkernode=checkernode.right
  			place_number(number,checkernode)
  			return
  		end
  	  else
  	  	puts "hit this else statement"
      end
    end

    # def display_tree
    # 	puts @root_node.data
    # 	display_children(@root_node)
    # end

    # def display_children(parent_node)
    # 	if !parent_node.left.nil?
    # 		puts '/  |'
    # 		print parent_node.left.data
    # 	if !parent_node.left.nil?
    # 		print "   #{parent_node.right.data}"
    # 		puts
    # 	end
    # 		display_children(parent_node.left)
    # 	end
    # end
end

tree=BinaryTree.new([8,10,3,1,6,14])
tree.build_tree
# tree.display_tree
