module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ["public", "private", "archived"]

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  #this method is used to check the archive status for articles and comments
  def archived?
    status == "archived"
  end

  class_methods do

    #these below method are additional i added to get the count of the status for admin panel
    def public_count
      where(status: "public").count
    end

    def private_count
      where(status: "private").count
    end

    def archived_count
      where(status: "archived").count
    end
  end
end
