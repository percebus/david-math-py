Feature: Addition

    Scenario: 28 +25
        Given a first number 28  # 20 + 8
        And a second number 25   # 20 + 5
        When I add the numbers   # ------
        Then I get the sum 53    # 50 + 3
#       Then I get the sum 52

    Scenario: 80 +15
        Given a first number 80
        And a second number 15
        When I add the numbers
        Then I get the sum 95

    Scenario: 44 +37
        Given a first number 44  # 40 + 4
        And a second number 37   # 30 + 7
        When I add the numbers   # ------
        Then I get the sum 81    # 80 + 1

    Scenario: 48 +35
        Given a first number 48  # 40 + 8
        And a second number 35   # 30 + 5
        When I add the numbers   # ------
        Then I get the sum 83    # 80 + 3

    Scenario: 19 +45
        Given a first number 19  # 10 + 9
        And a second number 45   # 40 + 5
        When I add the numbers   # ------
        Then I get the sum 64    # 60 + 4

    Scenario: 22 +66
        Given a first number 22
        And a second number 66
        When I add the numbers
        Then I get the sum 88

    Scenario: 66 +27
        Given a first number 66  # 60 + 6
        And a second number 27   # 20 + 7
        When I add the numbers   # ------
        Then I get the sum 93    # 90 + 3

    Scenario: 17 +45
        Given a first number 17  # 10 + 7
        And a second number 45   # 40 + 5
        When I add the numbers   # ------
        Then I get the sum 62    # 60 + 2


    Scenario Outline: <num1> + <num2>
        Given a first number <num1>
        And a second number <num2>
        When I add the numbers
        Then I get the sum <sum>
        Examples:
            | num1 | num2 | sum |
            | 28   | 25   | 53  |
            | 44   | 37   | 81  |
            | 80   | 15   | 95  |
            | 48   | 35   | 83  |
            | 19   | 45   | 64  |
            | 66   | 27   | 93  |
            | 22   | 66   | 88  |
            | 17   | 45   | 62  |
