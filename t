
[1mFrom:[0m /home/trader/code/labs/omniauth_lab-online-web-sp-000/app/controllers/sessions_controller.rb @ line 17 SessionsController#create:

     [1;34m6[0m: [32mdef[0m [1;34mcreate[0m
     [1;34m7[0m:   [1;34m# After entering a name and email value in the /auth/developer[0m
     [1;34m8[0m:   [1;34m# path and submitting the form, you will see a pretty-print of[0m
     [1;34m9[0m:   [1;34m# the authentication data object that comes from the "developer"[0m
    [1;34m10[0m:   [1;34m# strategy. In production, we'll swap this strategy for something[0m
    [1;34m11[0m:   [1;34m# like 'github' or 'facebook' or some other authentication broker[0m
    [1;34m12[0m:   pp request.env[[31m[1;31m'[0m[31momniauth.auth[1;31m'[0m[31m[0m]
    [1;34m13[0m: 
    [1;34m14[0m:   [1;34m# We're going to save the authentication information in the session[0m
    [1;34m15[0m:   [1;34m# for demonstration purposes. We want to keep this data somewhere so that,[0m
    [1;34m16[0m:   [1;34m# after redirect, we have access to the returned data[0m
 => [1;34m17[0m:   binding.pry
    [1;34m18[0m:   session[[33m:name[0m] = request.env[[31m[1;31m'[0m[31momniauth.auth[1;31m'[0m[31m[0m][[31m[1;31m'[0m[31minfo[1;31m'[0m[31m[0m][[31m[1;31m'[0m[31mname[1;31m'[0m[31m[0m]
    [1;34m19[0m:   session[[33m:omniauth_data[0m] = request.env[[31m[1;31m'[0m[31momniauth.auth[1;31m'[0m[31m[0m]
    [1;34m20[0m: 
    [1;34m21[0m:   [1;34m# Ye olde redirect[0m
    [1;34m22[0m:   redirect_to root_path
    [1;34m23[0m: [32mend[0m

