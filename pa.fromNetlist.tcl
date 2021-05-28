
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name lab7 -dir "/csehome/heka1024/lab/lab7/planAhead_run_2" -part xc3s50antqg144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/csehome/heka1024/lab/lab7/tdc_main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/csehome/heka1024/lab/lab7} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "tdc_main.ucf" [current_fileset -constrset]
add_files [list {tdc_main.ucf}] -fileset [get_property constrset [current_run]]
link_design
