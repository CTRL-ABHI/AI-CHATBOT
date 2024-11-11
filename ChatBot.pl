% Facts: Define words associated with emotions
happy_word('happy').
happy_word('joy').
happy_word('excited').
happy_word('love').
happy_word('great').
happy_word('amazing').
happy_word('good').
happy_word('fun').
happy_word('smile').
happy_word('laugh').

sad_word('sad').
sad_word('unhappy').
sad_word('cry').
sad_word('depressed').
sad_word('bad').
sad_word('angry').
sad_word('lonely').
sad_word('frustrated').
sad_word('bored').
sad_word('upset').

% Rules to determine the emotional state
% If any happy word is found, it will return "You are happy!"
analyze_emotion(Input) :-
    atom_string(AtomInput, Input),
    atomic_list_concat(WordList, ' ', AtomInput), % Split the input into words
    (check_happy(WordList) -> write('I am happy!'), nl;
     check_sad(WordList) -> write('I am sad!'), nl;
     write('I am not sure how you feel.'), nl).

% Check if any word from the input is a happy word
check_happy([]) :- fail. % If no more words, fail
check_happy([Word|_]) :- happy_word(Word), !. % If the word is happy, succeed
check_happy([_|Tail]) :- check_happy(Tail). % Otherwise, keep checking

% Check if any word from the input is a sad word
check_sad([]) :- fail. % If no more words, fail
check_sad([Word|_]) :- sad_word(Word), !. % If the word is sad, succeed
check_sad([_|Tail]) :- check_sad(Tail). % Otherwise, keep checking

% Entry point of the program
start_chat :-
    write('How are you feeling today?'), nl,
    read_line_to_string(user_input, Input), % Read the user input
    analyze_emotion(Input), % Analyze the input
    start_chat. % Restart the chat loop
