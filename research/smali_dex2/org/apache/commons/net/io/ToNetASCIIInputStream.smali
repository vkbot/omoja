.class public final Lorg/apache/commons/net/io/ToNetASCIIInputStream;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final LAST_WAS_CR:I = 0x1

.field private static final LAST_WAS_NL:I = 0x2

.field private static final NOTHING_SPECIAL:I


# instance fields
.field private status:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->status:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public available()I
    .registers 4

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->status:I

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v1, v2, :cond_d

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    :cond_d
    return v0
.end method

.method public markSupported()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public read()I
    .registers 7

    .line 46
    iget v0, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->status:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 47
    iput v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->status:I

    return v1

    .line 48
    :cond_b
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v4, 0x1

    const/16 v5, 0xd

    if-eq v0, v1, :cond_1c

    if-eq v0, v5, :cond_19

    goto :goto_23

    .line 49
    :cond_19
    iput v4, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->status:I

    return v5

    .line 50
    :cond_1c
    iget v1, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->status:I

    if-eq v1, v4, :cond_23

    .line 51
    iput v3, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->status:I

    return v5

    .line 52
    :cond_23
    :goto_23
    iput v2, p0, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->status:I

    return v0
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    .line 45
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p3, v0, :cond_5

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1

    .line 6
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->available()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-le p3, v1, :cond_c

    .line 11
    .line 12
    move p3, v1

    .line 13
    :cond_c
    if-ge p3, v0, :cond_f

    .line 14
    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v0, p3

    .line 17
    :goto_10
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    const/4 v1, -0x1

    .line 22
    if-ne p3, v1, :cond_18

    .line 23
    .line 24
    return v1

    .line 25
    :cond_18
    move v2, p2

    .line 26
    :goto_19
    add-int/lit8 v3, v2, 0x1

    .line 27
    .line 28
    int-to-byte p3, p3

    .line 29
    aput-byte p3, p1, v2

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    if-lez v0, :cond_2a

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;->read()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-ne p3, v1, :cond_28

    .line 39
    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    move v2, v3

    .line 42
    goto :goto_19

    .line 43
    :cond_2a
    :goto_2a
    sub-int/2addr v3, p2

    .line 44
    return v3
.end method
