add_rules("mode.debug", "mode.release")

target("unistd_h")
    set_kind("$(kind)")
    add_files("fork.c")
    add_headerfiles("unistd.h")
