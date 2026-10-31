.class public final Lorg/apache/commons/net/telnet/TelnetCommand;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final ABORT:I = 0xee

.field public static final AO:I = 0xf5

.field public static final AYT:I = 0xf6

.field public static final BREAK:I = 0xf3

.field public static final DM:I = 0xf2

.field public static final DO:I = 0xfd

.field public static final DONT:I = 0xfe

.field public static final EC:I = 0xf7

.field public static final EL:I = 0xf8

.field public static final EOF:I = 0xec

.field public static final EOR:I = 0xef

.field private static final FIRST_COMMAND:I = 0xff

.field public static final GA:I = 0xf9

.field public static final IAC:I = 0xff

.field public static final IP:I = 0xf4

.field private static final LAST_COMMAND:I = 0xec

.field public static final MAX_COMMAND_VALUE:I = 0xff

.field public static final NOP:I = 0xf1

.field public static final SB:I = 0xfa

.field public static final SE:I = 0xf0

.field public static final SUSP:I = 0xed

.field public static final SYNCH:I = 0xf2

.field public static final WILL:I = 0xfb

.field public static final WONT:I = 0xfc

.field private static final commandString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    const-string v19, "SUSP"

    .line 2
    .line 3
    const-string v20, "EOF"

    .line 4
    .line 5
    const-string v1, "IAC"

    .line 6
    .line 7
    const-string v2, "DONT"

    .line 8
    .line 9
    const-string v3, "DO"

    .line 10
    .line 11
    const-string v4, "WONT"

    .line 12
    .line 13
    const-string v5, "WILL"

    .line 14
    .line 15
    const-string v6, "SB"

    .line 16
    .line 17
    const-string v7, "GA"

    .line 18
    .line 19
    const-string v8, "EL"

    .line 20
    .line 21
    const-string v9, "EC"

    .line 22
    .line 23
    const-string v10, "AYT"

    .line 24
    .line 25
    const-string v11, "AO"

    .line 26
    .line 27
    const-string v12, "IP"

    .line 28
    .line 29
    const-string v13, "BRK"

    .line 30
    .line 31
    const-string v14, "DMARK"

    .line 32
    .line 33
    const-string v15, "NOP"

    .line 34
    .line 35
    const-string v16, "SE"

    .line 36
    .line 37
    const-string v17, "EOR"

    .line 38
    .line 39
    const-string v18, "ABORT"

    .line 40
    .line 41
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/apache/commons/net/telnet/TelnetCommand;->commandString:[Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCommand(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/telnet/TelnetCommand;->commandString:[Ljava/lang/String;

    .line 2
    .line 3
    rsub-int p0, p0, 0xff

    .line 4
    .line 5
    aget-object p0, v0, p0

    .line 6
    .line 7
    return-object p0
.end method

.method public static isValidCommand(I)Z
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-gt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xec

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method
