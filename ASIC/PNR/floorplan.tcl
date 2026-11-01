
set load_fp 0
set top_module MIMO

if {$load_fp == 0} {

    floorPlan -r 1.0 0.60 4.0 4.0 4.0 4.0
} else {
    loadFPlan ./$top_module.fp
}
