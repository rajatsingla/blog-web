---
layout: post
title:  "Automated testing of google autocomplete using cucumber and capybara"
author: "Rajat Singla"
date:   2017-03-14 12:41:55 +0530
categories: ruby
tags:
- ruby
- capybara
- google
- cucumber
- automation
comments: true
---

Ruby script for automated testing of google autocomplete in HTML form using cucumber and capybara.      
Add the following script for google autocomplete.
<!--more-->

***
>google_autocomplete.feature

{% highlight ruby %}
Scenario: S1
    And I fill google autocomplete
{% endhighlight %}

>google_autocomplete.rb

{% highlight ruby %}
module name
  def fill_google_autocomplete(id)
    sleep 1
    ele=find(id)
    if ele
      ele.set "delhi"
      sleep 1
      ele.native.send_keys(:keydown)
      ele.native.send_keys(:enter)
    end
    sleep 1
  end
end

World(name)

Then /^I fill google autocomplete$/ do
    fill_google_autocomplete("#location-div")
end
{% endhighlight %}
