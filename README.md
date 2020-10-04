#### **Installation and Setup of the Mood Booster**

1. Welcome to the Mood Booster! To start tracking your moods, there a few steps which need to be taken. 
2. To begin, please install Ruby, we recommend using this link to do so [asdf](https://asdf-vm.com/)

2. Then, please also need to install [git](https://git-scm.com/downloads)

3. After this, please `git clone` the app to your **desktop** directory (it's important that you clone to your **desktop** directory)

```bash
git clone https://github.com/annamoignard/terminalapp ~/desktop/terminalapp
```

4. You will then need to run the `setup` executable file by pasting the below file path into your terminal. Please note that some devices will have a capital `d` in their filepath, if this is your case, please change the `d` in the below file path to match your own. 

``` bash
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

notes : Please note that some computers will have a capital 'D' for their `desktop` file path. If this is the case, you will need to go to line 5 and line 20 in `moods_repo.rb` and change the `desktop` in the keyword to have a capital letter. If you don't do this, you will have an error when running the app. If your desktop file path doesn't have a capital `d` then you don't have to do anything :) 

Thank you! 