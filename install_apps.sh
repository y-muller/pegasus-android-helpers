# install required app
#  - Termux:API
#  - Termux:Widget
#  - Automate

if ! cmd package list packages|grep com.termux.api ; then
    echo Termux:API is not installed
    termux-open https://f-droid.org/packages/com.termux.api &
    read -n 1 -r -s -p "Press any key to continue..." key
fi
if ! cmd package list packages|grep com.termux.widget ; then
    echo Termux:Widget is not installed
    termux-open https://f-droid.org/packages/com.termux.widget &
    read -n 1 -r -s -p "Press any key to continue..." key
fi
if ! cmd package list packages|grep com.llamalab.automate ; then
    echo Automate is not installed
    termux-open https://play.google.com/store/apps/details?id=com.llamalab.automate &
    #read -n 1 -r -s -p "Press any key to continue..." key
fi

