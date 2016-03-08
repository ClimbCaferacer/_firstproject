Meta:

Narrative:
As a user
I want to perform an action
So that I can achieve a business goal

Scenario: Looking up the definition of 'apple'
Given the user is on the Wikionary home page
When the user looks up the definition of the word apple
Then they should see the definition 'A common, round fruit produced by the tree Malus domestica, cultivated in temperate climates.'

Scenario: Looking up the definition of 'pear'
Given the user is on the Wikionary home page
When the user looks up the definition of the word pear
Then they should see the definition 'An edible fruit produced by the pear tree, similar to an apple but elongated towards the stem.'


Scenario: Looking up the definition of fruit
Given the user is on the Wikionary home page
When the user looks up the definition of the word <word>
Then they should see the definition 'An edible fruit produced by the pear tree, similar to an apple but elongated towards the stem.'

Examples:
|word   |definition                                                                                     |
|apple  |A common, round fruit produced by the tree Malus domestica, cultivated in temperate climates.  |
|pear   |An edible fruit produced by the pear tree, similar to an apple but elongated towards the stem. |