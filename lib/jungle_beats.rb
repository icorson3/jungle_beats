require './lib/linked_list'
class JungleBeats
attr_accessor :linked_list
  def initialize
    @linked_list = LinkedList.new
  end

  def append(data)
    split_beats = data.split
    split_beats.each do |beat|
      linked_list.append(beat)
    end
    linked_list.to_string
  end

  def count
    linked_list.count
  end

  def play
    beats = linked_list.to_string
    `say -r 500 -v Boing #{beats}`
  end
end

# > jb.append("deep doo ditt")
# => "deep doo ditt"
# > jb.list.head.data
# => "deep"
# > jb.list.head.next_node.data
# => "doo"
# > jb.append("woo hoo shu")
# => "woo hoo shu"
# > jb.count
# 6
