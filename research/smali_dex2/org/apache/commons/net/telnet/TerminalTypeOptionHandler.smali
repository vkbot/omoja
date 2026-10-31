.class public Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field protected static final TERMINAL_TYPE:I = 0x18

.field protected static final TERMINAL_TYPE_IS:I = 0x0

.field protected static final TERMINAL_TYPE_SEND:I = 0x1


# instance fields
.field private final termType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v0, p0

    .line 8
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 9
    .line 10
    .line 11
    iput-object p1, v0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZ)V
    .registers 12

    const/16 v1, 0x18

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 14
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 15
    iput-object p1, v0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .registers 7

    .line 1
    if-eqz p1, :cond_36

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-le p2, v0, :cond_36

    .line 5
    .line 6
    iget-object p2, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p2, :cond_36

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget v2, p1, v1

    .line 12
    .line 13
    const/16 v3, 0x18

    .line 14
    .line 15
    if-ne v2, v3, :cond_36

    .line 16
    .line 17
    aget p1, p1, v0

    .line 18
    .line 19
    if-ne p1, v0, :cond_36

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    add-int/lit8 p1, p1, 0x2

    .line 26
    .line 27
    new-array p1, p1, [I

    .line 28
    .line 29
    aput v3, p1, v1

    .line 30
    .line 31
    aput v1, p1, v0

    .line 32
    .line 33
    :goto_20
    iget-object p2, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-ge v1, p2, :cond_35

    .line 40
    .line 41
    add-int/lit8 p2, v1, 0x2

    .line 42
    .line 43
    iget-object v0, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    aput v0, p1, p2

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_20

    .line 54
    :cond_35
    return-object p1

    .line 55
    :cond_36
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method
