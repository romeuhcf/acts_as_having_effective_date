module ActsAsHavingEffectiveDate
  def self.included(base)
    base.extend(ClassMethods)
  end


  module ClassMethods
    def acts_as_having_effective_date(options = {})
      effective_date_field = (options[:column] || :created_at).to_s
      # your code will go here
      self.class_eval do
        scope :as_of, lambda{|_date| where(["#{self.table_name}.#{effective_date_field} <= ?" , _date ] ).order( "#{self.table_name}.#{effective_date_field} DESC" ).limit(1) }
      end
    end
  end

end

ActiveRecord::Base.class_eval { include ActsAsHavingEffectiveDate }
