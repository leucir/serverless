
#create an action on Bluemix Openwhisk
$WSK_TEMP/wsk action create myAction ./actions/js/simple_action.js

#create an action with parameters on Bluemix Openwhisk
$WSK_TEMP/wsk action create myActionParams ./actions/js/params_action.js

#create an async action
$WSK_TEMP/wsk action create myActionAsync ./actions/js/async_action.js

#create weather async action
$WSK_TEMP/wsk action create weatherAsyncAction ./actions/js/weather_action.js

#create sequence action
$WSK_TEMP/wsk action create sequenceAction --sequence /whisk.system/utils/split,/whisk.system/utils/sort



#execute simple action
$WSK_TEMP/wsk action invoke myAction

#execute parameter action
$WSK_TEMP/wsk action invoke --result myActionParams --param-file ./actions/js/params_action_input.json

#execute async action
$WSK_TEMP/wsk action invoke --result myActionAsync

#execute weather async action
$WSK_TEMP/wsk action invoke --result weatherAsyncAction

#execute a sequence action
$WSK_TEMP/wsk action invoke sequenceAction --param-file ./actions/js/params_sample_text.json
