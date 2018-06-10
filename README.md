# Mikado Method Demo

## General

### Prepare

    ./prepare.sh

### Reset

    ./reset.sh

### Show log

    git log master..


## Demo

    cd babystepstimer/Cpp/
    ./build.sh
    ./build-clang/babystepstimer

- draw goal : "add first test"
- draw node : "add test code"

### 01 add test code

    git apply ../../snippets/01_add_test_code.patch
    git add test/main.cc
    git diff --cached

- draw node : "setup test exe"
- draw node : "ui_text"
- draw node : "click"

    git reset --hard HEAD
    git clean -f -d

### 02 setup test exe

    git apply ../../snippets/02_setup_test_exe.patch
    git add test/main.cc CMakeLists.txt
    git diff --cached
    ./build.sh

- change assert(false) -> assert(true)

    ./build.sh
    git add test/main.cc CMakeLists.txt
    git commit -m "setup test exe"

- tick off "setup test exe"

### 03 ui_text

    git apply ../../snippets/03_ui_text.patch
    git diff
    ./build.sh

- draw node : "expose timer widget"

    git reset --hard HEAD

### 04 expose timer widget

    git apply ../../snippets/04_expose_timer_widget.patch
    git diff
    ./build.sh

    git add src/
    git commit -m "expose timer widget"

- tick off "expose timer widget"

### 05 ui_text

    git apply ../../snippets/05_ui_text.patch
    git diff
    ./build.sh

    git add test/
    git commit -m "ui_text"

- tick off "ui_text"

### 06 click

    git apply ../../snippets/06_click.patch
    git diff
    ./build.sh

    git add test/
    git commit -m "click"

- tick off "click"

### 07 add test code

    git apply ../../snippets/07_add_test_code.patch
    git diff
    ./build.sh

- draw node : "timer widget lifetime"

    git reset --hard HEAD

### 08 timer widget lifetime



