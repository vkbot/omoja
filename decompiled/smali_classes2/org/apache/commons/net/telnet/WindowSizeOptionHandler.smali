.class public Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field protected static final WINDOW_SIZE:I = 0x1f


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    const/16 v1, 0x1f

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
    iput p1, v0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->width:I

    .line 12
    .line 13
    iput p2, v0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->height:I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(IIZZZZ)V
    .locals 6

    const/16 v1, 0x1f

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 16
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 17
    iput p1, v0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->width:I

    .line 18
    iput p2, v0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->height:I

    return-void
.end method


# virtual methods
.method public startSubnegotiationLocal()[I
    .locals 8

    .line 1
    iget v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->width:I

    .line 2
    .line 3
    const/high16 v1, 0x10000

    .line 4
    .line 5
    mul-int/2addr v1, v0

    .line 6
    iget v2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->height:I

    .line 7
    .line 8
    add-int/2addr v1, v2

    .line 9
    rem-int/lit16 v3, v0, 0x100

    .line 10
    .line 11
    const/16 v4, 0xff

    .line 12
    .line 13
    if-ne v3, v4, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x6

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x5

    .line 18
    :goto_0
    div-int/lit16 v0, v0, 0x100

    .line 19
    .line 20
    if-ne v0, v4, :cond_1

    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    :cond_1
    rem-int/lit16 v0, v2, 0x100

    .line 25
    .line 26
    if-ne v0, v4, :cond_2

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    :cond_2
    div-int/lit16 v2, v2, 0x100

    .line 31
    .line 32
    if-ne v2, v4, :cond_3

    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    :cond_3
    new-array v0, v3, [I

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const/16 v5, 0x1f

    .line 40
    .line 41
    aput v5, v0, v2

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    const/16 v5, 0x18

    .line 45
    .line 46
    move v6, v2

    .line 47
    :goto_1
    if-ge v6, v3, :cond_5

    .line 48
    .line 49
    shl-int v7, v4, v5

    .line 50
    .line 51
    and-int/2addr v7, v1

    .line 52
    ushr-int/2addr v7, v5

    .line 53
    aput v7, v0, v6

    .line 54
    .line 55
    if-ne v7, v4, :cond_4

    .line 56
    .line 57
    add-int/lit8 v6, v6, 0x1

    .line 58
    .line 59
    aput v4, v0, v6

    .line 60
    .line 61
    :cond_4
    add-int/2addr v6, v2

    .line 62
    add-int/lit8 v5, v5, -0x8

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    return-object v0
.end method
