require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beats'

class JungleBeatsTest < Minitest::Test

  def test_new_beat_asserts_empty_linked_list
    jb = JungleBeats.new
    assert_equal nil, jb.linked_list.head
  end

  def test_can_append_jungle_beats
    jb = JungleBeats.new
    assert_equal "deep doo ditt", jb.append('deep doo ditt')
    assert_equal "deep", jb.linked_list.head.data
    assert_equal "doo", jb.linked_list.head.next_node.data
    assert_equal "deep doo ditt woo hoo shu", jb.append('woo hoo shu')
    assert_equal 6, jb.count
  end

  def test_can_play_beats
    jb = JungleBeats.new
    assert_equal "ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom", jb.append("ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom")
    assert jb.play
  end

end
