class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:bootcamper, :leader, :client]

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :bootcamper
  end

  has_many :projects
  has_many :applies
  has_one :company
  has_many :missions, through: :applies

  has_attachment :photo

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :bio, presence: true, length: {minimum: 20}

end
