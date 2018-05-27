class Admin::BaseController < ActionController::Base
  layout "admin/layouts/admin"
  include SessionsHelper
end
