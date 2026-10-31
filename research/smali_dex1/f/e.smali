.class public final Lf/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Ljava/io/FileInputStream;

.field public final c:Ljava/nio/charset/Charset;

.field public d:[B

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_1f

    .line 5
    .line 6
    sget-object v0, Lf/f;->a:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_18

    .line 13
    .line 14
    iput-object p1, p0, Lf/e;->b:Ljava/io/FileInputStream;

    .line 15
    .line 16
    iput-object p2, p0, Lf/e;->c:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    const/16 p1, 0x2000

    .line 19
    .line 20
    new-array p1, p1, [B

    .line 21
    .line 22
    iput-object p1, p0, Lf/e;->d:[B

    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    const-string p1, "Unsupported encoding"

    .line 26
    .line 27
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    throw p1

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    throw p1
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lf/e;->b:Ljava/io/FileInputStream;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lf/e;->d:[B

    .line 5
    .line 6
    if-eqz v1, :cond_a4

    .line 7
    .line 8
    iget v2, p0, Lf/e;->e:I

    .line 9
    .line 10
    iget v3, p0, Lf/e;->f:I

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, -0x1

    .line 14
    if-lt v2, v3, :cond_23

    .line 15
    .line 16
    iget-object v2, p0, Lf/e;->b:Ljava/io/FileInputStream;

    .line 17
    .line 18
    array-length v3, v1

    .line 19
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eq v1, v5, :cond_1d

    .line 24
    .line 25
    iput v4, p0, Lf/e;->e:I

    .line 26
    .line 27
    iput v1, p0, Lf/e;->f:I

    .line 28
    .line 29
    goto :goto_23

    .line 30
    :cond_1d
    new-instance v1, Ljava/io/EOFException;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :cond_23
    :goto_23
    iget v1, p0, Lf/e;->e:I

    .line 37
    .line 38
    :goto_25
    iget v2, p0, Lf/e;->f:I

    .line 39
    .line 40
    const/16 v3, 0xa

    .line 41
    .line 42
    if-eq v1, v2, :cond_56

    .line 43
    .line 44
    iget-object v2, p0, Lf/e;->d:[B

    .line 45
    .line 46
    aget-byte v6, v2, v1

    .line 47
    .line 48
    if-ne v6, v3, :cond_53

    .line 49
    .line 50
    iget v3, p0, Lf/e;->e:I

    .line 51
    .line 52
    if-eq v1, v3, :cond_40

    .line 53
    .line 54
    add-int/lit8 v4, v1, -0x1

    .line 55
    .line 56
    aget-byte v5, v2, v4

    .line 57
    .line 58
    const/16 v6, 0xd

    .line 59
    .line 60
    if-ne v5, v6, :cond_40

    .line 61
    .line 62
    goto :goto_41

    .line 63
    :catchall_3e
    move-exception v1

    .line 64
    goto :goto_ac

    .line 65
    :cond_40
    move v4, v1

    .line 66
    :goto_41
    new-instance v5, Ljava/lang/String;

    .line 67
    .line 68
    sub-int/2addr v4, v3

    .line 69
    iget-object v6, p0, Lf/e;->c:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    iput v1, p0, Lf/e;->e:I

    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-object v5

    .line 84
    :cond_53
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_25

    .line 87
    :cond_56
    new-instance v1, Lf/d;

    .line 88
    .line 89
    iget v2, p0, Lf/e;->f:I

    .line 90
    .line 91
    iget v6, p0, Lf/e;->e:I

    .line 92
    .line 93
    sub-int/2addr v2, v6

    .line 94
    add-int/lit8 v2, v2, 0x50

    .line 95
    .line 96
    invoke-direct {v1, p0, v2}, Lf/d;-><init>(Lf/e;I)V

    .line 97
    .line 98
    .line 99
    :cond_62
    iget-object v2, p0, Lf/e;->d:[B

    .line 100
    .line 101
    iget v6, p0, Lf/e;->e:I

    .line 102
    .line 103
    iget v7, p0, Lf/e;->f:I

    .line 104
    .line 105
    sub-int/2addr v7, v6

    .line 106
    invoke-virtual {v1, v2, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 107
    .line 108
    .line 109
    iput v5, p0, Lf/e;->f:I

    .line 110
    .line 111
    iget-object v2, p0, Lf/e;->b:Ljava/io/FileInputStream;

    .line 112
    .line 113
    iget-object v6, p0, Lf/e;->d:[B

    .line 114
    .line 115
    array-length v7, v6

    .line 116
    invoke-virtual {v2, v6, v4, v7}, Ljava/io/InputStream;->read([BII)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eq v2, v5, :cond_9e

    .line 121
    .line 122
    iput v4, p0, Lf/e;->e:I

    .line 123
    .line 124
    iput v2, p0, Lf/e;->f:I

    .line 125
    .line 126
    move v2, v4

    .line 127
    :goto_7e
    iget v6, p0, Lf/e;->f:I

    .line 128
    .line 129
    if-eq v2, v6, :cond_62

    .line 130
    .line 131
    iget-object v6, p0, Lf/e;->d:[B

    .line 132
    .line 133
    aget-byte v7, v6, v2

    .line 134
    .line 135
    if-ne v7, v3, :cond_9b

    .line 136
    .line 137
    iget v3, p0, Lf/e;->e:I

    .line 138
    .line 139
    if-eq v2, v3, :cond_91

    .line 140
    .line 141
    sub-int v4, v2, v3

    .line 142
    .line 143
    invoke-virtual {v1, v6, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 144
    .line 145
    .line 146
    :cond_91
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    iput v2, p0, Lf/e;->e:I

    .line 149
    .line 150
    invoke-virtual {v1}, Lf/d;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    monitor-exit v0

    .line 155
    return-object v1

    .line 156
    :cond_9b
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto :goto_7e

    .line 159
    :cond_9e
    new-instance v1, Ljava/io/EOFException;

    .line 160
    .line 161
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 162
    .line 163
    .line 164
    throw v1

    .line 165
    :cond_a4
    new-instance v1, Ljava/io/IOException;

    .line 166
    .line 167
    const-string v2, "LineReader is closed"

    .line 168
    .line 169
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v1

    .line 173
    :goto_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_3 .. :try_end_ad} :catchall_3e

    .line 174
    throw v1
.end method

.method public final close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lf/e;->b:Ljava/io/FileInputStream;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lf/e;->d:[B

    .line 5
    .line 6
    if-eqz v1, :cond_12

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lf/e;->d:[B

    .line 10
    .line 11
    iget-object v1, p0, Lf/e;->b:Ljava/io/FileInputStream;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 14
    .line 15
    .line 16
    goto :goto_12

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    :goto_12
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_10

    .line 22
    throw v1
.end method
