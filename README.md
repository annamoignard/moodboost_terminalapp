 ## Installation and Setup

1. Firstly, you will need to install ruby, we recommend using this to do so [asdf](https://asdf-vm.com/)

2. Then, you will also need to install [git](https://git-scm.com/downloads)

3. After this, please `git clone` the app to your **desktop** directory (it's important that you clone to your DESKTOP directory)

```bash
git clone https://github.com/annamoignard/terminalapp ~/desktop/terminalapp
```

4. You will then need to run the `setup` executable file by pasting the below into your terminal. 

```bash
~/desktop/terminalapp/bin/setup 
```
5. Open your `.bash_profile` in a text editor
(you can do this by pasting `code ~/.bash_profile` into your terminal)

6. Add this line into the text editor document (you can add it anywhere, it won't matter)

```bash
export PATH=$PATH:$HOME/desktop/terminalapp/bin
```

7. Close and re-open your terminal to make sure your `.bash_profile` loads the app into your PATH

8. Run the `moodbooster` executable to start the app! (If everything has gone as it should, this should work from anywhere in your directory!)

```bash
moodbooster
``` 

9. This app looks the best with a black terminal, however it isn't 100% needed! Please enjoy!

# Project Management 

https://trello.com/b/i8y8sr28/terminal-app