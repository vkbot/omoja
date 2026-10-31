.class public final synthetic Li7/l;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Li7/l;->b:J

    .line 5
    .line 6
    iput-wide p3, p0, Li7/l;->c:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 1
    iget-wide v0, p0, Li7/l;->b:J

    .line 2
    .line 3
    iget-wide v2, p0, Li7/l;->c:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    const-wide/32 v2, 0x5265c00

    .line 7
    .line 8
    .line 9
    div-long v2, v0, v2

    .line 10
    .line 11
    const-wide/32 v4, 0x36ee80

    .line 12
    .line 13
    .line 14
    div-long v4, v0, v4

    .line 15
    .line 16
    const-wide/16 v6, 0x18

    .line 17
    .line 18
    rem-long/2addr v4, v6

    .line 19
    const-wide/32 v6, 0xea60

    .line 20
    .line 21
    .line 22
    div-long/2addr v0, v6

    .line 23
    const-wide/16 v6, 0x3c

    .line 24
    .line 25
    rem-long/2addr v0, v6

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    new-array v3, v2, [B

    .line 36
    .line 37
    fill-array-data v3, :array_7c

    .line 38
    .line 39
    .line 40
    const/16 v7, 0x8

    .line 41
    .line 42
    new-array v8, v7, [B

    .line 43
    .line 44
    fill-array-data v8, :array_84

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    new-array v2, v2, [B

    .line 58
    .line 59
    fill-array-data v2, :array_8c

    .line 60
    .line 61
    .line 62
    new-array v3, v7, [B

    .line 63
    .line 64
    fill-array-data v3, :array_94

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    new-array v0, v7, [B

    .line 78
    .line 79
    fill-array-data v0, :array_9c

    .line 80
    .line 81
    .line 82
    new-array v1, v7, [B

    .line 83
    .line 84
    fill-array-data v1, :array_a4

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1, v6}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lv1/d;->c()Li7/s;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/16 v2, 0x35

    .line 100
    .line 101
    new-array v2, v2, [B

    .line 102
    .line 103
    fill-array-data v2, :array_ac

    .line 104
    .line 105
    .line 106
    new-array v3, v7, [B

    .line 107
    .line 108
    fill-array-data v3, :array_cc

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, v1, Li7/s;->b:Landroidx/lifecycle/MutableLiveData;

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :array_7c
    .array-data 1
        0x3ft
        -0x5ft
        -0x20t
        0x6dt
        0xat
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    nop

    .line 133
    :array_84
    .array-data 1
        0x1ft
        0x71t
        0x54t
        0x43t
        0x2at
        -0x6at
        -0x80t
        -0x74t
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_8c
    .array-data 1
        0x7et
        0x1ft
        0x61t
        0x15t
        0x26t
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    nop

    .line 149
    :array_94
    .array-data 1
        0x5et
        -0x32t
        -0x1at
        0x3bt
        0x6t
        0x5bt
        -0x56t
        0x55t
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_9c
    .array-data 1
        0x2dt
        0x44t
        0x39t
        -0x1et
        -0x5ct
        -0x11t
        -0x40t
        -0x2t
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_a4
    .array-data 1
        0xdt
        -0x6ct
        -0x7bt
        0x32t
        0x1ct
        0x3ft
        0x7dt
        -0x30t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_ac
    .array-data 1
        -0x41t
        0xat
        -0x1dt
        0x2bt
        0x3t
        -0x7t
        -0x36t
        0x5at
        -0x41t
        0x2ft
        -0x1et
        0x14t
        0x3t
        -0x6t
        -0x35t
        0x66t
        0x4ft
        0x44t
        -0x7at
        0x7at
        0x6ct
        0x5bt
        -0x36t
        0x54t
        -0x41t
        0x25t
        -0x1et
        0x17t
        0x2t
        -0x3bt
        -0x36t
        0x58t
        -0x41t
        0x2ft
        -0x1et
        0x1ft
        0x2t
        -0x3at
        -0x36t
        0x52t
        -0x42t
        0x1bt
        0x12t
        0x7at
        0x63t
        -0x55t
        -0x56t
        0x3at
        -0x28t
        0x45t
        -0x47t
        -0x70t
        -0xet
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
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
    .line 203
    .line 204
    nop

    .line 205
    :array_cc
    .array-data 1
        0x6ft
        -0x6ct
        0x32t
        -0x56t
        -0x2et
        0x7bt
        0x1at
        -0x16t
    .end array-data
.end method
