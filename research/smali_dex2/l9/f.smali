.class public final Ll9/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll9/g0;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ll9/j0;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ll9/f;->b:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ll9/f;->c:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p2, p0, Ll9/f;->d:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Ll9/g;Ll9/g0;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Ll9/f;->b:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Ll9/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll9/f;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 4

    .line 1
    iget v0, p0, Ll9/f;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ll9/f;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_3c

    .line 6
    .line 7
    .line 8
    check-cast v1, Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    check-cast v1, Ll9/g;

    .line 15
    .line 16
    iget-object v0, p0, Ll9/f;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ll9/g0;

    .line 19
    .line 20
    invoke-virtual {v1}, Ll9/g;->enter()V

    .line 21
    .line 22
    .line 23
    :try_start_16
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_2a
    .catchall {:try_start_16 .. :try_end_1b} :catchall_28

    .line 27
    .line 28
    invoke-virtual {v1}, Ll9/g;->exit()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_22

    .line 33
    .line 34
    return-void

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    invoke-virtual {v1, v0}, Ll9/g;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    throw v0

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    goto :goto_37

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    :try_start_2b
    invoke-virtual {v1}, Ll9/g;->exit()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_32

    .line 49
    .line 50
    goto :goto_36

    .line 51
    :cond_32
    invoke-virtual {v1, v0}, Ll9/g;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_36
    throw v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    .line 56
    :goto_37
    invoke-virtual {v1}, Ll9/g;->exit()Z

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    nop

    .line 61
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public final read(Ll9/l;J)J
    .registers 7

    .line 1
    iget v0, p0, Ll9/f;->b:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    packed-switch v0, :pswitch_data_a0

    .line 7
    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long v2, p2, v0

    .line 12
    .line 13
    if-nez v2, :cond_f

    .line 14
    .line 15
    goto :goto_70

    .line 16
    :cond_f
    if-ltz v2, :cond_65

    .line 17
    .line 18
    :try_start_11
    iget-object v0, p0, Ll9/f;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ll9/j0;

    .line 21
    .line 22
    invoke-virtual {v0}, Ll9/j0;->throwIfReached()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Ll9/l;->k0(I)Ll9/b0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v1, v0, Ll9/b0;->c:I

    .line 31
    .line 32
    rsub-int v1, v1, 0x2000

    .line 33
    .line 34
    int-to-long v1, v1

    .line 35
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide p2

    .line 39
    long-to-int p2, p2

    .line 40
    iget-object p3, p0, Ll9/f;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p3, Ljava/io/InputStream;

    .line 43
    .line 44
    iget-object v1, v0, Ll9/b0;->a:[B

    .line 45
    .line 46
    iget v2, v0, Ll9/b0;->c:I

    .line 47
    .line 48
    invoke-virtual {p3, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 p3, -0x1

    .line 53
    if-ne p2, p3, :cond_4b

    .line 54
    .line 55
    iget p2, v0, Ll9/b0;->b:I

    .line 56
    .line 57
    iget p3, v0, Ll9/b0;->c:I

    .line 58
    .line 59
    if-ne p2, p3, :cond_48

    .line 60
    .line 61
    invoke-virtual {v0}, Ll9/b0;->a()Ll9/b0;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p1, Ll9/l;->b:Ll9/b0;

    .line 66
    .line 67
    invoke-static {v0}, Ll9/c0;->a(Ll9/b0;)V

    .line 68
    .line 69
    .line 70
    goto :goto_48

    .line 71
    :catch_46
    move-exception p1

    .line 72
    goto :goto_58

    .line 73
    :cond_48
    :goto_48
    const-wide/16 v0, -0x1

    .line 74
    .line 75
    goto :goto_70

    .line 76
    :cond_4b
    iget p3, v0, Ll9/b0;->c:I

    .line 77
    .line 78
    add-int/2addr p3, p2

    .line 79
    iput p3, v0, Ll9/b0;->c:I

    .line 80
    .line 81
    iget-wide v0, p1, Ll9/l;->c:J

    .line 82
    .line 83
    int-to-long p2, p2

    .line 84
    add-long/2addr v0, p2

    .line 85
    iput-wide v0, p1, Ll9/l;->c:J
    :try_end_56
    .catch Ljava/lang/AssertionError; {:try_start_11 .. :try_end_56} :catch_46

    .line 86
    .line 87
    move-wide v0, p2

    .line 88
    goto :goto_70

    .line 89
    :goto_58
    invoke-static {p1}, Ll9/b;->e(Ljava/lang/AssertionError;)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_64

    .line 94
    .line 95
    new-instance p2, Ljava/io/IOException;

    .line 96
    .line 97
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw p2

    .line 101
    :cond_64
    throw p1

    .line 102
    :cond_65
    const-string p1, "byteCount < 0: "

    .line 103
    .line 104
    invoke-static {p2, p3, p1}, Lai/onnxruntime/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Ll9/i;->d(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const-wide/16 v0, 0x0

    .line 112
    .line 113
    :goto_70
    return-wide v0

    .line 114
    :pswitch_71
    iget-object v0, p0, Ll9/f;->c:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Ll9/g;

    .line 117
    .line 118
    iget-object v1, p0, Ll9/f;->d:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Ll9/g0;

    .line 121
    .line 122
    invoke-virtual {v0}, Ll9/g;->enter()V

    .line 123
    .line 124
    .line 125
    :try_start_7c
    invoke-interface {v1, p1, p2, p3}, Ll9/g0;->read(Ll9/l;J)J

    .line 126
    .line 127
    .line 128
    move-result-wide p1
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_8f
    .catchall {:try_start_7c .. :try_end_80} :catchall_8d

    .line 129
    invoke-virtual {v0}, Ll9/g;->exit()Z

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    if-nez p3, :cond_87

    .line 134
    .line 135
    return-wide p1

    .line 136
    :cond_87
    const/4 p1, 0x0

    .line 137
    invoke-virtual {v0, p1}, Ll9/g;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    throw p1

    .line 142
    :catchall_8d
    move-exception p1

    .line 143
    goto :goto_9c

    .line 144
    :catch_8f
    move-exception p1

    .line 145
    :try_start_90
    invoke-virtual {v0}, Ll9/g;->exit()Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-nez p2, :cond_97

    .line 150
    .line 151
    goto :goto_9b

    .line 152
    :cond_97
    invoke-virtual {v0, p1}, Ll9/g;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :goto_9b
    throw p1
    :try_end_9c
    .catchall {:try_start_90 .. :try_end_9c} :catchall_8d

    .line 157
    :goto_9c
    invoke-virtual {v0}, Ll9/g;->exit()Z

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_71
    .end packed-switch
.end method

.method public final timeout()Ll9/j0;
    .registers 2

    .line 1
    iget v0, p0, Ll9/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_10

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll9/f;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ll9/j0;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_a
    iget-object v0, p0, Ll9/f;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ll9/g;

    .line 14
    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Ll9/f;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_36

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "source("

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Ll9/f;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/io/InputStream;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x29

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :pswitch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "AsyncTimeout.source("

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Ll9/f;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ll9/g0;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x29

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    nop

    .line 55
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method
