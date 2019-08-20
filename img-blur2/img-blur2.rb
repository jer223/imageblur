class Image

  def initialize(image)
    @image = image
    @row_length = image.length
    @col_length = image[0].length
  end
  
  def output_image
    @image.each do |i| 
      puts "#{i.join(",")}\n"
    end   
  end

  def find_ones
    coords = []
      @image.each_with_index do |row, y|             
        row.each_with_index do |element, x| 
            coords << [y, x] if element == 1   
        end         
      end    
      return coords
  end

  def change
    array_coords = find_ones

    array_coords.each do |y, x|
      blur(y, x)
    end   
  end  
end  

def blur(y, x)
  @image[y -1][x] = 1 unless y == 0
  @image[y +1][x] = 1 unless y >= @row_length-1
  @image[y][x -1] = 1 unless x == 0
  @image[y][x +1] = 1 unless x >= @col_length-1
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [1, 0, 0, 0]
])

image.change
#p image.find_ones
image.output_image