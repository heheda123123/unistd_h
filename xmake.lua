add_rules("mode.debug", "mode.release")

target("unistd_h")
    set_kind("$(kind)")
    add_files("fork.c")
    add_headerfiles("unistd.h")
    if is_plat("windows") and is_kind("shared") then
        add_rules("utils.symbols.export_all", {export_classes = true})
    end
