-module(twoorl_eng).
-export([bundle/1]).

bundle(Tag) ->
    case Tag of
	%% layout
	login -> <<"login">>;
	register -> <<"register">>;
	logged_in_as -> <<"logged in as">>;
	settings -> <<"settings">>;
	logout -> <<"logout">>;
	get_source ->
	    <<"Get the <a href=\"http://code.google.com/p/twoorl\">"
	     "source code</a>">>;

	%% navbar
	home -> <<"home">>;
	replies -> <<"replies">>;
	me -> <<"me">>;
	everyone -> <<"everyone">>;

	%% login page
	login_cap -> <<"Login">>;
	username -> <<"username">>;
	password -> <<"password">>;
	not_member -> <<"Not a member?">>;
	login_submit -> <<"login">>;

	%% register page
	register_cap -> <<"Register">>;
	username -> <<"username">>;
	email -> <<"email">>;
	password -> <<"password">>;
	password2 -> <<"re-enter password">>;
	already_member -> <<"Already a member?">>;
	login_cap -> <<"Login">>;

	%% home page
	upto -> <<"What are you up to?">>;
	twitter_msg -> <<"Automatic posting to Twitter enabled for "
			"non-replies">>;

	%% main page
	public_timeline -> <<"Public timeline">>;

	%% users page
	{no_user, Username} ->
	    [<<"The user '">>, Username, <<" doesn't exist">>];
	{timeline_of, Username} ->
	    [Username, <<"'s timeline">>];
	following -> <<"following">>;
	followers -> <<"followers">>;
	follow -> <<"follow">>;
	unfollow -> <<"unfollow">>;

	%% friends page
	{friends_of, Userlink} ->
	    [<<"People ">>, Userlink, <<" follows">>];
	{followers_of, Userlink} ->
	    [Userlink, <<"'s followers">>];
	{no_friends, Username} ->
	    [Username, <<" isn't following anyone">>];
	{no_followers, Username} ->
	    [Username, <<" has no followers">>];


	%% settings page
	settings_cap -> <<"Settings">>;
	use_gravatar -> <<"Use <a href=\"http://gravatar.com\" "
			 "target=\"_blank\">Gravatar</a>?">>;
	profile_bg -> <<"Profile background">>;
	profile_bg_help ->
	    <<"Enter the url for your profile background image "
	     "(leave blank to use the default background):">>;
	twitter_help ->
	    <<"You may provide your Twitter account details to have "
	     "your twoorls automatically posted to Twitter.<br/><br/>"
	     "Only twoorls that don't contain replies (e.g."
	     "\"@sergey\") will be posted to Twitter.">>;
	twitter_username -> <<"Twitter username:">>;
	twitter_password -> <<"Twitter password:">>;
	twitter_auto -> <<"Automatically post my Twoorls to Twitter?">>;
	submit -> <<"submit">>;
	
	%% error messages
	{missing_field, Field} ->
	    [<<"The ">>, Field, <<" field is required">>];
	{username, Val} ->
	    [<<"The username '">>, Val, <<"' is taken">>];
	{invalid_username, Val} ->
	    [<<"The username '">>, Val,
	     <<"' is invalid. Only letters, numbers and underscore ('_') "
	      "are accepted">>];
	invalid_login ->
	    <<"Invalid username or password">>;
	{too_short, Field, Min} ->
	    [<<"The ">>, Field, <<" is too short (">>, Min,
	     <<" chars minimum)">>];
	password_mismatch ->
	    <<"The password values didn't match">>;
	twitter_unauthorized ->
	    <<"Twitter rejected the username/password combination you "
	     "provided">>;
	twitter_authorization_error ->
	    <<"Couldn't connect to Twitter. Please try again later.">>;
	{invalid_url, Field} ->
	    [<<"The ">>, Field, <<" URL must start with 'http://'">>];
	
	%% confirmation messages
	settings_updated ->
	    [<<"Your settings have been updated successfully">>]
    end.
