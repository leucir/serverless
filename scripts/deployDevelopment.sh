
#create an action on Bluemix Openwhisk
~/wsk_temp/wsk action create myAction ./actions/js/simple_action.js

#execute action
~/wsk_temp/wsk action invoke myAction
