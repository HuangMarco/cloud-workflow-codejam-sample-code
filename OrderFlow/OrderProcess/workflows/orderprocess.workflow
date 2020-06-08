{
	"contents": {
		"dea79857-3797-4ae5-bffc-6c80e7998fcd": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "orderprocess",
			"subject": "orderprocess",
			"name": "orderprocess",
			"lastIds": "d2056d3d-633f-452e-8006-c73d3861dd0a",
			"events": {
				"0fe19736-5031-4d00-98a6-f8f717f42332": {
					"name": "StartEvent1"
				},
				"985ce376-3da3-4f47-81a1-c41c67292017": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"97432611-4ddf-4de0-97d2-55ca0ebd2297": {
					"name": "Retrieve Product Info"
				},
				"13e4ba07-69b9-49d6-81b2-656ebed98ada": {
					"name": "Approval Decision"
				},
				"9359ab76-9fbb-4955-8451-a3d822236dcd": {
					"name": "Prepare Message"
				}
			},
			"sequenceFlows": {
				"91996921-cfe9-41ba-9687-297c40bf748d": {
					"name": "SequenceFlow2"
				},
				"32ce1219-9366-489a-85b0-2e6902f2301f": {
					"name": "SequenceFlow4"
				},
				"4e36971a-ce51-4742-be38-0278e8d15ba5": {
					"name": "SequenceFlow6"
				},
				"1b45bae5-7485-48da-94ce-0cb57d014afa": {
					"name": "SequenceFlow7"
				}
			},
			"diagrams": {
				"1bd48de2-e535-4171-a963-117c8d9472f1": {}
			}
		},
		"0fe19736-5031-4d00-98a6-f8f717f42332": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"985ce376-3da3-4f47-81a1-c41c67292017": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"97432611-4ddf-4de0-97d2-55ca0ebd2297": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "shopinfo",
			"path": "Products('${context.request.Id}')?sap-client=002",
			"httpMethod": "GET",
			"responseVariable": "${context.productInfo}",
			"id": "servicetask1",
			"name": "Retrieve Product Info"
		},
		"13e4ba07-69b9-49d6-81b2-656ebed98ada": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Request for ${context.productInfo.d.Name}",
			"description": "Please review this request for ${context.request.Quantity} items.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "marco.huang@sap.com",
			"formReference": "/forms/orderprocess/RequestDecision.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "requestdecision"
			}, {
				"key": "formRevision",
				"value": "2"
			}],
			"id": "usertask1",
			"name": "Approval Decision"
		},
		"91996921-cfe9-41ba-9687-297c40bf748d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "0fe19736-5031-4d00-98a6-f8f717f42332",
			"targetRef": "97432611-4ddf-4de0-97d2-55ca0ebd2297"
		},
		"32ce1219-9366-489a-85b0-2e6902f2301f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "97432611-4ddf-4de0-97d2-55ca0ebd2297",
			"targetRef": "13e4ba07-69b9-49d6-81b2-656ebed98ada"
		},
		"1bd48de2-e535-4171-a963-117c8d9472f1": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"e7737354-cd11-4834-bce3-50c6e4a4efe4": {},
				"6cd7f689-7d1f-4ac4-8ae6-5a6d294bb44c": {},
				"2c4178f4-34d9-4201-b9a1-cac1760a4d98": {},
				"46f19884-df66-4b32-bc38-9cd4dc147944": {},
				"1c89c3bb-8773-490c-a128-7a43bda7189f": {},
				"f87fa1a5-9743-4a97-b9a5-55bb02170f7f": {},
				"ccc4e9d5-27c0-41d6-99e9-4411bde615cc": {},
				"c195929b-0216-42ea-935c-dfe7c98a7bf7": {},
				"96225d27-a0ad-4f23-be26-4bedb5cc1080": {}
			}
		},
		"e7737354-cd11-4834-bce3-50c6e4a4efe4": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "0fe19736-5031-4d00-98a6-f8f717f42332"
		},
		"6cd7f689-7d1f-4ac4-8ae6-5a6d294bb44c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 476,
			"y": 106,
			"width": 35,
			"height": 35,
			"object": "985ce376-3da3-4f47-81a1-c41c67292017"
		},
		"2c4178f4-34d9-4201-b9a1-cac1760a4d98": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 217,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "97432611-4ddf-4de0-97d2-55ca0ebd2297"
		},
		"46f19884-df66-4b32-bc38-9cd4dc147944": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 230,116",
			"sourceSymbol": "e7737354-cd11-4834-bce3-50c6e4a4efe4",
			"targetSymbol": "2c4178f4-34d9-4201-b9a1-cac1760a4d98",
			"object": "91996921-cfe9-41ba-9687-297c40bf748d"
		},
		"1c89c3bb-8773-490c-a128-7a43bda7189f": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 387,
			"y": 239,
			"width": 100,
			"height": 60,
			"object": "13e4ba07-69b9-49d6-81b2-656ebed98ada"
		},
		"f87fa1a5-9743-4a97-b9a5-55bb02170f7f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "267,124 352.25,124 352.25,269 437,269",
			"sourceSymbol": "2c4178f4-34d9-4201-b9a1-cac1760a4d98",
			"targetSymbol": "1c89c3bb-8773-490c-a128-7a43bda7189f",
			"object": "32ce1219-9366-489a-85b0-2e6902f2301f"
		},
		"d2056d3d-633f-452e-8006-c73d3861dd0a": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 7,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 1
		},
		"9359ab76-9fbb-4955-8451-a3d822236dcd": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/orderprocess/preparemessage.js",
			"id": "scripttask1",
			"name": "Prepare Message"
		},
		"ccc4e9d5-27c0-41d6-99e9-4411bde615cc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 529,
			"y": 233,
			"width": 100,
			"height": 60,
			"object": "9359ab76-9fbb-4955-8451-a3d822236dcd"
		},
		"4e36971a-ce51-4742-be38-0278e8d15ba5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "13e4ba07-69b9-49d6-81b2-656ebed98ada",
			"targetRef": "9359ab76-9fbb-4955-8451-a3d822236dcd"
		},
		"c195929b-0216-42ea-935c-dfe7c98a7bf7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "437,266 579,266",
			"sourceSymbol": "1c89c3bb-8773-490c-a128-7a43bda7189f",
			"targetSymbol": "ccc4e9d5-27c0-41d6-99e9-4411bde615cc",
			"object": "4e36971a-ce51-4742-be38-0278e8d15ba5"
		},
		"1b45bae5-7485-48da-94ce-0cb57d014afa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "9359ab76-9fbb-4955-8451-a3d822236dcd",
			"targetRef": "985ce376-3da3-4f47-81a1-c41c67292017"
		},
		"96225d27-a0ad-4f23-be26-4bedb5cc1080": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "579,263 579,186.75 493.5,186.75 493.5,123.5",
			"sourceSymbol": "ccc4e9d5-27c0-41d6-99e9-4411bde615cc",
			"targetSymbol": "6cd7f689-7d1f-4ac4-8ae6-5a6d294bb44c",
			"object": "1b45bae5-7485-48da-94ce-0cb57d014afa"
		}
	}
}