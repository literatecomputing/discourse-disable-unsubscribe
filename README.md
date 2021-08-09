# discourse-disable-unsubscribe

Allows a group to be added to settings such that members of that group will not have unsubscribe
links in their notification emails.

The intended purpose is to allow two-way subscriptions between a Mailman list and a
Discourse Category. The Mailman list subscribes a member with the Discourse Category email-in address. On the Discourse side, add a user with the list address as its email address. That all Just Works. The only catch is that Mailman subscribers will get an unsubscribe link that will
unsubscribe the entire Mailman list from the Discourse category. This plugin fixes that.

Add the user that posts to the Mailman list to the group specified in the site settings.
