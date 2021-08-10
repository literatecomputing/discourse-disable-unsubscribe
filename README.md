# discourse-disable-unsubscribe

Well, this worked in development, but the monkey patch isn't getting applied in production.
And the reason for this plugin's existence exists no more, so it now exists only as an example
of how to monkey patch in such a way that works in development but not in production.

Allows a group to be added to settings such that members of that group will not have unsubscribe
links in their notification emails.

The intended purpose is to allow two-way subscriptions between a Mailman list and a
Discourse Category. The Mailman list subscribes a member with the Discourse Category email-in address. On the Discourse side, add a user with the list address as its email address. That all Just Works. The only catch is that Mailman subscribers will get an unsubscribe link that will
unsubscribe the entire Mailman list from the Discourse category. This plugin fixes that.

Add the user that posts to the Mailman list to the group specified in the site settings.
