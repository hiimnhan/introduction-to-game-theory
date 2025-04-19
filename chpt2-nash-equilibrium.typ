#import "utils.typ": *
#import emoji: pencil
= Nash Equilibrium: Theory
== Strategic Games
A strategic game is a model of interacting decision-makers. Each decision-maker now can be called _player_. Each player has a set of possible _actions_. The model captures interaction between the players by allowing each player to be affected by the actions of all players, not only herself. Specially, each player has _preferences_ about the action _profile_-the list of all players actions.

#definition(title: "Strategic game with ordinal preferences")[
  A *strategic game* consists of 
  #set list(indent: 1em)
  - a set of *players*
  - for each player, a set of *actions*
  - for each player, *preferences* over the set of action profiles.
]

The players can be firms, bidders, action prices, candidates for political offices,...
== Example: the Prisoner's Dilemma
#example(title: "the Prisoner's Dilemma")[
  Two suspects in a major crime are held in separate cells. There is enough evidence to convict each of them of a minor offense, but not enough evidence to convict either of them of the major crime unless one of them acts as an informer against the other (finks). If they both stay quiet, each will be convicted of the minor offense and spend one year in prison. If one and only one of them finks, she will be freed and used as a witness against the other, who will spend four years in prison. If they both fink, each will spend three years in prison.
]<prisoner>

This setting may be modeled a strategic game:
#table(columns: 2, stroke: none, "Player", "The two suspects", "Action", "Each player's set of actions is {Quiet, Fink}", "Preferences", "Suspect 1’s ordering of the action profiles, from best to worst, is (Fink, Quiet) (she finks and suspect 2 remains quiet, so she is freed), (Quiet, Quiet) (she gets one year in prison), (Fink, Fink) (she gets three years in prison), (Quiet, Fink) (she gets four years in prison). Suspect 2’s ordering is (Quiet, Fink), (Quiet, Quiet), (Fink, Fink), (Fink, Quiet)")

The game can be illustrated by:

#figure(
  nfg(
    players: ("Suspect1", "Suspect2"),
    s1: ("Quiet", "Fink"),
    s2: ("Quiet", "Fink"),
    [$2$, $2$], [$0$, $3$],
    [$3, 0$], [$1$, $1$]
  ),
  caption: [The Prisoner's Dilemma (@prisoner)]
)<prisoner_fig>

#pencil A game can be shown to be a _Prisoner's Dilemma_ if it models a situation where there are gains from cooperation, but each player has an incentive to "free ride" (choose the non-cooperative action) regardless of what other player does. A 2-player game with 2 actions for each player, say _C_ (cooperate/_Quiet_) and _D_(defect/_Fink_), is a _Prisoner's Dilemma_ if the players' preferences are ordered as follows:
- Player 1 prefers (_D_, _C_) to (_C_, _C_) to (_D_, _D_) to (_C_, _D_). This means Player 1 prefers to defect when the other cooperates, then prefers mutual cooperation, then mutual defection, and least prefers to cooperate when other defects.
- Player 2 prefers (_C_, _D_) to (_C_, _C_) to (_D_, _D_) to (_C_, _D_).
=== Working on a joint project 
*Setting:* You are working with a friend on a joint project. Each of you can either work hard or goof off. If your friend works hard then you prefer to goof off (the outcome of the project would be better if you worked hard too, but the increment in its value to you is not worth the extra effort). You prefer the outcome of your both working hard to the outcome of your both goofing off (in which case nothing gets accomplished), and the worst outcome for you is that you work hard and your friend goofs off (you hate to be “exploited”). If your friend has the same preferences then the game that models the situation you face is given in @joint_project, which, as you can see, differs from the _Prisoner’s Dilemma_ only in the names of the actions.

#figure(
  nfg(
    players: ("You", "Friend"),
    s1: ("Work hard", "Goof off"),
    s2: ("Work hard", "Goof off"),
    [$2$, $2$], [$0$, $3$],
    [$3, 0$], [$1$, $1$]
  ),
  caption: [Working on a joint project]
)<joint_project>

=== Duopoly
*Setting:* In a simple model of a duopoly, two firms produce the same good, for which each firm charges either a low price or a high price. Each firm wants to achieve the highest possible profit. If both firms choose High then each earns a profit of \$1000. If one firm chooses High and the other chooses Low then the firm choosing High obtains no customers and makes a loss of \$200, whereas the firm choosing Low earns a profit of \$1200 (its unit profit is low, but its volume is high). If both firms choose Low then each earns a profit of \$600. Each firm cares only about its profit, so we can represent its preferences by the profit it obtains, yielding the game in @duopoly

#figure(
  nfg(
    players: ("Company A", "Company B"),
    s1: ("High", "Low"),
    s2: ("High", "Low"),
    [$1000$, $1000$], [$-200$, $1200$],
    [$1200, -200$], [$600$, $600$]
  ),
  caption: [A simple model of a price-setting duopoly.]
)<duopoly>

== Example: Bach or Stravinsky? (a.k.a Battle of Sex)
In the _Prisoner's Dilemma_ the main issue is whether or not the players will cooperate (choose _Quiet_). In the following game, the players agree that it is better to cooperate than not to cooperate, but disagree about the best outcome.

#example(title: "Bach or Stravinsky?")[
  Two people wish to go out together. Two concerts are available: one of music by Bach, and one of music by Stravinsky. One per- son prefers Bach and the other prefers Stravinsky. If they go to different concerts, each of them is equally unhappy listening to the music of either composer.
]<bos>

#figure(
  nfg(
    players: ("Husband", "Wife"),
    s1: ("Bach", "Stravinsky"),
    s2: ("Bach", "Stravinsky"),
    [$2$, $1$], [$0$, $0$],
    [$0, 0$], [$1$, $2$]
  ),
  caption: [Bach or Stravinsky? (BoS)(@bos).]
)<bos_fig>

== Example: Matching Pennies
#example(title: "Matching Pennies")[
  Two people choose, simultaneously, whether to show the Head or the Tail of a coin. If they show the same side, person 2 pays person 1 a dollar; if they show different sides, person 1 pays person 2 a dollar. Each person cares only about the amount of money she receives, and (naturally!) prefers to receive more than less. A strategic game that models this situation is shown in Figure 17.1. (In this representation of the players’ preferences, the payoffs are equal to the amounts of money involved. We could equally well work with another representation—for example, 2 could replace each 1, and 1 could replace each −1.)
]<matching_pennies>

#figure(
  nfg(
    players: ("Player A", "Player B"),
    s1: ("Head", "Tail"),
    s2: ("Head", "Tail"),
    [$1$, $-1$], [$-1$, $1$],
    [$-1, 1$], [$1$, $-1$]
  ),
  caption: [Matching Pennies (@matching_pennies)]
)<matching_pennies_fig>

In this game, the players' interests are strictly opposed: Player A wants to take the same action as the other player while Player B wants to take the opposite action.

You may find this game in the situation between luxury brands and companies producing fake items.

== Other Examples
In the book

== Nash equilibrium
_Nash equilibrium_ is like a situation in a game where everyone has chosen their best move, knowing what everyone else has chosen, and *nobody wants to change their decision alone*. It's a stable point.

#mathpar[
  A _Nash equilibrium_ is an action profile $a^*$ with the property that no player $i$ can do better choosing an action different from $a_i^*$, given that every other player $j$ adheres to $a_j^*$
]

In the idealized setting in which the players in any given play of the game are
drawn randomly from a collection of populations, a _Nash equilibrium_ corresponds
to a _steady state_. If, whenever the game is played, the action profile is the same Nash equilibrium $a^*$ , then no player has a reason to choose any action different from her component of $a^*$ ; there is no pressure on the action profile to change. Expressed differently, a Nash equilibrium embodies a stable “social norm”: if everyone else adheres to it, no individual wishes to deviate from it.

#definition(title: "Nash equilibrium of strategic game with ordinal preferences")[
  The action profile $a^*$ in a strategic game with ordinal preferences is a *Nash equilibrium* if, for every player $i$ and every action $a_i$ of player $i$, $a^*$ is at least as good according to player $i$'s preferences as action profile ($a_i$, $a_(-i)$) in which player $i$ chooses $a_i$ while every other player $j$ chooses $a_j^*$. Equivalently, for every player $i$,
  $
  u#sub[i]lr((a^*)) gt.eq u#sub[i]lr((a_i, a_(-i)^*)) "for every action" a_i "of player" i,
  $<nash_equi_def1>
  where $u_i$ is a payoff function that represents player $i$'s preferences.
]

This definition implies neither that a strategic game necessarily has a Nash equilibrium, nor that it has at most one. Some games may have a single Nash equilibrium, some posses no Nash equilibrium, and others may have lots of Nash equilibria.

#pencil This definition is designed for only smart players who have already known each others's preferences, carefully consider what they need to do and deduce about other player's actions.

== Examples of Nash equilibrium
=== Prisoner's Dilemma @prisoner

By examing the 4 possible pairs of actions in the _Prisoner's Dilemma_ (reproduced in @prisoner_fig2), we see that (_Fink_, _Fink_) is an unique Nash equilibrium.

#figure(
  nfg(
    players: ("Suspect1", "Suspect2"),
    s1: ("Quiet", "Fink"),
    s2: ("Quiet", "Fink"),
    [$2$, $2$], [$0$, $3$],
    [$3, 0$], [$1$, $1$]
  ),
  caption: [The Prisoner's Dilemma]
)<prisoner_fig2>

This is because 
+ Given that _Suspect 2_ chooses _Fink_, _Suspect 1_ is better off choosing _Fink_ than _Quiet_ (the (2,2) position of the matrix shows that _Fink_ yields _Suspect 1_ a payoff of 1 whereas _Quiet_ yields 0 as (1, 2) position of the matrix).
+ Given that _Suspect 1_ chooses _Fink_, _Suspect 2_ is better off choosing _Fink_ than _Quiet_ with the same reason.
Since both suspects choosing _Fink_ is the best response to the other suspect also choosing _Fink_, neither suspect has an incentive to unilaterally deviate from this outcome.

No other action profile is a Nash equilibrium:
- (_Quiet_, _Quiet_): If _Suspect 2_ chooses _Quiet_, _Suspect 1_ is better off choosing _Fink_ (payoff of 3) than _Quiet_ (payoff of 2) and vice versa. Thus, at least one suspect would want to deviate.
- (_Fink_, _Quiet_): If _Suspect 1_ chooses _Fink_, _Suspect 2_ is better off choosing _Fink_ (payoff of 2) than _Quiet_ (payoff of 1). Thus, _Suspect 2_ has an incentive to deviate.
- (_Quiet_, _Fink_): If _Suspect 2_ choose _Fink_, _Suspect 1_ is better off choosing _Fink_ (payoff of 2) than _Quiet_ (payoff of 0). Thus, _Suspect 1_ has an incentive to deviate.

#exercise(title: "Altruistic players in the Prisoner’s Dilemma")[
  Each of two players has two possible actions, _Quiet_ or _Fink_; each action pair results in the player's receiving amount of _money_ equal to the numbers corresponding to that action pair in @prisoner_fig2. (For example, if player 1 chooses _Quiet_ and player 2 chooses _Fink_, then player 1 receives nothing, whereas player 2 receives \$3). The players are not "selfish"; rather, the preferences of each player $i$ are represented by a payoff function $m#sub[i]lr((a)) + alpha m#sub[j]lr((a))$, where $m#sub[i]lr((a))$ is the amount of money received by player $i$ when the action profile is $a$, $j$ is the other player, and $alpha$ is a given non-negative number. Player 1's payoff to the action pair (_Quiet_, _Quiet_), for example, is $2 + 2alpha$.

  #context [
    #set enum(numbering: "a)", start: 0)
  + Formulate a strategic game that models this situation in the case $alpha = 1$. Is this game the _Prisoner's Dilemma_?
  
      When $alpha = 1$, the payoff function for each player becomes $m#sub[i]lr((a)) + m#sub[j]lr((a))$, which is the sum of money received by both players. The payoffs for each action profile are:
      - (_Quiet_, _Quiet_): player 1 receives 2 + 2 = 4, player 2 receives 2 + 2 = 4. Payoff profile: (4, 4)
      - (_Quiet_, _Fink_): player 1 receives 0 + 3 = 3, player 2 receives 3 + 0 = 3. Payoff profile: (3, 3)
      - (_Fink_, _Quiet_): player 1 receives 3 + 0 = 3, player 2 receives 0 + 3 = 3. Payoff profile: (3, 3)
      - (_Fink_, _Fink_): player 1 receives 1 + 1 = 2, player 2 receives 1 + 1 = 2. Payoff profile: (2, 2)
  
    #figure(
      nfg(
        players: ("P1", "P2"),
        s1: ("Quiet", "Fink"),
        s2: ("Quiet", "Fink"),
        [$4$, $4$], [$3$, $3$],
        [$3, 3$], [$2$, $2$]
      ),
      caption: [Strategic game for $alpha = 1$]
  )
  In this game, for player 1, _Quiet_ yields a higher payoff (4) than _Fink_ (3) against _Quiet_, and _Quiet_ yields a higher payoff (3) than _Fink_ (2) against _Fink_. Thus, _Quiet_ is a strictly dominant strategy for player 1. Similarly, _Quiet_ is a strictly dominant strategy for player 2. The unique Nash equilibrium is (_Quiet_, _Quiet_).
  
  This game is not the _Prisoner's Dilemma_. The unique Nash equilibrium in the dilemma is (_Fink_, _Fink_) whereas in this case is (_Quiet_, _Quiet_).
  
  + Find a range of values of $alpha$ for which the resulting game is the _Prisoner's Dilemma_. For values of $alpha$ for which the game is not the _Prisoner's Dilemma_, find its Nash equilibria.
  
    For the game to be the _Prisoner's Dilemma_, the following conditions must hold:
  
    - For each player, _Fink_ must be the dominant strategy:
      - Payoff from _Fink_ against _Quiet_ $gt$ Payoff from _Quiet_ against _Quiet_
      $
      (3 + 0alpha) gt (2 + 2alpha) 
      => 2alpha lt 1 
      => alpha lt 1/2
      $
      - Payoff from _Fink_ against _Fink_ $gt$ Payoff from _Quiet_ against _Fink_
      $
      (1 + 1alpha) gt (0 + 3alpha) 
      => 2alpha lt 1
      => alpha lt 1/2
      $
    Thus, the game is _Prisoner's Dilemma_ if and only if $alpha < 1/2$
  ]
]



#exercise(title: "Selfish and altruistic social behavior")[
  Two people enter a bus. Two adjacent cramped seats are free. Each person must decide to sit or stand. Sitting alone is more comfortable than sitting next to other person, which is more comfortable than standing.
#context [
  #set enum(numbering: "a)")
+ Suppose that each person only cares about her own comfort. Model the situation as a strategic game. Is this game the _Prisoner's Dilemma_? Find its Nash equilibria

  This situation can be modeled as following:
  #figure(
    nfg(
      players: ("P1", "P2"),
      s1: ("Sit", "Stand"),
      s2: ("Sit", "Stand"),
      [$1$, $1$], [$2$, $0$],
      [$0, 2$], [$0$, $0$]
    ),
    caption: [Behaviour on the bus when players prefer selfish]
  )
  This game is not the _Prisoner's Dilemma_. If we identify _Sit_ with _Quiet_ and _Stand_ with _Fink_ then (_Stand_, _Sit_) is worse for player 1 than (_Sit_, _Sit_). If we identify _Sit_ with _Fink_ and _Stand_ with _Quiet_ then (_Stand_, _Stand_) is worse for player 1 than (_Sit_, _Sit_). The game has a unique Nash equilibrium (_Sit_, _Sit_)

+ Suppose that each person is altruistic, ranking the outcomes according to _other_ person's comfort, and, out of politeness, prefers to stand than to sit if the other person stands. Model the situation as a strategic game. Is this game the _Prisoner's Dilemma_? Find its Nash equilibrium.

  #figure(
    nfg(
      players: ("P1", "P2"),
      s1: ("Sit", "Stand"),
      s2: ("Sit", "Stand"),
      [$2$, $2$], [$0$, $3$],
      [$3$, $0$], [$1$, $1$]
    ),
    caption: [Behaviour on the bus when players prefer altruistic]
  )

  This game is the _Prisoner's Dilemma_. Its unique Nash equilibrium is (_Stand_, _Stand_).
]
]
=== BoS @bos
To find the Nash equilibria of _BoS_ (@bos_fig), we can examine each pair of actions:
- (_B_, _B_): If player 1 switch to _S_ then her payoff decreases from 2 to 0; similar to player 2. Thus, a deviation by either player decreases her payoff. Therefore (_B_, _B_) is a Nash equilibrium.

- (_B_, _S_): if player 1 switch to _S_ then her payoff increases from 0 to 1. Thus (_B_, _S_) is not a Nash equilibrium. We can deduce from 1 player to show a pair is not a Nash equilibrium.

- (_S_, _B_): if player 1 switches to _B_ then her payoff increases from 0 to 2. Thus, (_S_, _B_) is not a Nash equilibrium.

- (_S_, _S_): if player 1 switches to _B_, her payoff decreases from 1 to 0; if player 2 switches to _B_, her payoff decreases from 2 to 0. Thus, a deviation by either player decreases her payoff. Therefore (_S_, _S_) is a Nash equilibrium.

We conclude the game has 2 Nash equilibria (_B_, _B_) and (_S_, _S_).

=== Matching Pennies @matching_pennies
=== The Stag Hunt
=== Hawk-Dove
#exercise(title: "Hawk-Dove")[
  Two animals are fighting over some prey. Each can be passive or aggressive. Each prefers to be aggressive if the other is passive, and vice versa; given its own stance, it prefers the outcome when its opponent is passive to that opponent is aggressive. Formulate this situation as a strategic game and find its Nash equilibrium.

#figure(
    nfg(
      players: ("Hawk", "Dove"),
      s1: ("Agg", "Pas"),
      s2: ("Agg", "Pass"),
      [$0$, $0$], [$3$, $1$],
      [$1$, $3$], [$2$, $2$]
    ),
    caption: [Hawk-Dove]
  )

  The game has 2 Nash equilibria (_Agg_, _Pas_) and(_Pas_, _Agg_)
]
