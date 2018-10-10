class Diary

  attr_reader :entry, :entries

  def initialize
    @entry = entry
    @entries = []
  end

  def add_entry
    fail "Diary is locked" if !unlock
    entries.push(entry)
  end

  def get_entries
    fail "Diary is locked" if !unlock
    print entries
  end

  def unlock
    true
  end

  def lock
    true    
  end

end
