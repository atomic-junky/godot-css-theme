class_name CSSEditorProperty extends EditorProperty

var line_edit = LineEdit.new()
var has_refreshed = false


func _init() -> void:
	label = "CSS Class"
	
	line_edit.text_changed.connect(_on_class_changed)
	add_child(line_edit)


func _on_class_changed(new_text: String) -> void:
	emit_changed("CSS_Class", new_text)


func _update_property() -> void:
	pass
