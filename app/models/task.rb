class Task < ActiveRecord::Base
belongs_to :user
#belongs_to :user
has_one :todo

def validation
errors.add :due, 'is not a valid date' if Chronic.parse(due.to_s).nil?
end


#validates_presence_of :name

def due_date
due.to_s
end

def due_date=(str)
self.due = Chronic.parse(str).to_date.to_s
rescue
@invalid_date = true
end

def validate
errors.add(:due_date, 'is not a valid date') if Chronic.parse(due.to_s).nil?
end

#def validation
#errors.add(:due_date, 'is not a valid date') if Chronic.parse(due.to_s).nil?
#end

end
