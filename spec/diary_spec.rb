require 'diary'

describe 'Diary' do

#  Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries`
#  should throw an error.

  it "should throw an error when add_entry , get_entries when it is locked" do
    diary = Diary.new
    allow(diary).to receive(:unlock).and_return false
    expect { diary.add_entry }.to raise_error "Diary is locked"
  end

  it "should throw an error when add_entry , get_entries when it is locked" do
    diary = Diary.new
    allow(diary).to receive(:unlock).and_return false
    expect { diary.get_entries }.to raise_error "Diary is locked"

  end

# When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.
  it "should unlock the diary when unlock is called" do
    dairy = Diary.new
    expect { dairy.unlock }.to_not raise_error
  end

   it "should add the entry to the array" do
     diary = Diary.new
     allow(diary).to receive(:unlock).and_return true
     expect { diary.add_entry }.to_not raise_error
   end

   it "locks the diary" do
     diary = Diary.new
     expect { diary.lock }.to_not raise_error
   end

end
