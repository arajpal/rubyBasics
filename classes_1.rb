$global_variable = 10
class Best
  def print_global
    puts "global variable in best is #$global_variable"
  end
end
class Peers
  def print_global
    puts "global variable in peers is #{$global_variable}"
  end
end
bestobj = Best.new
bestobj.print_global
peersobj = Peers.new
peersobj.print_global