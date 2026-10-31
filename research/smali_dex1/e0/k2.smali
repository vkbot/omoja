.class public final synthetic Le0/k2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/ProgressActivity;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/ProgressActivity;II)V
    .registers 4

    .line 1
    iput p3, p0, Le0/k2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/k2;->c:Lcom/example/navistart/ProgressActivity;

    .line 4
    .line 5
    iput p2, p0, Le0/k2;->d:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget v0, p0, Le0/k2;->b:I

    .line 2
    .line 3
    iget v1, p0, Le0/k2;->d:I

    .line 4
    .line 5
    iget-object v2, p0, Le0/k2;->c:Lcom/example/navistart/ProgressActivity;

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_72

    .line 10
    .line 11
    .line 12
    iget-object v0, v2, Lcom/example/navistart/ProgressActivity;->c:Landroid/widget/ProgressBar;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v2, Lcom/example/navistart/ProgressActivity;->d:Landroid/widget/TextView;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const/16 v4, 0x12

    .line 25
    .line 26
    new-array v4, v4, [B

    .line 27
    .line 28
    fill-array-data v4, :array_78

    .line 29
    .line 30
    .line 31
    new-array v5, v3, [B

    .line 32
    .line 33
    fill-array-data v5, :array_86

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v5, v2, v1}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    new-array v1, v1, [B

    .line 41
    .line 42
    const/16 v4, 0x19

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    aput-byte v4, v1, v5

    .line 46
    .line 47
    new-array v3, v3, [B

    .line 48
    .line 49
    fill-array-data v3, :array_8e

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_42
    sget-object v0, Lcom/example/navistart/ProgressActivity;->e:Ljava/lang/String;

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    if-ne v1, v0, :cond_5b

    .line 71
    .line 72
    const/16 v0, 0x35

    .line 73
    .line 74
    new-array v0, v0, [B

    .line 75
    .line 76
    fill-array-data v0, :array_96

    .line 77
    .line 78
    .line 79
    new-array v1, v3, [B

    .line 80
    .line 81
    fill-array-data v1, :array_b6

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v2, v0}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    goto :goto_6e

    .line 92
    :cond_5b
    const/16 v0, 0x20

    .line 93
    .line 94
    new-array v0, v0, [B

    .line 95
    .line 96
    fill-array-data v0, :array_be

    .line 97
    .line 98
    .line 99
    new-array v1, v3, [B

    .line 100
    .line 101
    fill-array-data v1, :array_d2

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v2, v0}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    :goto_6e
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_42
    .end packed-switch

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_78
    .array-data 1
        -0x24t
        0x1ct
        -0x8t
        -0x18t
        0x2ft
        0x67t
        0xdt
        0x3et
        -0x23t
        0x3t
        -0x7t
        -0x23t
        0x2et
        0x58t
        0xct
        0xct
        0x36t
        -0x5dt
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_86
    .array-data 1
        0xct
        -0x7dt
        0x29t
        0x68t
        -0x1t
        -0x27t
        -0x23t
        -0x73t
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_8e
    .array-data 1
        0x3ct
        -0x12t
        0x40t
        -0x3et
        0x5ft
        0x1at
        -0x1at
        0x36t
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_96
    .array-data 1
        0x27t
        0x4dt
        0x51t
        0x29t
        -0x5ct
        0x22t
        0x4dt
        0x72t
        0x27t
        0x53t
        0x50t
        0x16t
        -0x5bt
        0x12t
        0x4dt
        0x78t
        0x27t
        0x5et
        -0x60t
        0x78t
        -0x3et
        0x70t
        0x2dt
        0x12t
        0x45t
        0x3et
        0x35t
        0x79t
        -0xbt
        0x71t
        0x15t
        0x12t
        0x42t
        0x3et
        0x3dt
        0x78t
        -0x3bt
        -0x80t
        0x4ct
        0x41t
        0x26t
        0x6ft
        0x50t
        0x17t
        -0x5bt
        0x15t
        0x4ct
        0x4at
        0x27t
        0x53t
        0x50t
        0x16t
        0x54t
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
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
    .line 180
    .line 181
    .line 182
    nop

    .line 183
    :array_b6
    .array-data 1
        -0x9t
        -0x12t
        -0x80t
        -0x58t
        0x75t
        -0x60t
        -0x63t
        -0x3et
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_be
    .array-data 1
        0x70t
        -0x78t
        0x1at
        0x2dt
        0x35t
        -0x44t
        -0x48t
        -0x29t
        0x70t
        -0x54t
        0x1bt
        0x15t
        -0x3bt
        -0x2bt
        -0x15t
        -0x49t
        0x21t
        -0x39t
        0x49t
        0x75t
        0x55t
        -0x2ct
        -0x2bt
        -0x4at
        0x1et
        -0x3at
        0x79t
        0x75t
        0x5ft
        -0x2ct
        -0x30t
        0x48t
    .end array-data

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
    .line 203
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
        -0x60t
        0x16t
        -0x35t
        -0x5bt
        -0x1bt
        0x4t
        0x68t
        0x66t
    .end array-data
.end method
