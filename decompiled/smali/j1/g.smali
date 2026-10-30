.class public final synthetic Lj1/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lj1/u;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p2, p0, Lj1/g;->b:I

    .line 2
    .line 3
    iput-object p3, p0, Lj1/g;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p1, p0, Lj1/g;->d:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .locals 6

    .line 1
    iget p1, p0, Lj1/g;->b:I

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    const/4 v1, 0x7

    .line 5
    iget-object v2, p0, Lj1/g;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lj1/g;->c:Ljava/lang/String;

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v3}, Lj1/o;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .line 22
    .line 23
    new-array v1, v1, [B

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    new-array v5, v4, [B

    .line 29
    .line 30
    fill-array-data v5, :array_1

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    new-array v0, v0, [B

    .line 41
    .line 42
    fill-array-data v0, :array_2

    .line 43
    .line 44
    .line 45
    new-array v1, v4, [B

    .line 46
    .line 47
    fill-array-data v1, :array_3

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0, p1}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :catchall_0
    return-void

    .line 68
    :pswitch_1
    sget-object p1, Lj1/l;->c:Ljava/lang/String;

    .line 69
    .line 70
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    .line 71
    .line 72
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .line 74
    .line 75
    new-array v1, v1, [B

    .line 76
    .line 77
    fill-array-data v1, :array_4

    .line 78
    .line 79
    .line 80
    new-array v5, v4, [B

    .line 81
    .line 82
    fill-array-data v5, :array_5

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    new-array v0, v0, [B

    .line 93
    .line 94
    fill-array-data v0, :array_6

    .line 95
    .line 96
    .line 97
    new-array v1, v4, [B

    .line 98
    .line 99
    fill-array-data v1, :array_7

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0, p1}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    .line 118
    .line 119
    :catchall_1
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_0
    .array-data 1
        -0x12t
        -0x4ct
        0x5ct
        -0x1bt
        0x52t
        -0x4ft
        -0x63t
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 1
        -0x73t
        -0x25t
        0x31t
        -0x78t
        0x33t
        -0x21t
        -0x7t
        -0x6dt
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_2
    .array-data 1
        -0x49t
        -0x35t
        -0x9t
        0x7at
        -0x5t
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    nop

    .line 153
    :array_3
    .array-data 1
        -0x3ft
        -0x56t
        -0x65t
        0xft
        -0x62t
        0xet
        0x18t
        -0x77t
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_4
    .array-data 1
        -0x52t
        0x71t
        -0x4et
        -0x17t
        0x18t
        -0x68t
        0x6et
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_5
    .array-data 1
        -0x33t
        0x1et
        -0x21t
        -0x7ct
        0x79t
        -0xat
        0xat
        0x7ft
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_6
    .array-data 1
        -0x5bt
        0x57t
        0x1et
        0x45t
        -0x4t
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    nop

    .line 185
    :array_7
    .array-data 1
        -0x2dt
        0x36t
        0x72t
        0x30t
        -0x67t
        0x19t
        0x52t
        0x63t
    .end array-data
.end method
