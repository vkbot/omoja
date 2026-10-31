.class public Lorg/apache/commons/io/input/TeeReader;
.super Lorg/apache/commons/io/input/ProxyReader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private final branch:Ljava/io/Writer;

.field private final closeBranch:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/io/Writer;)V
    .registers 4

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/TeeReader;-><init>(Ljava/io/Reader;Ljava/io/Writer;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/Writer;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;-><init>(Ljava/io/Reader;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    .line 5
    .line 6
    iput-boolean p3, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyReader;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    .line 5
    .line 6
    if-eqz v0, :cond_c

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void

    .line 14
    :catchall_d
    move-exception v0

    .line 15
    iget-boolean v1, p0, Lorg/apache/commons/io/input/TeeReader;->closeBranch:Z

    .line 16
    .line 17
    if-eqz v1, :cond_17

    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 22
    .line 23
    .line 24
    :cond_17
    throw v0
.end method

.method public read()I
    .registers 3

    .line 54
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyReader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 55
    iget-object v1, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    :cond_c
    return v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->read(Ljava/nio/CharBuffer;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_30

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    :try_start_13
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_27

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_30
    return v1
.end method

.method public read([C)I
    .registers 5

    .line 50
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->read([C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 51
    iget-object v1, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/Writer;->write([CII)V

    :cond_d
    return v0
.end method

.method public read([CII)I
    .registers 5

    .line 52
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyReader;->read([CII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_c

    .line 53
    iget-object v0, p0, Lorg/apache/commons/io/input/TeeReader;->branch:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    :cond_c
    return p3
.end method
