.class Landroid/telephony/JapanesePhoneNumberFormatter;
.super Ljava/lang/Object;
.source "JapanesePhoneNumberFormatter.java"


# static fields
.field private static FORMAT_MAP:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4ba

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/JapanesePhoneNumberFormatter;->FORMAT_MAP:[S

    return-void

    :array_0
    .array-data 0x2
        0x9ct 0xfft
        0xat 0x0t
        0xdct 0x0t
        0xf1t 0xfft
        0x9at 0x1t
        0x12t 0x2t
        0xb0t 0x4t
        0x9et 0x2t
        0xct 0x3t
        0x24t 0x4t
        0x9ct 0xfft
        0xe7t 0xfft
        0x14t 0x0t
        0x28t 0x0t
        0x46t 0x0t
        0x64t 0x0t
        0x96t 0x0t
        0xbet 0x0t
        0xc8t 0x0t
        0xd2t 0x0t
        0xdct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x1et 0x0t
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x32t 0x0t
        0xddt 0xfft
        0x3ct 0x0t
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x50t 0x0t
        0x5at 0x0t
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x6et 0x0t
        0x78t 0x0t
        0x82t 0x0t
        0xddt 0xfft
        0x8ct 0x0t
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xa0t 0x0t
        0xaat 0x0t
        0xb4t 0x0t
        0xddt 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xe6t 0x0t
        0xfat 0x0t
        0x4t 0x1t
        0xet 0x1t
        0x40t 0x1t
        0x54t 0x1t
        0x68t 0x1t
        0x86t 0x1t
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xf0t 0x0t
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0x18t 0x1t
        0x22t 0x1t
        0x2ct 0x1t
        0x36t 0x1t
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0x4at 0x1t
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x5et 0x1t
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0x72t 0x1t
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x7ct 0x1t
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0x90t 0x1t
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xa4t 0x1t
        0xcct 0x1t
        0xe7t 0xfft
        0xe7t 0xfft
        0xd6t 0x1t
        0xe0t 0x1t
        0xf4t 0x1t
        0xfet 0x1t
        0xf1t 0xfft
        0xe7t 0xfft
        0xaet 0x1t
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xb8t 0x1t
        0xc2t 0x1t
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xf1t 0xfft
        0xe7t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xf1t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xeat 0x1t
        0xf1t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xf1t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xf1t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0x8t 0x2t
        0x9ct 0xfft
        0x9ct 0xfft
        0xd3t 0xfft
        0x9ct 0xfft
        0xd3t 0xfft
        0x9ct 0xfft
        0xd3t 0xfft
        0x9ct 0xfft
        0xd3t 0xfft
        0x9ct 0xfft
        0xe6t 0xfft
        0x9ct 0xfft
        0xe7t 0xfft
        0x1ct 0x2t
        0x44t 0x2t
        0x4et 0x2t
        0x58t 0x2t
        0x62t 0x2t
        0x76t 0x2t
        0x80t 0x2t
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x26t 0x2t
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0x30t 0x2t
        0x3at 0x2t
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xdct 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x6ct 0x2t
        0xddt 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x8at 0x2t
        0xddt 0xfft
        0x94t 0x2t
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe6t 0xfft
        0x9ct 0xfft
        0xa8t 0x2t
        0xb2t 0x2t
        0xbct 0x2t
        0xe7t 0xfft
        0xd0t 0x2t
        0xdat 0x2t
        0xe7t 0xfft
        0xe4t 0x2t
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xc6t 0x2t
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xeet 0x2t
        0xf8t 0x2t
        0x2t 0x3t
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x16t 0x3t
        0x9ct 0xfft
        0x20t 0x3t
        0x52t 0x3t
        0x84t 0x3t
        0x98t 0x3t
        0xact 0x3t
        0x6t 0x4t
        0x10t 0x4t
        0x1at 0x4t
        0xdct 0xfft
        0xe6t 0xfft
        0xe6t 0xfft
        0xe6t 0xfft
        0xe6t 0xfft
        0xe6t 0xfft
        0xe6t 0xfft
        0xe6t 0xfft
        0xe6t 0xfft
        0xe6t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0x2at 0x3t
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0x34t 0x3t
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0x3et 0x3t
        0xddt 0xfft
        0x48t 0x3t
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0x9ct 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x5ct 0x3t
        0xddt 0xfft
        0x66t 0x3t
        0x70t 0x3t
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x7at 0x3t
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xe7t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xe7t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xe7t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x8et 0x3t
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0xa2t 0x3t
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xd3t 0xfft
        0x9ct 0xfft
        0xd3t 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xb6t 0x3t
        0xe7t 0xfft
        0xcat 0x3t
        0xdet 0x3t
        0xddt 0xfft
        0xe8t 0x3t
        0xf2t 0x3t
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xc0t 0x3t
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd4t 0x3t
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xfct 0x3t
        0xd3t 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe6t 0xfft
        0x9ct 0xfft
        0x2et 0x4t
        0x38t 0x4t
        0x42t 0x4t
        0x56t 0x4t
        0x60t 0x4t
        0x6at 0x4t
        0x74t 0x4t
        0x88t 0x4t
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x9ct 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x4ct 0x4t
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x7et 0x4t
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0x92t 0x4t
        0xe7t 0xfft
        0xddt 0xfft
        0x9ct 0x4t
        0xddt 0xfft
        0xa6t 0x4t
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xd3t 0xfft
        0xd3t 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0x9ct 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xe7t 0xfft
        0xe7t 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xddt 0xfft
        0xd3t 0xfft
        0xe6t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
        0xf1t 0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v6, 0x1

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v5, v12, :cond_1

    invoke-interface {p0, v11, v12}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "+81"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x3

    :cond_0
    invoke-interface {p0, v11, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v4, v9, :cond_4

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_3

    add-int/lit8 v9, v4, 0x1

    invoke-interface {p0, v4, v9}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    if-lt v5, v9, :cond_2

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-eq v9, v10, :cond_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v5

    move v4, v6

    const/4 v0, 0x0

    :goto_2
    if-ge v4, v5, :cond_8

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {p0, v11, v5, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    :cond_5
    sget-object v9, Landroid/telephony/JapanesePhoneNumberFormatter;->FORMAT_MAP:[S

    add-int v10, v0, v1

    add-int/lit8 v10, v10, -0x30

    aget-short v8, v9, v10

    if-gez v8, :cond_9

    const/16 v9, -0x64

    if-gt v8, v9, :cond_6

    invoke-interface {p0, v11, v5, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    :cond_6
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0xa

    add-int v3, v6, v9

    if-le v5, v3, :cond_7

    const-string v9, "-"

    invoke-interface {p0, v3, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_7
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int/lit8 v9, v9, 0xa

    add-int v2, v6, v9

    if-le v5, v2, :cond_8

    const-string v9, "-"

    invoke-interface {p0, v2, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_8
    if-le v5, v12, :cond_2

    if-ne v6, v12, :cond_2

    const-string v9, "-"

    invoke-interface {p0, v6, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    :cond_9
    move v0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
