.class public final Lcom/google/protobuf/k1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/protobuf/j1;
    .locals 5

    .line 1
    check-cast p0, Lcom/google/protobuf/y;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 4
    .line 5
    sget-object v1, Lcom/google/protobuf/j1;->f:Lcom/google/protobuf/j1;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/protobuf/j1;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    new-array v2, v1, [I

    .line 14
    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v0, v4, v2, v1, v3}, Lcom/google/protobuf/j1;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/protobuf/y;->unknownFields:Lcom/google/protobuf/j1;

    .line 23
    .line 24
    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/Object;Lc3/i;)Z
    .locals 8

    .line 1
    iget v0, p1, Lc3/i;->a:I

    .line 2
    .line 3
    iget-object v1, p1, Lc3/i;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/google/protobuf/j;

    .line 6
    .line 7
    ushr-int/lit8 v2, v0, 0x3

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x7

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x3

    .line 14
    if-eqz v0, :cond_9

    .line 15
    .line 16
    if-eq v0, v4, :cond_8

    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    if-eq v0, v6, :cond_7

    .line 20
    .line 21
    if-eq v0, v5, :cond_2

    .line 22
    .line 23
    const/4 v6, 0x4

    .line 24
    if-eq v0, v6, :cond_1

    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    if-ne v0, v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Lc3/i;->z(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/google/protobuf/j;->k()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    check-cast p0, Lcom/google/protobuf/j1;

    .line 37
    .line 38
    shl-int/lit8 v0, v2, 0x3

    .line 39
    .line 40
    or-int/2addr v0, v3

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/j1;->c(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return v4

    .line 49
    :cond_0
    invoke-static {}, Lcom/google/protobuf/d0;->b()Lcom/google/protobuf/c0;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    throw p0

    .line 54
    :cond_1
    return v3

    .line 55
    :cond_2
    new-instance v0, Lcom/google/protobuf/j1;

    .line 56
    .line 57
    const/16 v1, 0x8

    .line 58
    .line 59
    new-array v6, v1, [I

    .line 60
    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-direct {v0, v3, v6, v1, v4}, Lcom/google/protobuf/j1;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 64
    .line 65
    .line 66
    shl-int/lit8 v1, v2, 0x3

    .line 67
    .line 68
    or-int/lit8 v2, v1, 0x4

    .line 69
    .line 70
    :cond_3
    invoke-virtual {p1}, Lc3/i;->c()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    const v7, 0x7fffffff

    .line 75
    .line 76
    .line 77
    if-eq v6, v7, :cond_4

    .line 78
    .line 79
    invoke-static {v0, p1}, Lcom/google/protobuf/k1;->b(Ljava/lang/Object;Lc3/i;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_3

    .line 84
    .line 85
    :cond_4
    iget p1, p1, Lc3/i;->a:I

    .line 86
    .line 87
    if-ne v2, p1, :cond_6

    .line 88
    .line 89
    iget-boolean p1, v0, Lcom/google/protobuf/j1;->e:Z

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    iput-boolean v3, v0, Lcom/google/protobuf/j1;->e:Z

    .line 94
    .line 95
    :cond_5
    check-cast p0, Lcom/google/protobuf/j1;

    .line 96
    .line 97
    or-int/lit8 p1, v1, 0x3

    .line 98
    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/j1;->c(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return v4

    .line 103
    :cond_6
    new-instance p0, Lcom/google/protobuf/d0;

    .line 104
    .line 105
    const-string p1, "Protocol message end-group tag did not match expected tag."

    .line 106
    .line 107
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_7
    invoke-virtual {p1}, Lc3/i;->g()Lcom/google/protobuf/g;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p0, Lcom/google/protobuf/j1;

    .line 116
    .line 117
    shl-int/lit8 v0, v2, 0x3

    .line 118
    .line 119
    or-int/2addr v0, v6

    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/j1;->c(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return v4

    .line 124
    :cond_8
    invoke-virtual {p1, v4}, Lc3/i;->z(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/google/protobuf/j;->l()J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    check-cast p0, Lcom/google/protobuf/j1;

    .line 132
    .line 133
    shl-int/lit8 p1, v2, 0x3

    .line 134
    .line 135
    or-int/2addr p1, v4

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/j1;->c(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    return v4

    .line 144
    :cond_9
    invoke-virtual {p1, v3}, Lc3/i;->z(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/google/protobuf/j;->o()J

    .line 148
    .line 149
    .line 150
    move-result-wide v0

    .line 151
    check-cast p0, Lcom/google/protobuf/j1;

    .line 152
    .line 153
    shl-int/lit8 p1, v2, 0x3

    .line 154
    .line 155
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/j1;->c(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return v4
.end method
