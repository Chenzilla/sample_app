require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: 'Example User', email: 'user@example.com')
  end

  test 'is valid initially' do
    assert @user.valid?
  end

  test 'name must be present' do 
    @user.name = ''
    assert_not @user.valid?
  end

  test 'email must be present' do
    @user.email = ''
    assert_not @user.valid?
  end

  test 'name is not too long' do
    @user.name = 'a'*51
    assert_not @user.valid?
  end

  test 'email is not too long' do
    @user.email = 'a'*244 + '@example.com'
    assert_not @user.valid?
  end
end
