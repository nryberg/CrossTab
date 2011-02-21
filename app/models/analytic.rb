class Analytic
  include MongoMapper::Document         
  require 'Map'
  key :name, String
  key :database_name, String
  key :collection_name, String
 
  key :column, String
  key :row, String
  key :value, String
  key :action, String
  
  validates_presence_of :name

  def execute
    if not self.row.nil? and not self.column.nil? then
      _collection.group_by_count(self.row, self.column)
    elsif not self.row.nil? then
      _collection.count_by(self.row)
    end
  end
  
  private
  
  def _database
  end
 
  def _collection
    _db = Database.where(:name => self.database_name).first
    _collection = _db.collections.find_by_name(self.collection_name)
  end
  
  
  
# Validations :::::::::::::::::::::::::::::::::::::::::::::::::::::
# validates_presence_of :attribute

# Assocations :::::::::::::::::::::::::::::::::::::::::::::::::::::
# belongs_to :model
# many :model
# one :model

# Callbacks ::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
# before_create :your_model_method
# after_create :your_model_method
# before_update :your_model_method 

# Attribute options extras ::::::::::::::::::::::::::::::::::::::::
# attr_accessible :first_name, :last_name, :email

# Validations
# key :name, :required =>  true      

# Defaults
# key :done, :default => false

# Typecast
# key :user_ids, Array, :typecast => 'ObjectId'
  
   
end