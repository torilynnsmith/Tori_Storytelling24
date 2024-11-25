== dessert ==
Let's check the dessert menu. What should I order? 
-> dessert_menu

== dessert_menu ==
The menu reads...
* (cheesecake) cheesecake
    #IMAGE: images/cheesecake.jpg
    My favorite! Nom Nom. 
* (tiramisu) tiramisu
# IMAGE : images/tiramisu.jpg
    Coffee and cream, delicous.
+ nothing
    -> nothing
- For dessert, you ordered {cheesecake: cheesecake} {not cheesecake: tiramisu}//{tiramisu: tiramisu}.
-> variables