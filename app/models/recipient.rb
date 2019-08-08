class Recipient < ApplicationRecord
  belongs_to :recipient, class_name: "User"
  belongs_to :received_message, class_name: "PrivateMessage"
end
