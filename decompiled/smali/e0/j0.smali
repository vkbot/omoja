.class public final synthetic Le0/j0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/LounchB;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/LounchB;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/j0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/j0;->c:Lcom/example/navistart/LounchB;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Le0/j0;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Le0/j0;->c:Lcom/example/navistart/LounchB;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/example/navistart/LounchB;->g:Landroid/view/WindowManager;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Le0/m;->j:[B

    .line 20
    .line 21
    sget-object v4, Le0/p3;->a:[Ljava/lang/String;

    .line 22
    .line 23
    const-string v4, ""

    .line 24
    .line 25
    invoke-static {v3, v2, v4, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x9

    .line 29
    .line 30
    new-array v2, v2, [B

    .line 31
    .line 32
    fill-array-data v2, :array_0

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Le0/x1;->q:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, v2}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v3, Le0/m;->f:[B

    .line 49
    .line 50
    invoke-static {v3, v2, v4, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-wide v4, 0x7fffffffffffffffL

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    invoke-static {v4, v5, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    new-instance v0, Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    new-instance v8, Ljava/lang/String;

    .line 86
    .line 87
    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    .line 88
    .line 89
    .line 90
    sget-object v3, Le0/m;->g:[B

    .line 91
    .line 92
    invoke-static {v3, v7, v8}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/4 v7, 0x1

    .line 97
    new-array v8, v7, [B

    .line 98
    .line 99
    const/4 v9, -0x6

    .line 100
    const/4 v10, 0x0

    .line 101
    aput-byte v9, v8, v10

    .line 102
    .line 103
    new-array v9, v2, [B

    .line 104
    .line 105
    fill-array-data v9, :array_1

    .line 106
    .line 107
    .line 108
    invoke-static {v8, v9, v6, v3, v10}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v8

    .line 119
    cmp-long v0, v4, v8

    .line 120
    .line 121
    if-gez v0, :cond_0

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    move v7, v10

    .line 125
    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 131
    .line 132
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_2

    .line 137
    .line 138
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/16 v1, 0xf

    .line 146
    .line 147
    new-array v1, v1, [B

    .line 148
    .line 149
    fill-array-data v1, :array_2

    .line 150
    .line 151
    .line 152
    new-array v2, v2, [B

    .line 153
    .line 154
    fill-array-data v2, :array_3

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lj0/c;->k(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 166
    .line 167
    const-class v2, Lcom/example/navistart/ModernMainActivity;

    .line 168
    .line 169
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .line 171
    .line 172
    const/high16 v2, 0x10000000

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const/4 v2, 0x0

    .line 179
    invoke-static {v1, v0, v2}, Ly5/k;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    return-void

    .line 183
    :pswitch_0
    iget-object v0, v1, Lcom/example/navistart/LounchB;->c:Lt1/j;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lt1/j;->d(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_0
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    nop

    .line 205
    :array_1
    .array-data 1
        -0x36t
        0x3dt
        0x5bt
        -0xbt
        -0x9t
        -0x36t
        0x2bt
        -0x54t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_2
    .array-data 1
        -0x65t
        0x4at
        -0x79t
        0x71t
        0xdt
        0x1at
        -0x1bt
        -0x55t
        -0x5ct
        0x40t
        -0x7at
        0x40t
        0x0t
        0x17t
        -0x30t
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_3
    .array-data 1
        -0x29t
        0x25t
        -0xet
        0x1ft
        0x6et
        0x72t
        -0x59t
        -0xct
    .end array-data
.end method
