.class public final Lorg/apache/commons/net/smtp/SMTPCommand;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final AUTH:I = 0xe

.field public static final DATA:I = 0x3

.field public static final EHLO:I = 0xf

.field public static final EXPAND:I = 0x9

.field public static final EXPN:I = 0x9

.field public static final HELLO:I = 0x0

.field public static final HELO:I = 0x0

.field public static final HELP:I = 0xa

.field public static final LOGIN:I = 0x0

.field public static final LOGOUT:I = 0xd

.field public static final MAIL:I = 0x1

.field public static final MAIL_FROM:I = 0x1

.field private static final NEXT:I = 0x10

.field public static final NOOP:I = 0xb

.field public static final QUIT:I = 0xd

.field public static final RCPT:I = 0x2

.field public static final RECIPIENT:I = 0x2

.field public static final RESET:I = 0x7

.field public static final RSET:I = 0x7

.field public static final SAML:I = 0x6

.field public static final SEND:I = 0x4

.field public static final SEND_AND_MAIL_FROM:I = 0x6

.field public static final SEND_FROM:I = 0x4

.field public static final SEND_MESSAGE_DATA:I = 0x3

.field public static final SEND_OR_MAIL_FROM:I = 0x5

.field public static final SOML:I = 0x5

.field public static final TURN:I = 0xc

.field public static final VERIFY:I = 0x8

.field public static final VRFY:I = 0x8

.field private static final commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 1
    const-string v15, "AUTH"

    .line 2
    .line 3
    const-string v16, "EHLO"

    .line 4
    .line 5
    const-string v1, "HELO"

    .line 6
    .line 7
    const-string v2, "MAIL FROM:"

    .line 8
    .line 9
    const-string v3, "RCPT TO:"

    .line 10
    .line 11
    const-string v4, "DATA"

    .line 12
    .line 13
    const-string v5, "SEND FROM:"

    .line 14
    .line 15
    const-string v6, "SOML FROM:"

    .line 16
    .line 17
    const-string v7, "SAML FROM:"

    .line 18
    .line 19
    const-string v8, "RSET"

    .line 20
    .line 21
    const-string v9, "VRFY"

    .line 22
    .line 23
    const-string v10, "EXPN"

    .line 24
    .line 25
    const-string v11, "HELP"

    .line 26
    .line 27
    const-string v12, "NOOP"

    .line 28
    .line 29
    const-string v13, "TURN"

    .line 30
    .line 31
    const-string v14, "QUIT"

    .line 32
    .line 33
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/apache/commons/net/smtp/SMTPCommand;->commands:[Ljava/lang/String;

    .line 38
    .line 39
    array-length v0, v0

    .line 40
    const/16 v1, 0x10

    .line 41
    .line 42
    if-ne v0, v1, :cond_2c

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    const-string v0, "Error in array definition"

    .line 46
    .line 47
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getCommand(I)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/apache/commons/net/smtp/SMTPCommand;->commands:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p0, v0, p0

    .line 4
    .line 5
    return-object p0
.end method
