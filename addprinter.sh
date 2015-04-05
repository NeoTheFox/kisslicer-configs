#!/bin/bash
if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi

echo "
[$1]
g_code_matl=3B204D617962652073657420736F6D65206D6174657269616C2D737065636966696320472D636F64653F

fan_Z_mm=0

fan_loops_percent=100

fan_inside_percent=0

fan_cool_percent=100

temperature_C=250

keep_warm_C=180

first_layer_C=255

bed_C=80

sec_per_C_per_C=0

flow_min_mm3_per_s=0.01

flow_max_mm3_per_s=10

destring_suck=1.25

destring_prime=1.25

destring_min_mm=1

destring_trigger_mm=100

destring_speed_mm_per_s=15

destring_suck_speed_mm_per_s=15

Z_lift_mm=0

min_layer_time_s=10

wipe_mm=10

cost_per_cm3=0

flowrate_tweak=1

fiber_dia_mm=3

color=0" >> _materials.ini

echo "
[$1]
bed_STL_filename=

extension=gcode

cost_per_hour=0

g_code_prefix=3B205B6D6D5D206D6F64650A4732310A3B206162736F6C757465206D6F64650A4739300A

g_code_warm=3B2053656C6563742065787472756465722C207761726D2C2070757267650A0A3B204266422D7374796C650A4D3C4558542B313E303420533C54454D503E0A4D3534320A4D35353C4558542B313E2050333230303020533930300A4D3534330A0A3B2035442D7374796C650A543C4558542B303E0A4D31303920533C54454D503E0A

g_code_same_warm=NULL

g_code_same_cool=NULL

g_code_cool=3B2047756172616E746565642073616D652065787472756465722C206275742061626F757420746F20646573656C6563742C206D617962652072657472616374206265666F726520636F6F6C696E6720646F776E0A0A3B204266422D7374796C650A4D3C4558542B313E303420533C54454D503E0A0A3B2035442D7374796C650A4D31303420533C54454D503E0A

g_code_N_layers=3B204D617962652072652D686F6D652058202620593F

g_code_postfix=3B20416C6C2075736564206578747275646572732061726520616C72656164792027436F6F6C65642720746F20300A

every_N_layers=0

post_process=NULL

num_extruders=1

firmware_type=1

add_comments=1

fan_on=M106

fan_off=M107

fan_pwm=1

add_m101_g10=0

z_speed_mm_per_s=3.5

z_settle_mm=0.25

bed_size_x_mm=100

bed_size_y_mm=100

bed_size_z_mm=100

ext_radius=0

bed_offset_x_mm=0

bed_offset_y_mm=0

bed_offset_z_mm=0

bed_roughness_mm=0.25

round_bed=0

travel_speed_mm_per_s=500

first_layer_speed_mm_per_s=10

dmax_per_layer_mm_per_s=50

xy_accel_mm_per_s_per_s=1500

xy_steps_per_mm=150

lo_speed_perim_mm_per_s=5

lo_speed_loops_mm_per_s=20

lo_speed_solid_mm_per_s=15

lo_speed_sparse_mm_per_s=30

hi_speed_perim_mm_per_s=15

hi_speed_loops_mm_per_s=65

hi_speed_solid_mm_per_s=60

hi_speed_sparse_mm_per_s=75

ext_gain_1=1

ext_material_1=0

ext_axis_1=0

ext_gain_2=1

ext_material_2=0

ext_axis_2=0

ext_Xoff_2=0

ext_Yoff_2=0

ext_gain_3=1

ext_material_3=0

ext_axis_3=0

ext_Xoff_3=0

ext_Yoff_3=0

ext_gain_4=1

ext_material_4=0

ext_axis_4=0

ext_Xoff_4=0

ext_Yoff_4=0

model_ext=0

support_ext=0

support_body_ext=0

raft_ext=0

ext_order_optimize=0

solid_loop_overlap_fraction=0.5" >> _printers.ini

echo "
[$1]
quality_percentage=50

layer_thickness_mm=0.25

extrusion_width_mm=0.5

num_loops=3

skin_thickness_mm=0.8

infill_extrusion_width=0.5

infill_density_denominator=4

stacked_layers=1

use_destring=1

use_wipe=1

use_corners=1

loops_insideout=0

infill_st_oct_rnd=1

inset_surface_xy_mm=0

seam_jitter_degrees=0

seam_depth_scaler=1

seam_gap_scaler=1

seam_angle_degrees=45" >> _styles.ini

echo "
[$1]
support_sheathe=0

support_density=3

solid_interface=0

support_inflate_mm=0

support_gap_mm=0.5

support_angle_deg=45

support_z_max_mm=-1

sheathe_z_max_mm=-1

raft_mode=0

prime_pillar_mode=0

raft_inflate_mm=2

raft_hi_stride_mm=1.5

raft_hi_thick_mm=0.25

raft_hi_width_mm=0.35

raft_lo_stride_mm=2.5

raft_lo_thick_mm=0.25

raft_lo_width_mm=0.5

brim_mm=0

brim_ht_mm=0

brim_fillet=1

interface_band_mm=2

interface_extrusion_gain=1

interface_Z_gap_mm=0

raft_interface_layers=0" >> _supports.ini

echo "Added printer $1  with default settings"
