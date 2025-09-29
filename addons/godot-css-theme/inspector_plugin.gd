extends EditorInspectorPlugin

var props: Array = []

func _can_handle(object) -> bool:
	return object is Control 


func _parse_category(object: Object, category: String) -> void:
	if category != "Control":
		return
	
	var prop: CSSEditorProperty = CSSEditorProperty.new()
	props.append(prop)
	add_custom_control(prop)
