module BuildEmailHelperExtension
  def build_email(email, opts)
    # if email-user is in the group, set add_unsubscribe_link false
    user = User.find_by_email(email)
    remove = user.groups.pluck(:name).include? SiteSetting.no_unsubscribe_group
    opts[:add_unsubscribe_link] = false if remove
    super(email, opts)
  end
end
