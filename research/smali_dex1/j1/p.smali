.class public final synthetic Lj1/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lj1/u;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;II)V
    .registers 6

    .line 1
    iput p5, p0, Lj1/p;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lj1/p;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lj1/p;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lj1/p;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput p4, p0, Lj1/p;->f:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .registers 10

    .line 1
    iget p1, p0, Lj1/p;->b:I

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    const/4 v1, 0x7

    .line 5
    iget v2, p0, Lj1/p;->f:I

    .line 6
    .line 7
    iget-object v3, p0, Lj1/p;->e:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lj1/p;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, Lj1/p;->c:Ljava/lang/String;

    .line 12
    .line 13
    const/16 v6, 0x8

    .line 14
    .line 15
    packed-switch p1, :pswitch_data_94

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lj1/s;->l()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_18

    .line 23
    .line 24
    goto :goto_51

    .line 25
    :cond_18
    :try_start_18
    new-instance p1, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .line 29
    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    fill-array-data v1, :array_9a

    .line 33
    .line 34
    .line 35
    new-array v7, v6, [B

    .line 36
    .line 37
    fill-array-data v7, :array_a2

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz v4, :cond_42

    .line 49
    .line 50
    new-array v0, v0, [B

    .line 51
    .line 52
    fill-array-data v0, :array_aa

    .line 53
    .line 54
    .line 55
    new-array v1, v6, [B

    .line 56
    .line 57
    fill-array-data v1, :array_b2

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    :cond_42
    if-eqz v3, :cond_47

    .line 68
    .line 69
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    :cond_47
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0, p1}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_51} :catch_51

    .line 80
    .line 81
    .line 82
    :catch_51
    :goto_51
    return-void

    .line 83
    :pswitch_52
    invoke-static {}, Lj1/q;->n()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_59

    .line 88
    .line 89
    goto :goto_92

    .line 90
    :cond_59
    :try_start_59
    new-instance p1, Lorg/json/JSONObject;

    .line 91
    .line 92
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .line 94
    .line 95
    new-array v1, v1, [B

    .line 96
    .line 97
    fill-array-data v1, :array_ba

    .line 98
    .line 99
    .line 100
    new-array v7, v6, [B

    .line 101
    .line 102
    fill-array-data v7, :array_c2

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz v4, :cond_83

    .line 114
    .line 115
    new-array v0, v0, [B

    .line 116
    .line 117
    fill-array-data v0, :array_ca

    .line 118
    .line 119
    .line 120
    new-array v1, v6, [B

    .line 121
    .line 122
    fill-array-data v1, :array_d2

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    :cond_83
    if-eqz v3, :cond_88

    .line 133
    .line 134
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    :cond_88
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 138
    .line 139
    .line 140
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0, p1}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_92} :catch_92

    .line 145
    .line 146
    .line 147
    :catch_92
    :goto_92
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_52
    .end packed-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_9a
    .array-data 1
        0x35t
        0x42t
        0x21t
        0x60t
        -0x75t
        0x7dt
        0x19t
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_a2
    .array-data 1
        0x56t
        0x2dt
        0x4ct
        0xdt
        -0x16t
        0x13t
        0x7dt
        0x1ft
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_aa
    .array-data 1
        -0x68t
        0xbt
        0x65t
        -0x46t
        0x27t
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    nop

    .line 179
    :array_b2
    .array-data 1
        -0x12t
        0x6at
        0x9t
        -0x31t
        0x42t
        -0x79t
        -0x7ct
        -0x68t
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_ba
    .array-data 1
        -0x41t
        0x21t
        0x63t
        -0x70t
        0xat
        -0x64t
        0x43t
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_c2
    .array-data 1
        -0x24t
        0x4et
        0xet
        -0x3t
        0x6bt
        -0xet
        0x27t
        -0x14t
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_ca
    .array-data 1
        -0x31t
        0x48t
        -0x3at
        0x31t
        -0x24t
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    nop

    .line 211
    :array_d2
    .array-data 1
        -0x47t
        0x29t
        -0x56t
        0x44t
        -0x47t
        -0x29t
        -0x7t
        -0x35t
    .end array-data
.end method
