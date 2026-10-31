.class public final synthetic Lq0/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lq0/i;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lq0/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5

    .line 1
    iget p1, p0, Lq0/i;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lq0/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_7c

    .line 6
    .line 7
    .line 8
    check-cast v0, Lm0/s2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lm0/s2;->run()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    check-cast v0, Lq0/l;

    .line 15
    .line 16
    const p1, 0x7f0902f8

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    if-ne p2, p1, :cond_29

    .line 22
    .line 23
    const/16 p1, 0x9

    .line 24
    .line 25
    new-array p1, p1, [B

    .line 26
    .line 27
    fill-array-data p1, :array_82

    .line 28
    .line 29
    .line 30
    new-array p2, v1, [B

    .line 31
    .line 32
    fill-array-data p2, :array_8c

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, v0, Lq0/l;->t:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_6e

    .line 42
    :cond_29
    const p1, 0x7f0902f6

    .line 43
    .line 44
    .line 45
    if-ne p2, p1, :cond_41

    .line 46
    .line 47
    const/16 p1, 0xe

    .line 48
    .line 49
    new-array p1, p1, [B

    .line 50
    .line 51
    fill-array-data p1, :array_94

    .line 52
    .line 53
    .line 54
    new-array p2, v1, [B

    .line 55
    .line 56
    fill-array-data p2, :array_a0

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, v0, Lq0/l;->t:Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_6e

    .line 66
    :cond_41
    const p1, 0x7f0902fa

    .line 67
    .line 68
    .line 69
    if-ne p2, p1, :cond_58

    .line 70
    .line 71
    const/4 p1, 0x3

    .line 72
    new-array p1, p1, [B

    .line 73
    .line 74
    fill-array-data p1, :array_a8

    .line 75
    .line 76
    .line 77
    new-array p2, v1, [B

    .line 78
    .line 79
    fill-array-data p2, :array_ae

    .line 80
    .line 81
    .line 82
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, v0, Lq0/l;->t:Ljava/lang/String;

    .line 87
    .line 88
    goto :goto_6e

    .line 89
    :cond_58
    const p1, 0x7f0902f7

    .line 90
    .line 91
    .line 92
    if-ne p2, p1, :cond_6e

    .line 93
    .line 94
    const/4 p1, 0x5

    .line 95
    new-array p1, p1, [B

    .line 96
    .line 97
    fill-array-data p1, :array_b6

    .line 98
    .line 99
    .line 100
    new-array p2, v1, [B

    .line 101
    .line 102
    fill-array-data p2, :array_be

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, v0, Lq0/l;->t:Ljava/lang/String;

    .line 110
    .line 111
    :cond_6e
    :goto_6e
    iget-object p1, v0, Lq0/l;->t:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {p1}, Lq0/l;->w(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, v0, Lq0/l;->t:Ljava/lang/String;

    .line 118
    .line 119
    const/4 p1, 0x0

    .line 120
    invoke-virtual {v0, p1}, Lq0/l;->u(Z)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_82
    .array-data 1
        0x38t
        -0x1dt
        -0xbt
        -0x43t
        -0x4et
        -0x6dt
        0x65t
        -0x60t
        0x38t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    nop

    .line 141
    :array_8c
    .array-data 1
        0x48t
        -0x75t
        -0x66t
        -0x2dt
        -0x29t
        -0x34t
        0x4t
        -0x30t
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_94
    .array-data 1
        -0x5ct
        0x39t
        -0x7t
        -0x2at
        0x18t
        0x6bt
        -0x41t
        0x62t
        -0x5at
        0x3bt
        -0x2bt
        -0x20t
        0x4t
        0x7dt
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    nop

    .line 161
    :array_a0
    .array-data 1
        -0x3dt
        0x49t
        -0x76t
        -0x77t
        0x6bt
        0xet
        -0x33t
        0x14t
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_a8
    .array-data 1
        0x4dt
        -0x28t
        -0x51t
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_ae
    .array-data 1
        0x38t
        -0x55t
        -0x33t
        -0x58t
        0x75t
        -0x41t
        -0x33t
        -0x75t
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_b6
    .array-data 1
        0x19t
        0x36t
        0x18t
        -0x33t
        0x6t
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    nop

    .line 191
    :array_be
    .array-data 1
        0x74t
        0x59t
        0x7ct
        -0x58t
        0x6bt
        0x45t
        -0x8t
        0x70t
    .end array-data
.end method
