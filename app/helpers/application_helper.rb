module ApplicationHelper

  def page_id
    # controller namespace and action, ex:
    # Admin::UsersController => admin_users
    controller.controller_path.split('/').join('_')
  end

  def page_classes
    # controller name, current action, and request varient, ex:
    # (for Admin::UsersController#show w/ iphone variant) => "users show iphone"
    [controller.controller_name, controller.action_name, request.variant].flatten.join(" ").strip
  end

end
