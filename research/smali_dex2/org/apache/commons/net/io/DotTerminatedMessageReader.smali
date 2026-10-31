.class public final Lorg/apache/commons/net/io/DotTerminatedMessageReader;
.super Ljava/io/BufferedReader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final CR:C = '\r'

.field private static final DOT:I = 0x2e

.field private static final LF:C = '\n'


# instance fields
.field private atBeginning:Z

.field private eof:Z

.field private seenCR:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 1
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 5
    .line 6
    if-nez v1, :cond_11

    .line 7
    .line 8
    :goto_7
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, -0x1

    .line 13
    if-eq v1, v2, :cond_11

    .line 14
    .line 15
    goto :goto_7

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    goto :goto_19

    .line 18
    :cond_11
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_f

    .line 27
    throw v1
.end method

.method public read()I
    .registers 9

    .line 1
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz v1, :cond_c

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v2

    .line 11
    :catchall_a
    move-exception v1

    .line 12
    goto :goto_63

    .line 13
    :cond_c
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v1, v2, :cond_17

    .line 19
    .line 20
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return v2

    .line 24
    :cond_17
    iget-boolean v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 25
    .line 26
    const/16 v5, 0xa

    .line 27
    .line 28
    const/16 v6, 0xd

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    if-eqz v4, :cond_53

    .line 32
    .line 33
    iput-boolean v7, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 34
    .line 35
    const/16 v4, 0x2e

    .line 36
    .line 37
    if-ne v1, v4, :cond_53

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-virtual {p0, v1}, Ljava/io/Reader;->mark(I)V

    .line 41
    .line 42
    .line 43
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eq v1, v2, :cond_4f

    .line 48
    .line 49
    if-eq v1, v6, :cond_37

    .line 50
    .line 51
    if-eq v1, v4, :cond_35

    .line 52
    .line 53
    goto :goto_4a

    .line 54
    :cond_35
    monitor-exit v0

    .line 55
    return v1

    .line 56
    :cond_37
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ne v1, v2, :cond_42

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    .line 63
    .line 64
    .line 65
    monitor-exit v0

    .line 66
    return v4

    .line 67
    :cond_42
    if-ne v1, v5, :cond_4a

    .line 68
    .line 69
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 70
    .line 71
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 72
    .line 73
    monitor-exit v0

    .line 74
    return v2

    .line 75
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    return v4

    .line 80
    :cond_4f
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return v4

    .line 84
    :cond_53
    iget-boolean v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    .line 85
    .line 86
    if-eqz v2, :cond_5d

    .line 87
    .line 88
    iput-boolean v7, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    .line 89
    .line 90
    if-ne v1, v5, :cond_5d

    .line 91
    .line 92
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 93
    .line 94
    :cond_5d
    if-ne v1, v6, :cond_61

    .line 95
    .line 96
    iput-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    .line 97
    .line 98
    :cond_61
    monitor-exit v0

    .line 99
    return v1

    .line 100
    :goto_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_a

    .line 101
    throw v1
.end method

.method public read([C)I
    .registers 4

    const/4 v0, 0x0

    .line 102
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read([CII)I

    move-result p1

    return p1
.end method

.method public read([CII)I
    .registers 9

    const/4 v0, 0x1

    if-ge p3, v0, :cond_5

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_5
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 105
    monitor-exit v0

    return v2

    :catchall_11
    move-exception p1

    goto :goto_28

    :cond_13
    move v3, p2

    :goto_14
    add-int/lit8 v4, v3, 0x1

    int-to-char v1, v1

    .line 106
    aput-char v1, p1, v3

    add-int/2addr p3, v2

    if-lez p3, :cond_25

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1

    if-ne v1, v2, :cond_23

    goto :goto_25

    :cond_23
    move v3, v4

    goto :goto_14

    :cond_25
    :goto_25
    sub-int/2addr v4, p2

    .line 108
    monitor-exit v0

    return v4

    .line 109
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_11

    throw p1
.end method

.method public readLine()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    if-eq v2, v3, :cond_2b

    .line 15
    .line 16
    const/16 v3, 0xa

    .line 17
    .line 18
    if-ne v2, v3, :cond_26

    .line 19
    .line 20
    iget-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    .line 21
    .line 22
    if-eqz v3, :cond_26

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    monitor-exit v1

    .line 36
    return-object v0

    .line 37
    :catchall_24
    move-exception v0

    .line 38
    goto :goto_38

    .line 39
    :cond_26
    int-to-char v2, v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_8

    .line 44
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_24

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_37

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    :cond_37
    return-object v0

    .line 57
    :goto_38
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_24

    .line 58
    throw v0
.end method
