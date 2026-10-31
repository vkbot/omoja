.class public final Lorg/apache/commons/net/nntp/NNTPCommand;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final ARTICLE:I = 0x0

.field public static final AUTHINFO:I = 0xf

.field public static final BODY:I = 0x1

.field public static final GROUP:I = 0x2

.field public static final HEAD:I = 0x3

.field public static final HELP:I = 0x4

.field public static final IHAVE:I = 0x5

.field public static final LAST:I = 0x6

.field public static final LIST:I = 0x7

.field public static final NEWGROUPS:I = 0x8

.field public static final NEWNEWS:I = 0x9

.field public static final NEXT:I = 0xa

.field public static final POST:I = 0xb

.field public static final QUIT:I = 0xc

.field public static final SLAVE:I = 0xd

.field public static final STAT:I = 0xe

.field public static final XHDR:I = 0x11

.field public static final XOVER:I = 0x10

.field private static final commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    const-string v17, "XOVER"

    .line 2
    .line 3
    const-string v18, "XHDR"

    .line 4
    .line 5
    const-string v1, "ARTICLE"

    .line 6
    .line 7
    const-string v2, "BODY"

    .line 8
    .line 9
    const-string v3, "GROUP"

    .line 10
    .line 11
    const-string v4, "HEAD"

    .line 12
    .line 13
    const-string v5, "HELP"

    .line 14
    .line 15
    const-string v6, "IHAVE"

    .line 16
    .line 17
    const-string v7, "LAST"

    .line 18
    .line 19
    const-string v8, "LIST"

    .line 20
    .line 21
    const-string v9, "NEWGROUPS"

    .line 22
    .line 23
    const-string v10, "NEWNEWS"

    .line 24
    .line 25
    const-string v11, "NEXT"

    .line 26
    .line 27
    const-string v12, "POST"

    .line 28
    .line 29
    const-string v13, "QUIT"

    .line 30
    .line 31
    const-string v14, "SLAVE"

    .line 32
    .line 33
    const-string v15, "STAT"

    .line 34
    .line 35
    const-string v16, "AUTHINFO"

    .line 36
    .line 37
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lorg/apache/commons/net/nntp/NNTPCommand;->commands:[Ljava/lang/String;

    .line 42
    .line 43
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
    sget-object v0, Lorg/apache/commons/net/nntp/NNTPCommand;->commands:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p0, v0, p0

    .line 4
    .line 5
    return-object p0
.end method
