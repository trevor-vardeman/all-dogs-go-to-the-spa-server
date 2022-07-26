class AddOnboardingAndOffboardingToGroomersTable < ActiveRecord::Migration[6.1]
  def change
    add_column :groomers, :onboarding_date, :string
    add_column :groomers, :offboarding_date, :string
  end
end
