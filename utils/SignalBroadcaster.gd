class_name SignalBroadcaster
extends Reference

func register(o: Object, signal_name: String) -> void:
	"""
	Wrapper for generically connecting to a signal
	"""
	connect(signal_name, o, "_on_%s" % signal_name)

signal update_label_text(element_name, value)
func broadcast_update_label_text(element_name: String, value: String) -> void:
	emit_signal("update_label_text", element_name, value)

signal mouse_motion_data(mouse_delta)
func broadcast_mouse_motion_data(mouse_delta: Vector2) -> void:
	"""
	Should correlate with InputEventMouseMotion.relative
	"""
	emit_signal("mouse_motion_data", mouse_delta)

signal mouse_scroll_data(scroll_direction)
func broadcast_mouse_scroll_data(scroll_direction: int) -> void:
	"""
	Scroll up is positive, scroll down is negative
	"""
	emit_signal("mouse_scroll_data", scroll_direction)

# Model gui

signal move_model(value)
func broadcast_move_model(value: bool) -> void:
	"""
	Describes whether or not the model should be moved by the mouse
	"""
	emit_signal("move_model", value)

signal rotate_model(value)
func broadcast_rotate_model(value: bool) -> void:
	"""
	Describes whether or not the model should be rotated by the mouse
	"""
	emit_signal("rotate_model", value)

signal zoom_model(value)
func broadcast_zoom_model(value: bool) -> void:
	"""
	Describes whether or not the model should be zoomed in/out by the mouse
	"""
	emit_signal("zoom_model", value)

signal load_model()
func broadcast_load_model() -> void:
	emit_signal("load_model")

signal set_model_as_default()
func broadcast_set_model_as_default() -> void:
	emit_signal("set_model_as_default")

signal reset_model_transform()
func broadcast_reset_model_transform() -> void:
	emit_signal("reset_model_transform")

signal a_pose_model()
func broadcast_a_pose_model() -> void:
	emit_signal("a_pose_model")

signal t_pose_model()
func broadcast_t_pose_model() -> void:
	emit_signal("t_pose_model")

signal bone_toggled()
func broadcast_bone_toggled(value: Array) -> void:
	"""
	value param contains bone name, toggle type, and toggle value
	"""
	emit_signal("bone_toggled", value[0], value[1], value[2])

#region Tracking

signal translation_damp(value)
func broadcast_translation_damp(value: float) -> void:
	emit_signal("translation_damp", value)

signal rotation_damp(value)
func broadcast_rotation_damp(value: float) -> void:
	emit_signal("rotation_damp", value)

signal additional_bone_damp(value)
func broadcast_additional_bone_damp(value: float) -> void:
	emit_signal("additional_bone_damp", value)

signal head_bone(value)
func broadcast_head_bone(value: String) -> void:
	emit_signal("head_bone", value)

signal apply_translation(value)
func broadcast_apply_translation(value: bool) -> void:
	emit_signal("apply_translation", value)

signal apply_rotation(value)
func broadcast_apply_rotation(value: bool) -> void:
	emit_signal("apply_rotation", value)

signal interpolate_model(value)
func broadcast_interpolate_model(value: bool) -> void:
	emit_signal("interpolate_model", value)

signal interpolation_rate(value)
func broadcast_interpolation_rate(value: float) -> void:
	emit_signal("interpolation_rate", value)

signal interpolate_bones(value)
func broadcast_interpolation_bones(value: bool) -> void:
	emit_signal("interpolate_bones", value)

signal bone_interpolation_rate(value)
func broadcast_bone_interpolation_rate(value: float) -> void:
	emit_signal("bone_interpolation_rate", value)

signal interpolate_gaze(value)
func broadcast_interpolate_gaze(value: bool) -> void:
	emit_signal("interpolate_gaze", value)

signal gaze_interpolation_rate(value)
func broadcast_gaze_interpolation_rate(value: float) -> void:
	emit_signal("gaze_interpolation_rate", value)

signal interpolate_blinking(value)
func broadcast_interpolate_blinking(value: bool) -> void:
	emit_signal("interpolate_blinking", value)

signal blinking_interpolation_rate(value)
func broadcast_blinking_interpolation_rate(value: float) -> void:
	emit_signal("blinking_interpolation_rate", value)

signal interpolate_mouth(value)
func broadcast_interpolate_mouth(value: bool) -> void:
	emit_signal("interpolate_mouth", value)

signal mouth_interpolation_rate(value)
func broadcast_mouth_interpolation_rate(value: float) -> void:
	emit_signal("mouth_interpolation_rate", value)

signal should_track_eye(value)
func broadcast_should_track_eye(value: bool) -> void:
	emit_signal("should_track_eye", value)

signal gaze_strength(value)
func broadcast_gaze_strength(value: float) -> void:
	emit_signal("gaze_strength", value)

signal blink_threshold(value)
func broadcast_blink_threshold(value: float) -> void:
	emit_signal("blink_threshold", value)

signal link_eye_blinks(is_linked)
func broadcast_link_eye_blinks(is_linked: bool) -> void:
	emit_signal("link_eye_blinks", is_linked)

signal use_raw_eye_rotation(value)
func broadcast_use_raw_eye_rotation(value: bool) -> void:
	emit_signal("use_raw_eye_rotation", value)

signal camera_select(value)
func broadcast_camera_select(value: String) -> void:
	emit_signal("camera_select", value)

signal tracker_fps(value)
func broadcast_tracker_fps(value: int) -> void:
	emit_signal("tracker_fps", value)

signal tracker_should_launch(value)
func broadcast_tracker_should_launch(value: bool) -> void:
	emit_signal("tracker_should_launch", value)

signal tracker_address(value)
func broadcast_tracker_address(value: String) -> void:
	emit_signal("tracker_address", value)

signal tracker_port(value)
func broadcast_tracker_port(value: int) -> void:
	emit_signal("tracker_port", value)

signal python_path(path)
func broadcast_python_path(path: String) -> void:
	emit_signal("python_path", path)
	
signal toggle_tracker()
func broadcast_toggle_tracker() -> void:
	emit_signal("toggle_tracker")

signal use_lip_sync(value)
func broadcast_use_lip_sync(value: bool) -> void:
	emit_signal("use_lip_sync", value)

# TODO started in Tracking.gd, to VRMModel, this isn't great
signal blend_shapes(value)
func broadcast_blend_shapes(value: String) -> void:
	emit_signal("blend_shapes", value)

signal mouth_open_max(value)
func broadcast_mouth_open_max(value: float) -> void:
	emit_signal("mouth_open_max", value)

signal mouth_open_group_1(value)
func broadcast_mouth_open_group_1(value: float) -> void:
	emit_signal("mouth_open_group_1", value)

signal mouth_open_group_2(value)
func broadcast_mouth_open_group_2(value: float) -> void:
	emit_signal("mouth_open_group_2", value)

signal mouth_wide_max(value)
func broadcast_mouth_wide_max(value: float) -> void:
	emit_signal("mouth_wide_max", value)

signal mouth_wide_group_1(value)
func broadcast_mouth_wide_group_1(value: float) -> void:
	emit_signal("mouth_wide_group_1", value)

signal mouth_wide_group_2(value)
func broadcast_mouth_wide_group_2(value: float) -> void:
	emit_signal("mouth_wide_group_2", value)

#endregion

#region Features

signal add_custom_prop()
func broadcast_add_custom_prop() -> void:
	emit_signal("add_custom_prop")

signal custom_prop_toggle_created(value)
func broadcast_custom_prop_toggle_created(value: BaseElement) -> void:
	emit_signal("custom_prop_toggle_created", value)

#endregion

#region Props

signal prop_toggled(prop_name, value)
func broadcast_prop_toggled(value: Array) -> void:
	emit_signal("prop_toggled", value[0], value[1])

signal move_prop(prop_name)
func broadcast_move_prop(value: bool) -> void:
	emit_signal("move_prop", value)

signal rotate_prop(prop_name)
func broadcast_rotate_prop(value: bool) -> void:
	emit_signal("rotate_prop", value)

signal zoom_prop(prop_name)
func broadcast_zoom_prop(value: bool) -> void:
	emit_signal("zoom_prop", value)

signal main_light(prop_name, value)
func broadcast_main_light(value: Array) -> void:
	emit_signal("main_light", value[0], value[1])

signal world_environment(prop_name, value)
func broadcast_world_environment(value: Array) -> void:
	emit_signal("world_environment", value[0], value[1])

signal delete_prop()
func broadcast_delete_prop() -> void:
	emit_signal("delete_prop")

#endregion

#region Presets

signal new_preset(preset_name)
func broadcast_new_preset(value: String) -> void:
	emit_signal("new_preset", value)

signal preset_toggle_created(value)
func broadcast_preset_toggle_created(value: BaseElement) -> void:
	emit_signal("preset_toggle_created", value)

signal preset_toggled(preset_name, value)
func broadcast_preset_toggled(value: Array) -> void:
	emit_signal("preset_toggled", value[0], value[1])

signal config_name(value)
func broadcast_config_name(value: String) -> void:
	emit_signal("config_name", value)

# TODO might be worth it to prepend all config signals with 'config'
signal description(value)
func broadcast_description(value: String) -> void:
	emit_signal("description", value)

signal hotkey(value)
func broadcast_hotkey(value: String) -> void:
	emit_signal("hotkey", value)

signal notes(value)
func broadcast_notes(value: String) -> void:
	emit_signal("notes", value)

signal is_default_for_model(value)
func broadcast_is_default_for_model(value: bool) -> void:
	emit_signal("is_default_for_model", value)

signal load_preset()
func broadcast_load_preset() -> void:
	emit_signal("load_preset")

signal delete_preset()
func broadcast_delete_preset() -> void:
	emit_signal("delete_preset")

signal preset_loaded()
func broadcast_preset_loaded() -> void:
	emit_signal("preset_loaded")

#endregion

#region App settings

signal default_model_search_path(value)
func broadcast_default_model_search_path(value: String) -> void:
	emit_signal("default_model_search_path", value)

signal default_prop_search_path(value)
func broadcast_default_prop_search_path(value: String) -> void:
	emit_signal("default_prop_search_path", value)

signal view_licenses()
func broadcast_view_licenses() -> void:
	emit_signal("view_licenses")

signal use_transparent_background(value)
func broadcast_use_transparent_background(value: bool) -> void:
	emit_signal("use_transparent_background", value)

signal use_fxaa(value)
func broadcast_use_fxaa(value: bool) -> void:
	emit_signal("use_fxaa", value)

signal msaa_value(value)
func broadcast_msaa_value(value: bool) -> void:
	emit_signal("msaa_value", value)

signal reconstruct_views()
func broadcast_reconstruct_views() -> void:
	emit_signal("reconstruct_views")

signal remote_control_port(port)
func broadcast_remote_control_port(port: int) -> void:
	emit_signal("remote_control_port", port)

signal use_remote_control(value)
func broadcast_use_remote_control(value: bool) -> void:
	emit_signal("use_remote_control", value)

signal remote_control_data_received(data)
func broadcast_remote_control_data_received(data: Dictionary) -> void:
	"""
	Rebroadcast this signal as well as immediately calling the associated signal
	"""
	call("broadcast_%s" % data["signal"], data["value"])
	emit_signal("remote_control_data_received", data) # TODO maybe we should filter before rebroadcasting?

#endregion

# File select popup

signal file_to_load_changed(file_path)
func set_file_to_load(file_path: String) -> void:
	# AppManager.cm.load_config_and_set_as_current(file_path)

	emit_signal("file_to_load_changed", file_path)

# Model

signal model_loaded(model) # Used by model scripts to indicate when they are ready
func broadcast_model_loaded(model: BasicModel) -> void:
	emit_signal("model_loaded", model)

# Lip sync

signal lip_sync_updated(data)
func broadcast_lip_sync_updated(data: Dictionary) -> void:
	emit_signal("lip_sync_updated", data)

signal lip_sync_panicked(message)
func broadcast_lip_sync_panicked(message: String) -> void:
	emit_signal("lip_sync_panicked", message)

# Legacy gui

signal face_tracker_offsets_set()
func save_facetracker_offsets() -> void:
	emit_signal("face_tracker_offsets_set")
