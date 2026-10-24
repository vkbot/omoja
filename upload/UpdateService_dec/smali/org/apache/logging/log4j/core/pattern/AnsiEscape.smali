.class public final enum Lorg/apache/logging/log4j/core/pattern/AnsiEscape;
.super Ljava/lang/Enum;
.source "AnsiEscape.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/pattern/AnsiEscape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BG_BLACK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BG_BLUE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BG_CYAN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BG_GREEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BG_MAGENTA:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BG_RED:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BG_WHITE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BG_YELLOW:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BLACK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BLINK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BLUE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum BRIGHT:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum CSI:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum CYAN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum DEFAULT:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field private static final DEFAULT_STYLE:Ljava/lang/String;

.field public static final enum DIM:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum FG_BLACK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum FG_BLUE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum FG_CYAN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum FG_DEFAULT:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum FG_GREEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum FG_MAGENTA:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum FG_RED:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum FG_WHITE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum FG_YELLOW:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum GREEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum HIDDEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum MAGENTA:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum NORMAL:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum RED:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum REVERSE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum SEPARATOR:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum SUFFIX:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum UNDERLINE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum WHITE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

.field public static final enum YELLOW:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 43
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "CSI"

    const/4 v2, 0x0

    const-string v3, "\u001b["

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->CSI:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 48
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "SUFFIX"

    const/4 v3, 0x1

    const-string v4, "m"

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->SUFFIX:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 53
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "SEPARATOR"

    const/4 v4, 0x2

    const-string v5, ";"

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->SEPARATOR:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 58
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "NORMAL"

    const/4 v5, 0x3

    const-string v6, "0"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->NORMAL:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 63
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BRIGHT"

    const/4 v6, 0x4

    const-string v7, "1"

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BRIGHT:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 68
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "DIM"

    const/4 v7, 0x5

    const-string v8, "2"

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->DIM:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 73
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "UNDERLINE"

    const/4 v8, 0x6

    const-string v9, "3"

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->UNDERLINE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 78
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BLINK"

    const/4 v9, 0x7

    const-string v10, "5"

    invoke-direct {v0, v1, v9, v10}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BLINK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 83
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "REVERSE"

    const/16 v10, 0x8

    const-string v11, "7"

    invoke-direct {v0, v1, v10, v11}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->REVERSE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 88
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "HIDDEN"

    const/16 v11, 0x9

    const-string v12, "8"

    invoke-direct {v0, v1, v11, v12}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->HIDDEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 93
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BLACK"

    const/16 v12, 0xa

    const-string v13, "30"

    invoke-direct {v0, v1, v12, v13}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BLACK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 98
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "FG_BLACK"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v13}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_BLACK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 103
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "RED"

    const/16 v13, 0xc

    const-string v15, "31"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->RED:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 108
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "FG_RED"

    const/16 v13, 0xd

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_RED:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 113
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "GREEN"

    const/16 v15, 0xe

    const-string v13, "32"

    invoke-direct {v0, v1, v15, v13}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->GREEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 118
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "FG_GREEN"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v13}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_GREEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 123
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "YELLOW"

    const/16 v13, 0x10

    const-string v15, "33"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->YELLOW:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 128
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "FG_YELLOW"

    const/16 v13, 0x11

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_YELLOW:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 133
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BLUE"

    const/16 v15, 0x12

    const-string v13, "34"

    invoke-direct {v0, v1, v15, v13}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BLUE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 138
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "FG_BLUE"

    const/16 v13, 0x13

    const-string v15, "34"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_BLUE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 143
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "MAGENTA"

    const/16 v13, 0x14

    const-string v15, "35"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->MAGENTA:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 148
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "FG_MAGENTA"

    const/16 v13, 0x15

    const-string v15, "35"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_MAGENTA:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 153
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "CYAN"

    const/16 v13, 0x16

    const-string v15, "36"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->CYAN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 158
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "FG_CYAN"

    const/16 v13, 0x17

    const-string v15, "36"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_CYAN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 163
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "WHITE"

    const/16 v13, 0x18

    const-string v15, "37"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->WHITE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 168
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "FG_WHITE"

    const/16 v13, 0x19

    const-string v15, "37"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_WHITE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 173
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "DEFAULT"

    const/16 v13, 0x1a

    const-string v15, "39"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->DEFAULT:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 178
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "FG_DEFAULT"

    const/16 v13, 0x1b

    const-string v15, "39"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_DEFAULT:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 183
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BG_BLACK"

    const/16 v13, 0x1c

    const-string v15, "40"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_BLACK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 188
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BG_RED"

    const/16 v13, 0x1d

    const-string v15, "41"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_RED:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 193
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BG_GREEN"

    const/16 v13, 0x1e

    const-string v15, "42"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_GREEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 198
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BG_YELLOW"

    const/16 v13, 0x1f

    const-string v15, "43"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_YELLOW:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 203
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BG_BLUE"

    const/16 v13, 0x20

    const-string v15, "44"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_BLUE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 208
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BG_MAGENTA"

    const/16 v13, 0x21

    const-string v15, "45"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_MAGENTA:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 213
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BG_CYAN"

    const/16 v13, 0x22

    const-string v15, "46"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_CYAN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 218
    new-instance v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const-string v1, "BG_WHITE"

    const/16 v13, 0x23

    const-string v15, "47"

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_WHITE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 35
    const/16 v1, 0x24

    new-array v1, v1, [Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    sget-object v13, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->CSI:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v13, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->SUFFIX:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->SEPARATOR:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->NORMAL:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BRIGHT:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->DIM:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->UNDERLINE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BLINK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->REVERSE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->HIDDEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BLACK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_BLACK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    aput-object v2, v1, v14

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->RED:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_RED:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->GREEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_GREEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->YELLOW:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_YELLOW:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BLUE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_BLUE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->MAGENTA:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_MAGENTA:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->CYAN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_CYAN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->WHITE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_WHITE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->DEFAULT:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->FG_DEFAULT:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_BLACK:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_RED:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_GREEN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_YELLOW:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_BLUE:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_MAGENTA:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->BG_CYAN:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const/16 v2, 0x23

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->$VALUES:[Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->CSI:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->SUFFIX:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->DEFAULT_STYLE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 225
    iput-object p3, p0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->code:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public static createMap(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "values"    # Ljava/lang/String;
    .param p1, "dontEscapeKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "values",
            "dontEscapeKeys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    sget-object v0, Lorg/apache/logging/log4j/core/util/Patterns;->COMMA_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createMap([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static createMap([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "dontEscapeKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "values",
            "dontEscapeKeys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/util/Strings;->EMPTY_ARRAY:[Ljava/lang/String;

    .line 294
    .local v0, "sortedIgnoreKeys":[Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 295
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, p0, v4

    .line 297
    .local v5, "string":Ljava/lang/String;
    const-string v6, "="

    invoke-static {v6}, Lorg/apache/logging/log4j/core/util/Patterns;->toWhitespaceSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "keyValue":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 299
    aget-object v7, v6, v3

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 300
    .local v7, "key":Ljava/lang/String;
    aget-object v9, v6, v8

    .line 301
    .local v9, "value":Ljava/lang/String;
    invoke-static {v0, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_1

    goto :goto_2

    :cond_1
    move v8, v3

    .line 302
    .local v8, "escape":Z
    :goto_2
    if-eqz v8, :cond_2

    const-string v10, "\\s"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->createSequence([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_2
    move-object v10, v9

    :goto_3
    invoke-interface {v1, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .end local v5    # "string":Ljava/lang/String;
    .end local v6    # "keyValue":[Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "escape":Z
    .end local v9    # "value":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 305
    :cond_4
    return-object v1
.end method

.method public static varargs createSequence([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "names"
        }
    .end annotation

    .line 316
    if-nez p0, :cond_0

    .line 317
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->getDefaultStyle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->CSI:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 321
    .local v1, "first":Z
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 323
    .local v4, "name":Ljava/lang/String;
    :try_start_0
    const-class v5, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/logging/log4j/util/EnglishEnums;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    .line 324
    .local v5, "escape":Lorg/apache/logging/log4j/core/pattern/AnsiEscape;
    if-nez v1, :cond_1

    .line 325
    sget-object v6, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->SEPARATOR:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    invoke-virtual {v6}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_1
    const/4 v1, 0x0

    .line 328
    invoke-virtual {v5}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    nop

    .end local v5    # "escape":Lorg/apache/logging/log4j/core/pattern/AnsiEscape;
    goto :goto_1

    .line 329
    :catch_0
    move-exception v5

    .line 321
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 333
    :cond_2
    sget-object v2, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->SUFFIX:Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDefaultStyle()Ljava/lang/String;
    .locals 1

    .line 234
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->DEFAULT_STYLE:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/pattern/AnsiEscape;
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

    .line 35
    const-class v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/pattern/AnsiEscape;
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->$VALUES:[Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/pattern/AnsiEscape;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/AnsiEscape;->code:Ljava/lang/String;

    return-object v0
.end method
