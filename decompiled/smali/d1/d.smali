.class public abstract Ld1/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ld1/d;->a:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x15

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_2

    .line 26
    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    fill-array-data v1, :array_3

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Ld1/d;->b:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 1
        0x5ct
        -0x3t
        -0x31t
        -0x65t
        0x5dt
        -0x6t
        0x51t
        -0x3et
        0xft
        -0x1t
        -0x22t
        -0x65t
        0x14t
        -0xdt
        0x5at
        -0x22t
        0x4dt
        -0x7t
        -0x29t
        -0x31t
        0x44t
        -0x5t
        0x5at
        -0x28t
        0x4ct
        -0x1ft
        -0x1ct
        -0x74t
        0x5bt
        -0x6t
        0x42t
        -0x3dt
        0x40t
        -0xct
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    nop

    .line 63
    :array_1
    .array-data 1
        0x2ft
        -0x68t
        -0x45t
        -0x11t
        0x34t
        -0x6ct
        0x36t
        -0x4ft
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_2
    .array-data 1
        0x42t
        0x16t
        -0x69t
        -0x24t
        0x5bt
        -0xdt
        0x64t
        0x5dt
        0x7t
        0x5t
        -0x7ft
        -0x2bt
        0x41t
        -0x8t
        0x7et
        0x55t
        0x1t
        0x1dt
        -0x69t
        -0x37t
        0x25t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    nop

    .line 87
    :array_3
    .array-data 1
        0x48t
        0x49t
        -0x38t
        -0x6at
        0x18t
        -0x59t
        0x3bt
        0xdt
    .end array-data
.end method

.method public static a(Landroidx/fragment/app/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p1}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x2d

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    new-array v2, v1, [B

    .line 15
    .line 16
    fill-array-data v2, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p0, p0, Landroidx/fragment/app/h;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ld1/a;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ld1/a;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string p1, "\r\n"

    .line 39
    .line 40
    const-string v0, "\n"

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object p1, Ld1/d;->b:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ltz v2, :cond_1

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    new-array v4, v3, [B

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    const/16 v6, 0x77

    .line 59
    .line 60
    aput-byte v6, v4, v5

    .line 61
    .line 62
    new-array v6, v1, [B

    .line 63
    .line 64
    fill-array-data v6, :array_2

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    add-int/2addr p1, v2

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    sub-int/2addr p1, v3

    .line 105
    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    :cond_0
    return-object p0

    .line 110
    :cond_1
    const/16 p0, 0x17

    .line 111
    .line 112
    new-array p0, p0, [B

    .line 113
    .line 114
    fill-array-data p0, :array_3

    .line 115
    .line 116
    .line 117
    new-array p1, v1, [B

    .line 118
    .line 119
    fill-array-data p1, :array_4

    .line 120
    .line 121
    .line 122
    invoke-static {p0, p1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {p0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/4 p0, 0x0

    .line 130
    return-object p0

    .line 131
    :array_0
    .array-data 1
        -0x74t
        0x2dt
        0x2et
        0x23t
        -0x9t
        0x71t
        -0x19t
        0x57t
        -0x22t
        0x76t
        0x7et
        0x71t
        -0x60t
        0x6at
        -0x20t
        0x7bt
        -0x3et
        0x40t
        0x4ft
        0x4ft
        -0x7bt
        0x1et
        -0x68t
        0x77t
        -0x1dt
        0x53t
        0x59t
        0x46t
        -0x61t
        0x15t
        -0x7et
        0x7ft
        -0x1bt
        0x4bt
        0x4ft
        0x5at
        -0x5t
        0x6ft
        -0x4ct
        0x0t
        -0x74t
        0x3dt
        0x34t
        0x3at
        -0x1ct
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
    .line 141
    .line 142
    .line 143
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
    :array_1
    .array-data 1
        -0x54t
        0x1ft
        0x10t
        0x5t
        -0x3at
        0x4at
        -0x39t
        0x27t
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_2
    .array-data 1
        0x47t
        -0x29t
        0x1ct
        0x5bt
        0x35t
        -0x23t
        -0x23t
        0x3dt
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_3
    .array-data 1
        0x7ct
        -0x5et
        0xat
        0x21t
        -0x10t
        0x2et
        0xct
        0x3at
        0xft
        -0x5ct
        0x11t
        0x38t
        -0xct
        0x21t
        0x5t
        0x2dt
        0xft
        -0x5ft
        0x1ft
        0x3ct
        -0xbt
        0x25t
        0xft
    .end array-data

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
    :array_4
    .array-data 1
        0x2ft
        -0x39t
        0x7et
        0x55t
        -0x67t
        0x40t
        0x6bt
        0x49t
    .end array-data
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/16 v4, 0x53

    .line 11
    .line 12
    aput-byte v4, v2, v3

    .line 13
    .line 14
    const/16 v4, 0x8

    .line 15
    .line 16
    new-array v5, v4, [B

    .line 17
    .line 18
    fill-array-data v5, :array_0

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    new-array v2, v1, [B

    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    aput-byte v5, v2, v3

    .line 32
    .line 33
    new-array v5, v4, [B

    .line 34
    .line 35
    fill-array-data v5, :array_1

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v5, 0x4

    .line 43
    new-array v5, v5, [B

    .line 44
    .line 45
    fill-array-data v5, :array_2

    .line 46
    .line 47
    .line 48
    new-array v6, v4, [B

    .line 49
    .line 50
    fill-array-data v6, :array_3

    .line 51
    .line 52
    .line 53
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    new-array p0, v1, [B

    .line 65
    .line 66
    const/16 v1, -0x5d

    .line 67
    .line 68
    aput-byte v1, p0, v3

    .line 69
    .line 70
    new-array v1, v4, [B

    .line 71
    .line 72
    fill-array-data v1, :array_4

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v1, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 1
        0x74t
        0x32t
        -0x5ft
        -0x9t
        0x5dt
        0x6at
        -0x75t
        0x31t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_1
    .array-data 1
        0x24t
        -0xdt
        0x19t
        0x4dt
        -0x12t
        0x6ft
        0x31t
        0x4bt
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_2
    .array-data 1
        -0x50t
        -0x3at
        -0x59t
        0xet
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_3
    .array-data 1
        -0x69t
        -0x66t
        -0x80t
        0x29t
        0x13t
        0x21t
        -0x56t
        -0x15t
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_4
    .array-data 1
        -0x7ct
        0x27t
        0x3bt
        0x4at
        -0x48t
        0x49t
        0x5ft
        0x49t
    .end array-data
.end method

.method public static c(Landroidx/fragment/app/h;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ld1/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, v0}, Ld1/d;->a(Landroidx/fragment/app/h;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-gez v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0xd

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    new-array v2, v0, [B

    .line 27
    .line 28
    fill-array-data v2, :array_0

    .line 29
    .line 30
    .line 31
    new-array v3, v1, [B

    .line 32
    .line 33
    fill-array-data v3, :array_1

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    const/16 v2, 0x9

    .line 47
    .line 48
    new-array v2, v2, [B

    .line 49
    .line 50
    fill-array-data v2, :array_2

    .line 51
    .line 52
    .line 53
    new-array v3, v1, [B

    .line 54
    .line 55
    fill-array-data v3, :array_3

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    new-array v0, v0, [B

    .line 69
    .line 70
    fill-array-data v0, :array_4

    .line 71
    .line 72
    .line 73
    new-array v2, v1, [B

    .line 74
    .line 75
    fill-array-data v2, :array_5

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    const/16 v0, 0x12

    .line 89
    .line 90
    new-array v0, v0, [B

    .line 91
    .line 92
    fill-array-data v0, :array_6

    .line 93
    .line 94
    .line 95
    new-array v2, v1, [B

    .line 96
    .line 97
    fill-array-data v2, :array_7

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_1

    .line 109
    .line 110
    const/4 v0, 0x4

    .line 111
    new-array v0, v0, [B

    .line 112
    .line 113
    fill-array-data v0, :array_8

    .line 114
    .line 115
    .line 116
    new-array v1, v1, [B

    .line 117
    .line 118
    fill-array-data v1, :array_9

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    .line 131
    const/4 p0, 0x0

    .line 132
    :cond_0
    return-object p0

    .line 133
    :cond_1
    const/16 p0, 0x19

    .line 134
    .line 135
    new-array p0, p0, [B

    .line 136
    .line 137
    fill-array-data p0, :array_a

    .line 138
    .line 139
    .line 140
    new-array v0, v1, [B

    .line 141
    .line 142
    fill-array-data v0, :array_b

    .line 143
    .line 144
    .line 145
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const/4 p0, 0x0

    .line 153
    return-object p0

    .line 154
    nop

    .line 155
    :array_0
    .array-data 1
        0x2bt
        -0x61t
        -0x3ft
        0x4bt
        -0x75t
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    nop

    .line 163
    :array_1
    .array-data 1
        0x6et
        -0x13t
        -0x4dt
        0x24t
        -0x7t
        -0x30t
        -0x5dt
        0xat
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_2
    .array-data 1
        0x15t
        0x6et
        0x0t
        0x28t
        0x56t
        0x7bt
        -0x75t
        -0x26t
        0x3et
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    nop

    .line 181
    :array_3
    .array-data 1
        0x50t
        0x16t
        0x63t
        0x4dt
        0x26t
        0xft
        -0x1et
        -0x4bt
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_4
    .array-data 1
        0x15t
        -0x18t
        0x7at
        0x6ft
        0x60t
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    nop

    .line 197
    :array_5
    .array-data 1
        0x7ft
        -0x77t
        0xct
        0xet
        0x4et
        -0x22t
        -0x3bt
        -0x33t
    .end array-data

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_6
    .array-data 1
        0x5at
        0x45t
        0x6at
        -0x77t
        0x7dt
        0x7bt
        0x4at
        0x5dt
        0x29t
        0x45t
        0x71t
        -0x61t
        0x6at
        0x62t
        0x4at
        0x4dt
        0x66t
        0x4et
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    nop

    .line 219
    :array_7
    .array-data 1
        0x9t
        0x20t
        0x9t
        -0x4t
        0xft
        0x12t
        0x3et
        0x24t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_8
    .array-data 1
        -0x46t
        -0x4ft
        0x35t
        0x47t
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_9
    .array-data 1
        -0x2ct
        -0x3ct
        0x59t
        0x2bt
        0x44t
        -0xft
        0x37t
        -0x41t
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_a
    .array-data 1
        0x57t
        0x3t
        -0x75t
        0x22t
        0x69t
        0x1ct
        -0x1bt
        0x2et
        0x6dt
        0x8t
        -0x77t
        0x37t
        0x6ct
        0x1bt
        -0x1at
        0x7dt
        0x3et
        0x1ft
        -0x68t
        0x30t
        0x75t
        0x1at
        -0x11t
        0x7dt
        0x7bt
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    nop

    .line 259
    :array_b
    .array-data 1
        0x1et
        0x6dt
        -0x3t
        0x43t
        0x5t
        0x75t
        -0x7ft
        0xet
    .end array-data
.end method

.method public static d(Landroidx/fragment/app/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x40

    .line 14
    .line 15
    new-array v1, v1, [B

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    new-array v3, v2, [B

    .line 23
    .line 24
    fill-array-data v3, :array_1

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x4

    .line 37
    new-array p1, p1, [B

    .line 38
    .line 39
    fill-array-data p1, :array_2

    .line 40
    .line 41
    .line 42
    new-array v1, v2, [B

    .line 43
    .line 44
    fill-array-data v1, :array_3

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :cond_1
    invoke-static {p1}, Ld1/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 p1, 0x29

    .line 59
    .line 60
    new-array p1, p1, [B

    .line 61
    .line 62
    fill-array-data p1, :array_4

    .line 63
    .line 64
    .line 65
    new-array v1, v2, [B

    .line 66
    .line 67
    fill-array-data v1, :array_5

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {p2}, Ld1/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    array-length v0, v0

    .line 95
    const/16 v1, 0xe74

    .line 96
    .line 97
    if-gt v0, v1, :cond_3

    .line 98
    .line 99
    invoke-static {p0, p1}, Ld1/d;->a(Landroidx/fragment/app/h;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-static {p0}, Ld1/d;->c(Landroidx/fragment/app/h;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_2

    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_2
    const/16 p0, 0x1a

    .line 114
    .line 115
    new-array p0, p0, [B

    .line 116
    .line 117
    fill-array-data p0, :array_6

    .line 118
    .line 119
    .line 120
    new-array p1, v2, [B

    .line 121
    .line 122
    fill-array-data p1, :array_7

    .line 123
    .line 124
    .line 125
    invoke-static {p0, p1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_0
    const/4 p0, 0x0

    .line 133
    return-object p0

    .line 134
    :cond_3
    const/16 p0, 0x23

    .line 135
    .line 136
    new-array p0, p0, [B

    .line 137
    .line 138
    fill-array-data p0, :array_8

    .line 139
    .line 140
    .line 141
    new-array p1, v2, [B

    .line 142
    .line 143
    fill-array-data p1, :array_9

    .line 144
    .line 145
    .line 146
    invoke-static {p0, p1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {p0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    nop

    .line 155
    :array_0
    .array-data 1
        -0x7et
        0x4et
        -0x8t
        0x49t
        0x1dt
        -0x28t
        0x51t
        -0x40t
        -0x3bt
        0x13t
        -0x7t
        0x5et
        0xct
        -0x3et
        0x4ct
        -0x6dt
        -0x7at
        0x48t
        -0x56t
        0x5ct
        0x1dt
        -0x3et
        0x5t
        -0x66t
        -0x73t
        0x54t
        -0x18t
        0x5at
        0x14t
        -0x6at
        0x55t
        -0x6et
        -0x73t
        0x52t
        -0x17t
        0x42t
        0x27t
        -0x2bt
        0x4at
        -0x6dt
        -0x6bt
        0x49t
        -0x1bt
        0x57t
        0x51t
        -0x6at
        0x3t
        -0x25t
        -0x3ft
        0x60t
        -0x56t
        0x19t
        0x5ct
        -0x2bt
        0x50t
        -0x71t
        -0x6dt
        0x5et
        -0x1ct
        0x4ft
        0x5at
        -0x6at
        0x18t
        -0x23t
    .end array-data

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
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_1
    .array-data 1
        -0x1ft
        0x3bt
        -0x76t
        0x3bt
        0x78t
        -0x4at
        0x25t
        -0x3t
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    :array_2
    .array-data 1
        -0x46t
        -0x1dt
        -0x16t
        0x5at
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_3
    .array-data 1
        -0x2ct
        -0x6at
        -0x7at
        0x36t
        -0x28t
        0x10t
        0x76t
        0x30t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_4
    .array-data 1
        0x44t
        0x77t
        -0x60t
        -0x2t
        0x3t
        0x3bt
        0x59t
        0x9t
        0x10t
        0x5et
        -0x17t
        -0x4at
        0x42t
        0x68t
        0xat
        0x1ct
        0x11t
        0x5et
        -0x60t
        -0x41t
        0x49t
        0x74t
        0x48t
        0xdt
        0x8t
        0xat
        -0x10t
        -0x49t
        0x49t
        0x72t
        0x49t
        0x15t
        0x3bt
        0x49t
        -0x11t
        -0x4at
        0x51t
        0x69t
        0x45t
        0x0t
        0x44t
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
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    nop

    .line 239
    :array_5
    .array-data 1
        0x64t
        0x2at
        -0x80t
        -0x28t
        0x25t
        0x1bt
        0x2at
        0x6ct
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_6
    .array-data 1
        0x51t
        -0x60t
        0x67t
        -0x43t
        0x51t
        -0x24t
        0x3et
        0x41t
        0x64t
        -0x43t
        0x62t
        -0x4et
        0x5bt
        -0x3at
        0x7ft
        0x43t
        0x68t
        -0x60t
        0x65t
        -0xct
        0x54t
        -0x3ct
        0x77t
        0x5bt
        0x64t
        -0x55t
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    nop

    .line 265
    :array_7
    .array-data 1
        0x1t
        -0x31t
        0xbt
        -0x2ct
        0x32t
        -0x5bt
        0x1et
        0x37t
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_8
    .array-data 1
        0x16t
        -0x36t
        0x3t
        -0x48t
        0x53t
        0x4t
        0x1ft
        -0x7dt
        0x29t
        -0x36t
        0x4ft
        -0x43t
        0x51t
        0xft
        0x58t
        -0x6et
        0x66t
        -0x3dt
        0x0t
        -0x5dt
        0x10t
        0x9t
        0x57t
        -0x62t
        0x35t
        -0x7bt
        0x1bt
        -0x5dt
        0x51t
        0x13t
        0x4ct
        -0x79t
        0x29t
        -0x29t
        0x1bt
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_9
    .array-data 1
        0x46t
        -0x5bt
        0x6ft
        -0x2ft
        0x30t
        0x7dt
        0x3ft
        -0x9t
    .end array-data
.end method
