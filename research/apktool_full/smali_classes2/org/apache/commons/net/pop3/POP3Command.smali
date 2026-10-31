.class public final Lorg/apache/commons/net/pop3/POP3Command;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final APOP:I = 0x9

.field public static final AUTH:I = 0xd

.field public static final CAPA:I = 0xc

.field public static final DELE:I = 0x6

.field public static final LIST:I = 0x4

.field private static final NEXT:I = 0xe

.field public static final NOOP:I = 0x7

.field public static final PASS:I = 0x1

.field public static final QUIT:I = 0x2

.field public static final RETR:I = 0x5

.field public static final RSET:I = 0x8

.field public static final STAT:I = 0x3

.field public static final TOP:I = 0xa

.field public static final UIDL:I = 0xb

.field public static final USER:I

.field static final commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string v12, "CAPA"

    .line 2
    .line 3
    const-string v13, "AUTH"

    .line 4
    .line 5
    const-string v0, "USER"

    .line 6
    .line 7
    const-string v1, "PASS"

    .line 8
    .line 9
    const-string v2, "QUIT"

    .line 10
    .line 11
    const-string v3, "STAT"

    .line 12
    .line 13
    const-string v4, "LIST"

    .line 14
    .line 15
    const-string v5, "RETR"

    .line 16
    .line 17
    const-string v6, "DELE"

    .line 18
    .line 19
    const-string v7, "NOOP"

    .line 20
    .line 21
    const-string v8, "RSET"

    .line 22
    .line 23
    const-string v9, "APOP"

    .line 24
    .line 25
    const-string v10, "TOP"

    .line 26
    .line 27
    const-string v11, "UIDL"

    .line 28
    .line 29
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lorg/apache/commons/net/pop3/POP3Command;->commands:[Ljava/lang/String;

    .line 34
    .line 35
    array-length v0, v0

    .line 36
    const/16 v1, 0xe

    .line 37
    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const-string v0, "Error in array definition"

    .line 42
    .line 43
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
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
    sget-object v0, Lorg/apache/commons/net/pop3/POP3Command;->commands:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p0, v0, p0

    .line 4
    .line 5
    return-object p0
.end method
