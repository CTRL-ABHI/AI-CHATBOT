# AI-CHATBOT
This Basic ChatBot Tell Our Mood Whether I Am Happy Or Sad Based Upon My Typing .
Creating a simple Prolog chatbot that determines whether you are happy or sad based on keywords from your input is an interesting task. Prolog, being a logic programming language, is suitable for such tasks where we can define rules and facts.
### How it works:
1. **Facts**: 
   - We define a list of happy words (`happy_word/1`) and sad words (`sad_word/1`).
2. **Rules**:
   - The chatbot analyzes the user input (`analyze_emotion/1`) by checking if any of the words in the input match either happy or sad words.
   - It uses helper rules (`check_happy/1`, `check_sad/1`) to search through the list of words.
3. **Input Processing**:
   - The user input is split into individual words and processed word by word to match any emotion keywords.
4. **Chat Loop**:
   - The program keeps asking the user for input until manually terminated.
### How to run the program:
1. Save the code in a file (e.g., `chatbot.pl`).
2. Load the file into a Prolog interpreter using `[chatbot].`.
3. Start the chat by running `start_chat.` in the Prolog console.
This is a basic version, but you can expand it by adding more emotion words or improving the logic to handle more complex sentences.
