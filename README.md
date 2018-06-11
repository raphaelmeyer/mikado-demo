# Mikado Method Demo

## General

**prepare**

    ./prepare.sh

**reset**

    ./reset.sh

**show log**

    git log master..


## Demo

    cd babystepstimer/Cpp/
    ./build.sh
    ./build-clang/babystepstimer


* draw goal : "add first test"
* draw node : "add test code"


### 01 add test code

    git apply ../../snippets/01_add_test_code.patch
    git add test/main.cc
    git diff --cached


* draw node : "setup test exe"
* draw node : "ui_text"
* draw node : "click"


    git reset --hard HEAD
    git clean -f -d


### 02 setup test exe

    git apply ../../snippets/02_setup_test_exe.patch
    git add test/main.cc CMakeLists.txt
    git diff --cached
    ./build.sh


* change assert(false) -> assert(true)


    ./build.sh
    git add test/main.cc
    git commit -m "setup test exe"


* tick off "setup test exe"


### 03 ui_text

    git apply ../../snippets/03_ui_text.patch
    git diff
    ./build.sh


* draw node : "expose timer widget"


    git reset --hard HEAD


### 04 expose timer widget

    git apply ../../snippets/04_expose_timer_widget.patch
    git diff
    ./build.sh
    ./build-clang/babystepstimer


* draw node : "timer widget lifetime"


    git reset --hard HEAD


### 05 timer widget lifetime

    git apply ../../snippets/05_timer_widget_lifetime.patch
    git diff
    ./build.sh
    ./build-clang/babystepstimer


    git add src/BabystepsTimer.cpp
    git commit -m "timer widget lifetime"


* tick off "timer widget lifetime"


### 06 expose timer widget

    git apply ../../snippets/06_expose_timer_widget.patch
    git diff
    ./build.sh
    ./build-clang/babystepstimer


    git add src/
    git commit -m "expose timer widget"


* tick off "expose timer widget"


### 07 ui_text

    git apply ../../snippets/07_ui_text.patch
    git diff
    ./build.sh


    git add test/
    git commit -m "ui_text"


* tick off "ui_text"


### 08 click

    git apply ../../snippets/08_click.patch
    git diff
    ./build.sh


    git add test/
    git commit -m "click"


* tick off "click"


### 09 add test code

    git apply ../../snippets/09_add_test_code.patch
    git diff
    ./build.sh


* draw node : "replace exit()"


    git reset --hard HEAD


### 10 replace exit()

    git apply ../../snippets/10_replace_exit.patch
    ./build.sh
    ./build-clang/babystepstimer


    git add src/BabystepsTimer.cpp
    git commit -m "replace exit()"


### 11 add test code

    git apply ../../snippets/11_add_test_code.patch
    ./build.sh


    git add test/main.cc
    git commit -m "add test code"


* tick off : "add test code"
* tick off goal
