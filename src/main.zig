const std = @import("std");
const print = std.debug.print;

// ANSI renk kodları
const Color = struct {
    const RESET = "\x1b[0m";
    const BLACK = "\x1b[30m";
    const WHITE = "\x1b[37m";
    const MAGENTA = "\x1b[35m";
    const BG_BLACK = "\x1b[40m";
    const BG_WHITE = "\x1b[47m";
    const BG_MAGENTA = "\x1b[45m";
};

// pwish.txt içeriğini embed et
const pwish_avatar = @embedFile("pwish.txt");

fn printPwishAvatar() void {
    print("{s}", .{pwish_avatar});
}

// Renkli string formatları
fn morSiyah(text: []const u8) void {
    print("{s}{s}{s}{s}", .{ Color.MAGENTA, Color.BG_BLACK, text, Color.RESET });
}

fn siyahMor(text: []const u8) void {
    print("{s}{s}{s}{s}", .{ Color.BLACK, Color.BG_MAGENTA, text, Color.RESET });
}

fn beyazMor(text: []const u8) void {
    print("{s}{s}{s}{s}", .{ Color.WHITE, Color.BG_MAGENTA, text, Color.RESET });
}

fn morBeyaz(text: []const u8) void {
    print("{s}{s}{s}{s}", .{ Color.MAGENTA, Color.BG_WHITE, text, Color.RESET });
}

pub fn main() void {
    // Avatar yazdır
    printPwishAvatar();
    
    // Bilgileri yazdır
    morSiyah("\t\t\t\t                      pwish-zig @v1.0.0                        ");
    print("\n", .{});
    siyahMor("\t\t\t\tAd: pwish                                                     ");
    print("\n", .{});
    morSiyah("\t\t\t\tProgramlama dilleri: Java,Javascript,C,C++,C#,HTML,Python,Zig ");
    print("\n", .{});
    beyazMor("\t\t\t\tKullandığı DE: KDE Plasma/XFCE4/Cinnamon                      ");
    print("\n", .{});
    morBeyaz("\t\t\t\tOS: Gentoo                                                    ");
    print("\n", .{});
    morSiyah("\t\t\t\tProjeler: tampermonkey-beyler, drunkenspin                    ");
    print("\n", .{});
    siyahMor("\t\t\t\tGitlab: https://gitlab.com/pwish                              ");
    print("\n", .{});
    morSiyah("\t\t\t\t                      pwish-zig @v1.0.0                        ");
    print("\n", .{});
    beyazMor("\t\t\t\t          zig port of the pwish-rs written by ibrahimsql            ");
    print("\n", .{});
}