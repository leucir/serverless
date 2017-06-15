
#create an action on Bluemix Openwhisk
$WSK_TEMP/wsk action create myAction ./actions/js/simple_action.js

#execute action
$WSK_TEMP/wsk action invoke myAction
