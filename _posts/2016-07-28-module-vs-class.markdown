---
layout: post
title:  "Modules vs Classes in Ruby"
author: "Rajat Singla"
date:   2016-07-28 12:41:55 +0530
categories: ruby
comments: true
---

A **Module** is a collection of methods and constants. The methods in a module may be instance methods or module methods. Instance methods appear as methods in a class when the module is included, module methods do not. Conversely, module methods may be called without creating an encapsulating object, while instance methods may not. (See `Module#module_function`.)
<!--more-->

*****

>In the descriptions that follow, the parameter sym refers to a symbol, which is either a quoted string or a Symbol (such as `:name`).

{% highlight ruby %}
Module Mod
  include Math
  CONST = 1
  def meth
    #  ...
  end
end
Mod.class              #=> Module
Mod.constants          #=> [:CONST, :PI, :E]
Mod.instance_methods   #=> [:meth]
{% endhighlight %}

      constants → array
      constants(inherited) → array

In the first form, returns an array of the names of all constants accessible from the point of call. This list includes the names of all modules and classes defined in the global scope.

source: [http://ruby-doc.org/core-2.2.0/Module.html](http://ruby-doc.org/core-2.2.0/Module.html "link to ruby doc")
