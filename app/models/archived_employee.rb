class ArchivedEmployee < ActiveRecord::Base
  belongs_to  :employee_category
  belongs_to  :employee_position
  belongs_to  :employee_grade
  belongs_to  :employee_department
  belongs_to  :nationality, :class_name => 'Country'
  has_many    :archived_employee_bank_details
  has_many    :archived_employee_additional_details

  def image_file=(input_data)
    return if input_data.blank?
    self.photo_filename     = input_data.original_filename
    self.photo_content_type = input_data.content_type.chomp
    self.photo_data         = input_data.read
  end

   def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

end

# == Schema Information
#
# Table name: archived_employees
#
#  id                     :integer(4)      not null, primary key
#  employee_category_id   :integer(4)
#  employee_number        :string(255)
#  joining_date           :date
#  first_name             :string(255)
#  middle_name            :string(255)
#  last_name              :string(255)
#  gender                 :boolean(1)
#  job_title              :string(255)
#  employee_position_id   :integer(4)
#  employee_department_id :integer(4)
#  reporting_manager_id   :integer(4)
#  employee_grade_id      :integer(4)
#  qualification          :string(255)
#  experience_detail      :text
#  experience_year        :integer(4)
#  experience_month       :integer(4)
#  status                 :boolean(1)
#  status_description     :string(255)
#  date_of_birth          :date
#  marital_status         :string(255)
#  children_count         :integer(4)
#  father_name            :string(255)
#  mother_name            :string(255)
#  husband_name           :string(255)
#  blood_group            :string(255)
#  nationality_id         :integer(4)
#  home_address_line1     :string(255)
#  home_address_line2     :string(255)
#  home_city              :string(255)
#  home_state             :string(255)
#  home_country_id        :integer(4)
#  home_pin_code          :string(255)
#  office_address_line1   :string(255)
#  office_address_line2   :string(255)
#  office_city            :string(255)
#  office_state           :string(255)
#  office_country_id      :integer(4)
#  office_pin_code        :string(255)
#  office_phone1          :string(255)
#  office_phone2          :string(255)
#  mobile_phone           :string(255)
#  home_phone             :string(255)
#  email                  :string(255)
#  fax                    :string(255)
#  photo_filename         :string(255)
#  photo_content_type     :string(255)
#  photo_data             :binary(16777215
#  created_at             :datetime
#  updated_at             :datetime
#

