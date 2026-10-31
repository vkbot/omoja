.class public final Lh7/h;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh7/k;


# direct methods
.method public synthetic constructor <init>(Lh7/k;I)V
    .registers 3

    .line 1
    iput p2, p0, Lh7/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lh7/h;->b:Lh7/k;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 1
    iget v0, p0, Lh7/h;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lh7/h;->b:Lh7/k;

    .line 4
    .line 5
    const/16 v2, 0x15

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_88

    .line 10
    .line 11
    .line 12
    new-array v0, v2, [B

    .line 13
    .line 14
    fill-array-data v0, :array_8e

    .line 15
    .line 16
    .line 17
    new-array v2, v3, [B

    .line 18
    .line 19
    fill-array-data v2, :array_9e

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const/16 v4, 0xf

    .line 32
    .line 33
    new-array v4, v4, [B

    .line 34
    .line 35
    fill-array-data v4, :array_a6

    .line 36
    .line 37
    .line 38
    new-array v3, v3, [B

    .line 39
    .line 40
    fill-array-data v3, :array_b2

    .line 41
    .line 42
    .line 43
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1, p2}, Lh7/k;->f(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_43
    new-array v0, v2, [B

    .line 69
    .line 70
    fill-array-data v0, :array_ba

    .line 71
    .line 72
    .line 73
    new-array v2, v3, [B

    .line 74
    .line 75
    fill-array-data v2, :array_ca

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const/16 v4, 0x13

    .line 88
    .line 89
    new-array v4, v4, [B

    .line 90
    .line 91
    fill-array-data v4, :array_d2

    .line 92
    .line 93
    .line 94
    new-array v3, v3, [B

    .line 95
    .line 96
    fill-array-data v3, :array_e0

    .line 97
    .line 98
    .line 99
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v3, " "

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p1, p2}, Lh7/k;->f(Landroid/content/Context;Landroid/content/Intent;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_43
    .end packed-switch

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_8e
    .array-data 1
        0x63t
        0xft
        0x5ct
        -0x71t
        0x44t
        0x29t
        -0x58t
        -0x56t
        0x5at
        0xft
        0x5bt
        -0x80t
        0x57t
        0x29t
        -0x7ft
        -0x6at
        0x40t
        0x9t
        0x5dt
        -0x72t
        0x42t
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    nop

    .line 159
    :array_9e
    .array-data 1
        0x2et
        0x60t
        0x29t
        -0x1ft
        0x30t
        0x4ct
        -0x34t
        -0x7t
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_a6
    .array-data 1
        0x7bt
        0x2at
        0xct
        -0x2dt
        0x2ct
        0x58t
        -0x2t
        -0x67t
        0x6at
        0x3at
        0xft
        -0x80t
        0x3at
        0x10t
        -0x4ft
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_b2
    .array-data 1
        0xet
        0x59t
        0x6et
        -0xdt
        0x4et
        0x2at
        -0x6ft
        -0x8t
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
        -0x7t
        0x30t
        -0x75t
        -0x30t
        0x70t
        0x7at
        -0x59t
        0x15t
        -0x40t
        0x30t
        -0x74t
        -0x21t
        0x63t
        0x7at
        -0x72t
        0x29t
        -0x26t
        0x36t
        -0x76t
        -0x2ft
        0x76t
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    nop

    .line 203
    :array_ca
    .array-data 1
        -0x4ct
        0x5ft
        -0x2t
        -0x42t
        0x4t
        0x1ft
        -0x3dt
        0x46t
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_d2
    .array-data 1
        -0x26t
        -0x6et
        0x5ct
        -0x21t
        0x56t
        0x7t
        -0x6dt
        -0x70t
        -0x35t
        -0x6ct
        0x5ct
        -0x34t
        0x53t
        0x3t
        -0x69t
        -0x3dt
        -0x23t
        -0x24t
        0x13t
    .end array-data

    .line 212
    .line 213
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
    :array_e0
    .array-data 1
        -0x57t
        -0x1at
        0x33t
        -0x53t
        0x37t
        0x60t
        -0xat
        -0x50t
    .end array-data
.end method
