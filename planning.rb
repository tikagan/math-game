class Players
# state:
  # lives
  # lives_template -  string to print out current score at the end of each Turn
# behaviour:
  # update_lives (public: called by Turn/Question)
  # print_lives, print lives_template string with updated lives data

class Turn
# state:
  # newTurn string, indicates start of new turn
  # whoseTurn - keeps track of which Player's turn it is
  # template string to console log each turn with two possible responses
# behavior:
  # call question_template method (Question)
  # call check_answer method (Question)
  # based on check_answer output (T/F) respond with approprate template string for in/correct answer
    # if incorrect call update_lives method (Players)
  # call print_lives method (Players)


class Question
# state:
  # first_num, second_num - generate and store variables each Turn
  # user inputted answer
  # question_template -  string that outputs question using generated variables
# behavior:
  # generate first_num, second_num variables each Turn (private)
  # method that outputs question_template (public)
  # check_answer if inputted value is equal to the sum of generated numbers (public: called by Turn)
