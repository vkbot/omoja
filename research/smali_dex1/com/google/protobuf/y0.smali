.class public final Lcom/google/protobuf/y0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final c:Lcom/google/protobuf/y0;


# instance fields
.field public final a:Lcom/google/protobuf/l0;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/protobuf/y0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/protobuf/y0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/protobuf/y0;->c:Lcom/google/protobuf/y0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/protobuf/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/protobuf/l0;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/protobuf/l0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/protobuf/y0;->a:Lcom/google/protobuf/l0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/protobuf/b1;
    .registers 13

    .line 1
    const-string v0, "messageType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/protobuf/b0;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/protobuf/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/protobuf/b1;

    .line 13
    .line 14
    if-nez v1, :cond_c7

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/protobuf/y0;->a:Lcom/google/protobuf/l0;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 22
    .line 23
    const-class v2, Lcom/google/protobuf/y;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-nez v3, :cond_30

    .line 31
    .line 32
    sget-object v3, Lcom/google/protobuf/c1;->a:Ljava/lang/Class;

    .line 33
    .line 34
    if-eqz v3, :cond_30

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2a

    .line 41
    .line 42
    goto :goto_30

    .line 43
    :cond_2a
    const-string p1, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    .line 44
    .line 45
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v4

    .line 49
    :cond_30
    :goto_30
    iget-object v1, v1, Lcom/google/protobuf/l0;->a:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Lcom/google/protobuf/k0;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Lcom/google/protobuf/k0;->a(Ljava/lang/Class;)Lcom/google/protobuf/a1;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget v1, v5, Lcom/google/protobuf/a1;->d:I

    .line 58
    .line 59
    iget-object v3, v5, Lcom/google/protobuf/a1;->a:Lcom/google/protobuf/a;

    .line 60
    .line 61
    const/4 v6, 0x2

    .line 62
    and-int/2addr v1, v6

    .line 63
    const-string v7, "Protobuf runtime is not correctly loaded."

    .line 64
    .line 65
    if-ne v1, v6, :cond_62

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_52

    .line 72
    .line 73
    sget-object v1, Lcom/google/protobuf/c1;->c:Lcom/google/protobuf/k1;

    .line 74
    .line 75
    sget-object v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    .line 76
    .line 77
    new-instance v4, Lcom/google/protobuf/u0;

    .line 78
    .line 79
    invoke-direct {v4, v1, v2, v3}, Lcom/google/protobuf/u0;-><init>(Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/a;)V

    .line 80
    .line 81
    .line 82
    goto :goto_bd

    .line 83
    :cond_52
    sget-object v1, Lcom/google/protobuf/c1;->b:Lcom/google/protobuf/k1;

    .line 84
    .line 85
    sget-object v2, Lcom/google/protobuf/s;->b:Lcom/google/protobuf/r;

    .line 86
    .line 87
    if-eqz v2, :cond_5e

    .line 88
    .line 89
    new-instance v4, Lcom/google/protobuf/u0;

    .line 90
    .line 91
    invoke-direct {v4, v1, v2, v3}, Lcom/google/protobuf/u0;-><init>(Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/a;)V

    .line 92
    .line 93
    .line 94
    goto :goto_bd

    .line 95
    :cond_5e
    invoke-static {v7}, Lj1/i;->l(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v4

    .line 99
    :cond_62
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const/4 v2, 0x1

    .line 104
    if-eqz v1, :cond_90

    .line 105
    .line 106
    invoke-virtual {v5}, Lcom/google/protobuf/a1;->a()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v1}, Lcom/bumptech/glide/g;->c(I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eq v1, v2, :cond_82

    .line 115
    .line 116
    sget-object v6, Lcom/google/protobuf/w0;->b:Lcom/google/protobuf/v0;

    .line 117
    .line 118
    sget-object v7, Lcom/google/protobuf/j0;->b:Lcom/google/protobuf/i0;

    .line 119
    .line 120
    sget-object v8, Lcom/google/protobuf/c1;->c:Lcom/google/protobuf/k1;

    .line 121
    .line 122
    sget-object v9, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    .line 123
    .line 124
    sget-object v10, Lcom/google/protobuf/q0;->b:Lcom/google/protobuf/p0;

    .line 125
    .line 126
    invoke-static/range {v5 .. v10}, Lcom/google/protobuf/t0;->w(Lcom/google/protobuf/a1;Lcom/google/protobuf/v0;Lcom/google/protobuf/j0;Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/p0;)Lcom/google/protobuf/t0;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    goto :goto_bd

    .line 131
    :cond_82
    sget-object v6, Lcom/google/protobuf/w0;->b:Lcom/google/protobuf/v0;

    .line 132
    .line 133
    sget-object v7, Lcom/google/protobuf/j0;->b:Lcom/google/protobuf/i0;

    .line 134
    .line 135
    sget-object v8, Lcom/google/protobuf/c1;->c:Lcom/google/protobuf/k1;

    .line 136
    .line 137
    const/4 v9, 0x0

    .line 138
    sget-object v10, Lcom/google/protobuf/q0;->b:Lcom/google/protobuf/p0;

    .line 139
    .line 140
    invoke-static/range {v5 .. v10}, Lcom/google/protobuf/t0;->w(Lcom/google/protobuf/a1;Lcom/google/protobuf/v0;Lcom/google/protobuf/j0;Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/p0;)Lcom/google/protobuf/t0;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    goto :goto_bd

    .line 145
    :cond_90
    invoke-virtual {v5}, Lcom/google/protobuf/a1;->a()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-static {v1}, Lcom/bumptech/glide/g;->c(I)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eq v1, v2, :cond_b0

    .line 154
    .line 155
    sget-object v6, Lcom/google/protobuf/w0;->a:Lcom/google/protobuf/v0;

    .line 156
    .line 157
    move-object v1, v7

    .line 158
    sget-object v7, Lcom/google/protobuf/j0;->a:Lcom/google/protobuf/h0;

    .line 159
    .line 160
    sget-object v8, Lcom/google/protobuf/c1;->b:Lcom/google/protobuf/k1;

    .line 161
    .line 162
    sget-object v9, Lcom/google/protobuf/s;->b:Lcom/google/protobuf/r;

    .line 163
    .line 164
    if-eqz v9, :cond_ac

    .line 165
    .line 166
    sget-object v10, Lcom/google/protobuf/q0;->a:Lcom/google/protobuf/p0;

    .line 167
    .line 168
    invoke-static/range {v5 .. v10}, Lcom/google/protobuf/t0;->w(Lcom/google/protobuf/a1;Lcom/google/protobuf/v0;Lcom/google/protobuf/j0;Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/p0;)Lcom/google/protobuf/t0;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    goto :goto_bd

    .line 173
    :cond_ac
    invoke-static {v1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object v4

    .line 177
    :cond_b0
    sget-object v6, Lcom/google/protobuf/w0;->a:Lcom/google/protobuf/v0;

    .line 178
    .line 179
    sget-object v7, Lcom/google/protobuf/j0;->a:Lcom/google/protobuf/h0;

    .line 180
    .line 181
    sget-object v8, Lcom/google/protobuf/c1;->b:Lcom/google/protobuf/k1;

    .line 182
    .line 183
    const/4 v9, 0x0

    .line 184
    sget-object v10, Lcom/google/protobuf/q0;->a:Lcom/google/protobuf/p0;

    .line 185
    .line 186
    invoke-static/range {v5 .. v10}, Lcom/google/protobuf/t0;->w(Lcom/google/protobuf/a1;Lcom/google/protobuf/v0;Lcom/google/protobuf/j0;Lcom/google/protobuf/k1;Lcom/google/protobuf/r;Lcom/google/protobuf/p0;)Lcom/google/protobuf/t0;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    :goto_bd
    invoke-virtual {v0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Lcom/google/protobuf/b1;

    .line 195
    .line 196
    if-eqz p1, :cond_c6

    .line 197
    .line 198
    return-object p1

    .line 199
    :cond_c6
    return-object v4

    .line 200
    :cond_c7
    return-object v1
.end method
