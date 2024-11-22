var storyContent = {"inkVersion":21,"root":[["#","^author: Tori Smith","/#","#","^theme: dark","/#","\n","#","^IMAGE: images/cat.png","/#","^This text is in the upper, left-hand corner! ","#","^CLASS: showTop","/#","\n","ev","str","^START","/str","/ev",{"*":"0.c-0","flg":20},{"c-0":["^ ",{"->":"start"},"\n",{"->":"0.g-0"},{"#f":5}],"g-0":["done",{"#f":5}]}],"done",{"start":[["^I desire pizza. What pizza do I want? ","#","^CLASS: innerThought","/#","\n",["ev",{"^->":"start.0.5.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Pepperoni",{"->":"$r","var":true},null]}],["ev",{"^->":"start.0.6.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":18},{"s":["^Cheese",{"->":"$r","var":true},null]}],["ev",{"^->":"start.0.7.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":18},{"s":["^Pineapple",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"start.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.5.s"},[{"#n":"$r2"}],"\n","#","^IMAGE: images/pepperoni.png","/#",{"->":".^.^.g-0"},{"#f":5}],"c-1":["ev",{"^->":"start.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.6.s"},[{"#n":"$r2"}],"\n","#","^IMAGE: images/cheese.jpg","/#",{"->":".^.^.g-0"},{"#f":5}],"c-2":["ev",{"^->":"start.0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.7.s"},[{"#n":"$r2"}],"\n","#","^IMAGE: images/pineapple.jpg","/#",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^Yummy. I ate it.","\n","ev","str","^Order a drink","/str","/ev",{"*":".^.c-3","flg":20},{"c-3":["^ ",{"->":"drinks"},"\n",{"#f":5}],"#f":5}]}],{"#f":1}],"drinks":[["#","^CLEAR","/#","^I'm thirsty too. What should I drink?","\n",["ev",{"^->":"drinks.0.5.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^Sprite",{"->":"$r","var":true},null]}],["ev",{"^->":"drinks.0.6.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":18},{"s":["^Lemonade",{"->":"$r","var":true},null]}],["ev",{"^->":"drinks.0.7.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":18},{"s":["^Ice Tea",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"drinks.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.5.s"},[{"#n":"$r2"}],"\n","^Bubbly...","\n",{"->":".^.^.g-0"},{"#f":5}],"c-1":["ev",{"^->":"drinks.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.6.s"},[{"#n":"$r2"}],"\n","^Tart...","\n",{"->":".^.^.g-0"},{"#f":5}],"c-2":["ev",{"^->":"drinks.0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.7.s"},[{"#n":"$r2"}],"\n","^Refreshing..","\n",["ev","str","^Add lemons","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Add sugar","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ Lemons are the golden beautiful elixer of the earth. ","\n","^so sour!","\n",{"->":"drinks.0.g-0"},{"#f":5}],"c-1":["^ Ah sugar. The creme de la creme of seasonings. ","\n","^so sweet!","\n",{"->":"drinks.0.g-0"},{"#f":5}]}],{"#f":5}],"g-0":["^I'm still hungry.","\n",{"->":"dessert"},{"#f":5}]}],{"#f":1}],"nothing":["^That's no fun. Order something.","\n",{"->":"dessert_menu"},{"#f":1}],"variables":[["ev",0,"/ev",{"temp=":"pizzaAmount"},"^What's the name on the order?","\n","ev","str","^Bob","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Gertrude","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Carly","/str","/ev",{"*":".^.c-2","flg":20},{"c-0":["\n","ev","str","^Bob","/str","/ev",{"VAR=":"myName","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-1":["\n","ev","str","^Gertrude","/str","/ev",{"VAR=":"myName","re":true},{"->":".^.^.g-0"},{"#f":5}],"c-2":["\n","ev","str","^Carly","/str","/ev",{"VAR=":"myName","re":true},{"->":".^.^.g-0"},{"#f":5}],"g-0":["^Thank you ","ev",{"VAR?":"myName"},"out","/ev","^.","\n","^How many pizza's would you like to order?","\n","ev","str","^5","/str","/ev",{"*":".^.c-3","flg":20},"ev","str","^10","/str","/ev",{"*":".^.c-4","flg":20},{"c-3":["\n","ev",5,"/ev",{"temp=":"pizzaAmount","re":true},{"->":".^.^.^.g-1"},{"#f":5}],"c-4":["\n","ev",10,"/ev",{"temp=":"pizzaAmount","re":true},{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["ev",{"VAR?":"pizzaAmount"},"out","/ev","^? Got it.","\n","^Have one extra, on the house.","\n","ev",{"VAR?":"pizzaAmount"},1,"+",{"temp=":"pizzaAmount","re":true},"/ev","^You know have ","ev",{"VAR?":"pizzaAmount"},"out","/ev","^ pizzas.","\n","ev",{"VAR?":"pizzaAmount"},5,"<=","/ev",[{"->":".^.b","c":true},{"b":["^ Having a small gathering?",{"->":".^.^.^.27"},null]}],"nop","\n","ev",{"VAR?":"pizzaAmount"},5,">","/ev",[{"->":".^.b","c":true},{"b":["^ Throwing a big party, huh? ",{"->":"lots_of_pizzas"},{"->":".^.^.^.35"},null]}],"nop","\n",{"#f":5}]}],{"#f":1}],"lots_of_pizzas":["^And you didn't invite me?","\n",{"->":"memory"},{"#f":1}],"memory":[["^I remember what you ordered for dessert. Would you like to know?","\n","ev","str","^Tell me!","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ You chose ","ev",{"CNT?":"dessert_menu.0.c-0"},"/ev",[{"->":".^.b","c":true},{"b":["^ cheesecake",{"->":".^.^.^.5"},null]}],"nop","^ ","ev",{"CNT?":"dessert_menu.0.c-1"},"/ev",[{"->":".^.b","c":true},{"b":["^ tiramisu",{"->":".^.^.^.11"},null]}],"nop","^.","\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^I also know if you ordered \"nothing\".","\n","ev","str","^I DID order nothing!","/str",{"CNT?":"nothing"},"/ev",{"*":".^.c-1","flg":21},"ev","str","^I never ordered nothing","/str",{"CNT?":"nothing"},"!","/ev",{"*":".^.c-2","flg":21},{"c-1":["^ You ordered nothing ","ev",{"CNT?":"nothing"},"out","/ev","^ time(s). ","\n",{"->":".^.^.^.g-1"},{"#f":5}],"c-2":["^ Correct, your visit to the nothing knot was ","ev",{"CNT?":"nothing"},"out","/ev","^.","\n",{"->":".^.^.^.g-1"},{"#f":5}],"#f":5}],"g-1":["^thanks for ordering.","\n",{"->":"end"},{"#f":5}]}],{"#f":1}],"end":[["^gooodbye","\n","ev","str","^RESTART","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^END","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ ","\n","#","^RESTART","/#","done",{"#f":5}],"c-1":["^ Thank you for playing.","\n","end",{"#f":5}]}],{"#f":1}],"dessert":["^Let's check the dessert menu. What should I order?","\n",{"->":"dessert_menu"},{"#f":1}],"dessert_menu":[["^The menu reads...","\n",["ev",{"^->":"dessert_menu.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^cheesecake",{"->":"$r","var":true},null]}],["ev",{"^->":"dessert_menu.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":18},{"s":["^tiramisu",{"->":"$r","var":true},null]}],["ev",{"^->":"dessert_menu.0.4.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-2","flg":2},{"s":["^nothing",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"dessert_menu.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"\n","^My favorite! Nom Nom.","\n",{"->":".^.^.g-0"},{"#f":5}],"c-1":["ev",{"^->":"dessert_menu.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"\n","^Coffee and cream, delicous.","\n",{"->":".^.^.g-0"},{"#f":5}],"c-2":["ev",{"^->":"dessert_menu.0.c-2.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.4.s"},[{"#n":"$r2"}],"\n",{"->":"nothing"},{"->":".^.^.g-0"},{"#f":5}],"g-0":["^For dessert, you ordered ","ev",{"CNT?":".^.^.c-0"},"/ev",[{"->":".^.b","c":true},{"b":["^ cheesecake",{"->":".^.^.^.5"},null]}],"nop","^ ","ev",{"CNT?":".^.^.c-0"},"!","/ev",[{"->":".^.b","c":true},{"b":["^ tiramisu",{"->":".^.^.^.12"},null]}],"nop","\n",{"->":"variables"},{"#f":5}]}],{"#f":1}],"global decl":["ev","str","^","/str",{"VAR=":"myName"},true,{"VAR=":"testBool"},"/ev","end",null],"#f":1}],"listDefs":{}};