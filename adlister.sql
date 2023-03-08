use ymir_joe;

# For a given ad, what is the email address of the user that created it?
select email from adlister_users as users
inner join ads a on users.user_id = a.user_id
where ad_id = 2;

# For a given ad, what category, or categories, does it belong to?
select category from categories c
inner join add_to_categories ac on c.category_id = ac.category_id
inner join ads a on ac.ad_id = a.ad_id
where a.ad_id = 1;

# For a given category, show all the ads that are in that category.
select title from ads a
inner join add_to_categories ac on a.ad_id = ac.ad_id
inner join categories c on ac.category_id = c.category_id
where c.category = 'Animals';

# For a given user, show all the ads they have posted.
select distinct title from ads a
inner join add_to_categories ac on a.ad_id = ac.ad_id
inner join adlister_users au on a.user_id = au.user_id
where au.user_id = 1