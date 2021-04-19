class Cookie < ActiveRecord::Base
  belongs_to :storage, polymorphic: :true
  
  validates :storage, presence: true

  def ready?(cookie)
    CookiesWorker.perform(cookie)
  end
end
