.class public final enum Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;
.super Ljava/lang/Enum;
.source "CommandLine.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;",
        ">;",
        "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum bg_black:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum bg_blue:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum bg_cyan:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum bg_green:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum bg_magenta:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum bg_red:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum bg_white:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum bg_yellow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum blink:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum bold:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum faint:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum fg_black:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum fg_blue:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum fg_cyan:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum fg_green:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum fg_magenta:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum fg_red:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum fg_white:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum fg_yellow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum italic:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum reset:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum reverse:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

.field public static final enum underline:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;


# instance fields
.field private final endCode:I

.field private final startCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4300
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "reset"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->reset:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "bold"

    const/4 v3, 0x1

    const/16 v4, 0x15

    invoke-direct {v0, v1, v3, v3, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bold:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "faint"

    const/4 v5, 0x2

    const/16 v6, 0x16

    invoke-direct {v0, v1, v5, v5, v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->faint:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "italic"

    const/4 v7, 0x3

    const/16 v8, 0x17

    invoke-direct {v0, v1, v7, v7, v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->italic:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "underline"

    const/4 v9, 0x4

    const/16 v10, 0x18

    invoke-direct {v0, v1, v9, v9, v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->underline:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "blink"

    const/4 v10, 0x5

    const/16 v11, 0x19

    invoke-direct {v0, v1, v10, v10, v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->blink:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "reverse"

    const/4 v11, 0x6

    const/4 v12, 0x7

    const/16 v13, 0x1b

    invoke-direct {v0, v1, v11, v12, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->reverse:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    .line 4301
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "fg_black"

    const/16 v13, 0x1e

    const/16 v14, 0x27

    invoke-direct {v0, v1, v12, v13, v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_black:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "fg_red"

    const/16 v13, 0x8

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v13, v15, v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_red:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "fg_green"

    const/16 v15, 0x9

    const/16 v13, 0x20

    invoke-direct {v0, v1, v15, v13, v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_green:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "fg_yellow"

    const/16 v13, 0xa

    const/16 v15, 0x21

    invoke-direct {v0, v1, v13, v15, v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_yellow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "fg_blue"

    const/16 v15, 0xb

    const/16 v13, 0x22

    invoke-direct {v0, v1, v15, v13, v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_blue:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "fg_magenta"

    const/16 v13, 0xc

    const/16 v15, 0x23

    invoke-direct {v0, v1, v13, v15, v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_magenta:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "fg_cyan"

    const/16 v15, 0xd

    const/16 v13, 0x24

    invoke-direct {v0, v1, v15, v13, v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_cyan:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "fg_white"

    const/16 v13, 0xe

    const/16 v15, 0x25

    invoke-direct {v0, v1, v13, v15, v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_white:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    .line 4302
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "bg_black"

    const/16 v14, 0xf

    const/16 v15, 0x28

    const/16 v13, 0x31

    invoke-direct {v0, v1, v14, v15, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_black:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "bg_red"

    const/16 v15, 0x10

    const/16 v14, 0x29

    invoke-direct {v0, v1, v15, v14, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_red:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "bg_green"

    const/16 v14, 0x11

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v14, v15, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_green:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "bg_yellow"

    const/16 v14, 0x12

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v14, v15, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_yellow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "bg_blue"

    const/16 v14, 0x13

    const/16 v15, 0x2c

    invoke-direct {v0, v1, v14, v15, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_blue:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "bg_magenta"

    const/16 v14, 0x14

    const/16 v15, 0x2d

    invoke-direct {v0, v1, v14, v15, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_magenta:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "bg_cyan"

    const/16 v14, 0x2e

    invoke-direct {v0, v1, v4, v14, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_cyan:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const-string v1, "bg_white"

    const/16 v14, 0x2f

    invoke-direct {v0, v1, v6, v14, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_white:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    .line 4299
    new-array v1, v8, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    sget-object v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->reset:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v8, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bold:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->faint:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->italic:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->underline:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->blink:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->reverse:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_black:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_red:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_green:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_yellow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_blue:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_magenta:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_cyan:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg_white:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_black:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_red:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_green:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_yellow:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_blue:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_magenta:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg_cyan:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    aput-object v2, v1, v4

    aput-object v0, v1, v6

    sput-object v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->$VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "startCode"    # I
    .param p4, "endCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "startCode",
            "endCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 4307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->startCode:I

    iput p4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->endCode:I

    return-void
.end method

.method public static bg(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "str"
        }
    .end annotation

    .line 4353
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4354
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 4355
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static fg(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "str"
        }
    .end annotation

    .line 4341
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4342
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 4343
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static varargs off([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Ljava/lang/String;
    .locals 5
    .param p0, "styles"    # [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "styles"
        }
    .end annotation

    .line 4327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4328
    .local v0, "result":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 4329
    .local v3, "style":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    invoke-interface {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;->off()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4328
    .end local v3    # "style":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4331
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs on([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Ljava/lang/String;
    .locals 5
    .param p0, "styles"    # [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "styles"
        }
    .end annotation

    .line 4317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4318
    .local v0, "result":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 4319
    .local v3, "style":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    invoke-interface {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;->on()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4318
    .end local v3    # "style":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4321
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/lang/String;)[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    .locals 7
    .param p0, "commaSeparatedCodes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "commaSeparatedCodes"
        }
    .end annotation

    .line 4364
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4365
    .local v0, "codes":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    .line 4366
    .local v1, "styles":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 4367
    aget-object v3, v0, v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fg("

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    const/16 v5, 0x29

    if-eqz v3, :cond_1

    .line 4368
    aget-object v3, v0, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 4369
    .local v3, "end":I
    aget-object v5, v0, v2

    if-gez v3, :cond_0

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    move-result-object v4

    aput-object v4, v1, v2

    .line 4370
    .end local v3    # "end":I
    goto :goto_3

    :cond_1
    aget-object v3, v0, v2

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "bg("

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4371
    aget-object v3, v0, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 4372
    .restart local v3    # "end":I
    aget-object v5, v0, v2

    if-gez v3, :cond_2

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->bg(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    move-result-object v4

    aput-object v4, v1, v2

    .line 4373
    .end local v3    # "end":I
    goto :goto_3

    .line 4374
    :cond_3
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->fg(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4366
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4377
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 4299
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;
    .locals 1

    .line 4299
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->$VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    return-object v0
.end method


# virtual methods
.method public off()Ljava/lang/String;
    .locals 2

    .line 4311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u001b["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->endCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public on()Ljava/lang/String;
    .locals 2

    .line 4309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u001b["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->startCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
