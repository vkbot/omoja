.class public final La6/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz5/k;


# virtual methods
.method public final a(Lz5/b;Ljava/util/Map;)Lz5/m;
    .locals 11

    .line 1
    new-instance v1, Lc6/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lz5/b;->a()Lf6/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v1, p1}, Lc6/b;-><init>(Lf6/b;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-virtual {v1, p1}, Lc6/b;->a(Z)La6/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v3, v0, La6/a;->e:Ljava/io/Serializable;

    .line 17
    .line 18
    check-cast v3, [Lz5/o;
    :try_end_0
    .catch Lz5/i; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lz5/e; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    .line 20
    :try_start_1
    new-instance v4, Lb6/a;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v0}, Lb6/a;->a(La6/a;)Lf6/d;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_1
    .catch Lz5/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lz5/e; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    move-object v4, v2

    .line 30
    move-object v2, v0

    .line 31
    move-object v0, v3

    .line 32
    move-object v3, v4

    .line 33
    goto :goto_4

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_2

    .line 36
    :catch_1
    move-exception v0

    .line 37
    goto :goto_3

    .line 38
    :goto_0
    move-object v3, v2

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    move-object v3, v2

    .line 41
    goto :goto_3

    .line 42
    :catch_2
    move-exception v0

    .line 43
    goto :goto_0

    .line 44
    :goto_2
    move-object v4, v0

    .line 45
    move-object v0, v3

    .line 46
    move-object v3, v2

    .line 47
    goto :goto_4

    .line 48
    :catch_3
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :goto_3
    move-object v4, v3

    .line 51
    move-object v3, v0

    .line 52
    move-object v0, v4

    .line 53
    move-object v4, v2

    .line 54
    :goto_4
    if-nez v2, :cond_2

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    :try_start_2
    invoke-virtual {v1, v0}, Lc6/b;->a(Z)La6/a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, v0, La6/a;->e:Ljava/io/Serializable;

    .line 62
    .line 63
    check-cast v1, [Lz5/o;

    .line 64
    .line 65
    new-instance v2, Lb6/a;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Lb6/a;->a(La6/a;)Lf6/d;

    .line 71
    .line 72
    .line 73
    move-result-object v2
    :try_end_2
    .catch Lz5/i; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lz5/e; {:try_start_2 .. :try_end_2} :catch_4

    .line 74
    move-object v8, v1

    .line 75
    goto :goto_7

    .line 76
    :catch_4
    move-exception v0

    .line 77
    :goto_5
    move-object p1, v0

    .line 78
    goto :goto_6

    .line 79
    :catch_5
    move-exception v0

    .line 80
    goto :goto_5

    .line 81
    :goto_6
    if-nez v3, :cond_1

    .line 82
    .line 83
    if-eqz v4, :cond_0

    .line 84
    .line 85
    throw v4

    .line 86
    :cond_0
    throw p1

    .line 87
    :cond_1
    throw v3

    .line 88
    :cond_2
    move-object v8, v0

    .line 89
    :goto_7
    if-eqz p2, :cond_3

    .line 90
    .line 91
    sget-object v0, Lz5/d;->k:Lz5/d;

    .line 92
    .line 93
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, Lz5/p;

    .line 98
    .line 99
    if-eqz p2, :cond_3

    .line 100
    .line 101
    array-length v0, v8

    .line 102
    :goto_8
    if-ge p1, v0, :cond_3

    .line 103
    .line 104
    aget-object v1, v8, p1

    .line 105
    .line 106
    invoke-interface {p2, v1}, Lz5/p;->a(Lz5/o;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_3
    new-instance v5, Lz5/m;

    .line 113
    .line 114
    iget-object v6, v2, Lf6/d;->a:Ljava/lang/String;

    .line 115
    .line 116
    iget-object p1, v2, Lf6/d;->d:Ljava/lang/Object;

    .line 117
    .line 118
    move-object v7, p1

    .line 119
    check-cast v7, [B

    .line 120
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    const/4 v10, 0x0

    .line 125
    sget-object v9, Lz5/a;->b:Lz5/a;

    .line 126
    .line 127
    invoke-direct/range {v5 .. v10}, Lz5/m;-><init>(Ljava/lang/String;[B[Lz5/o;Lz5/a;I)V

    .line 128
    .line 129
    .line 130
    iget-object p1, v2, Lf6/d;->f:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p1, Ljava/util/List;

    .line 133
    .line 134
    if-eqz p1, :cond_4

    .line 135
    .line 136
    sget-object p2, Lz5/n;->c:Lz5/n;

    .line 137
    .line 138
    invoke-virtual {v5, p2, p1}, Lz5/m;->b(Lz5/n;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    iget-object p1, v2, Lf6/d;->e:Ljava/io/Serializable;

    .line 142
    .line 143
    check-cast p1, Ljava/lang/String;

    .line 144
    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    sget-object p2, Lz5/n;->d:Lz5/n;

    .line 148
    .line 149
    invoke-virtual {v5, p2, p1}, Lz5/m;->b(Lz5/n;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    return-object v5
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method
