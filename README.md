##Description
This is a chef recipe to install [biodoop-seal](http://biodoop-seal.sourceforge.net/index.html)

#Requirements
* [Hadoop-BAM](http://github.com/guillermo-carrasco/hadoop-BAM-cookbook) (which also installs
[hadoop](https://github.com/opscode-cookbooks/hadoop), [pydoop](https://github.com/opscode-cookbooks/pydoop-cookbook)
and [java](https://github.com/opscode-cookbooks)

_You can also prvide this requirements by your own and remove the dependencies
from the recipe. Keep in mind that you need Java SDK and ant_

##Recipes
* **default** - Install latest code
* **install_deps** - Install biodoop-Seal dependencies

##Attributes
* default['seal-latest-code']: biodoop-seal githup repository
* default['tmp']: Temporal directory for the installation
* default['install\_dir']: Installation directory


##Usage
Depending on how you have Chef installed, you'll use this recipe in one way or another. Here I describe
how to run this recipe with chef-solo.

###Prepare the environment
First, create a folder ```cookbooks``` where you'll put all your cookbooks. Clone this repository and its
requirements there. You can clone my [cookbooks](http://github.com/guillermo-carrasco/cookbooks.git) repository
with:

		git clone --recursive http://github.com/guillermo-carrasco/cookbooks.git

to pull all the cookbooks at once.

###Custom your installation
Edit the attributes of the recipe you're going to use at your convinience.

###Run chef
If you haven't done it already, create these two files:

solo.rb
```
file_cache_path "/tmp/chef-solo"
cookbook_path "<path to your cookbook folder>" (i.e /home/guillermo/cookbooks)
```
node.json
```
{
    "run_list": ["recipe[seal-cookbook]"]
}
```

And run chef-solo
```
sudo chef-solo -c solo.rb -j node.json
```

##Tested on
Ubuntu 12.04

Shoud work on most linux distributions.

##Collaborations
Please feel free of pull-request, open issues, and comment anything you want :-)
