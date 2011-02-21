class Collection
  require 'Map'
  include MongoMapper::Document         
  attr_reader :fields, :samples
  
  key :name, String
  key :database_id, :typecase => 'ObjectID'
  
  belongs_to :database
  
  def fields
    
  end

  def row_count
     _collection.count()
  end
 
  def fields
    @fields = _collection.find_one.keys
  end
    
  def samples
    @samples  = _collection.find({},{:limit => 5}).to_a
  end
 
  def count_by(field)
    mapper = Map.new(_collection)

    return mapper.count_by(field).find()
  end
  
  private
    def _collection
      self.database._db.collection(self.name)
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
