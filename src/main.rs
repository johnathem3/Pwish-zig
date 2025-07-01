use colored::{Color, Colorize};
use std::fs::File;
use std::io::{self, Read};

// pwish.txt'yi embedle
const PWISH_AVATAR: &str = include_str!("../pwish.txt");

fn print_pwish_avatar() -> io::Result<()> {
    // embedi printle
    println!("{}", PWISH_AVATAR);
    Ok(())
}

fn main() {
    // avatar printleme fonksiyonu
    if let Err(e) = print_pwish_avatar() {
        eprintln!("Avatar bulunamadı: {}", e);
    }

    // renkler
    let mor_siyah = |s: &str| s.color(Color::Magenta).on_color(Color::Black);
    let siyah_mor = |s: &str| s.color(Color::Black).on_color(Color::Magenta);
    let beyaz_mor = |s: &str| s.color(Color::White).on_color(Color::Magenta);
    let mor_beyaz = |s: &str| s.color(Color::Magenta).on_color(Color::White);

    // bilgiler
    println!("{}", mor_siyah("\t\t\t\t                      pwish-rs @v1.0.0                        "));
    println!("{}", siyah_mor("\t\t\t\tAd: pwish                                                     "));
    println!("{}", mor_siyah("\t\t\t\tProgramlama dilleri: Java,Javascript,C,C++,C#,HTML,Python     "));
    println!("{}", beyaz_mor("\t\t\t\tKullandığı DE: KDE Plasma/XFCE4/Cinnamon                      "));
    println!("{}", mor_beyaz("\t\t\t\tOS: Gentoo                                                    "));
    println!("{}", mor_siyah("\t\t\t\tProjeler: tampermonkey-beyler, drunkenspin                    "));
    println!("{}", siyah_mor("\t\t\t\tGitlab: https://gitlab.com/pwish                              "));
    println!("{}", mor_siyah("\t\t\t\t                      pwish-rs @v1.0.0                        "));
    println!("{}", beyaz_mor("\t\t\t\t          rust port of the pwish-go written by pwish          "));
}
