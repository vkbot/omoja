.class public abstract Lp7/w;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lp7/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)[[B
    .registers 15

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    new-array v1, v0, [[B

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    move v5, v4

    .line 16
    :goto_f
    if-ge v5, v2, :cond_2e

    .line 17
    .line 18
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    add-int/lit8 v5, v5, 0x1

    .line 23
    .line 24
    check-cast v6, Lr7/b;

    .line 25
    .line 26
    add-int/lit8 v7, v4, 0x1

    .line 27
    .line 28
    iget-object v8, v6, Lr7/b;->a:Ll9/o;

    .line 29
    .line 30
    invoke-virtual {v8}, Ll9/o;->k()[B

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    aput-object v8, v1, v4

    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x2

    .line 37
    .line 38
    iget-object v6, v6, Lr7/b;->b:Ll9/o;

    .line 39
    .line 40
    invoke-virtual {v6}, Ll9/o;->k()[B

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    aput-object v6, v1, v7

    .line 45
    .line 46
    goto :goto_f

    .line 47
    :cond_2e
    sget-object p0, Lo7/v4;->b:[B

    .line 48
    .line 49
    move v2, v3

    .line 50
    :goto_31
    if-ge v2, v0, :cond_ba

    .line 51
    .line 52
    aget-object v4, v1, v2

    .line 53
    .line 54
    add-int/lit8 v5, v2, 0x1

    .line 55
    .line 56
    aget-object v6, v1, v5

    .line 57
    .line 58
    invoke-static {v4, p0}, Lo7/v4;->a([B[B)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_b6

    .line 63
    .line 64
    move v4, v3

    .line 65
    :goto_40
    array-length v7, v6

    .line 66
    if-ge v4, v7, :cond_a7

    .line 67
    .line 68
    aget-byte v7, v6, v4

    .line 69
    .line 70
    const/16 v8, 0x2c

    .line 71
    .line 72
    if-ne v7, v8, :cond_a4

    .line 73
    .line 74
    new-instance v4, Ljava/util/ArrayList;

    .line 75
    .line 76
    add-int/lit8 v5, v0, 0xa

    .line 77
    .line 78
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .line 80
    .line 81
    move v5, v3

    .line 82
    :goto_51
    if-ge v5, v2, :cond_5b

    .line 83
    .line 84
    aget-object v6, v1, v5

    .line 85
    .line 86
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    add-int/lit8 v5, v5, 0x1

    .line 90
    .line 91
    goto :goto_51

    .line 92
    :cond_5b
    :goto_5b
    if-ge v2, v0, :cond_9b

    .line 93
    .line 94
    aget-object v5, v1, v2

    .line 95
    .line 96
    add-int/lit8 v6, v2, 0x1

    .line 97
    .line 98
    aget-object v6, v1, v6

    .line 99
    .line 100
    invoke-static {v5, p0}, Lo7/v4;->a([B[B)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-nez v7, :cond_70

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_98

    .line 113
    :cond_70
    move v7, v3

    .line 114
    move v9, v7

    .line 115
    :goto_72
    array-length v10, v6

    .line 116
    if-gt v7, v10, :cond_98

    .line 117
    .line 118
    array-length v10, v6

    .line 119
    if-eq v7, v10, :cond_7d

    .line 120
    .line 121
    aget-byte v10, v6, v7

    .line 122
    .line 123
    if-eq v10, v8, :cond_7d

    .line 124
    .line 125
    goto :goto_95

    .line 126
    :cond_7d
    sget-object v10, Lk4/e;->d:Lk4/c;

    .line 127
    .line 128
    new-instance v11, Ljava/lang/String;

    .line 129
    .line 130
    sub-int v12, v7, v9

    .line 131
    .line 132
    sget-object v13, Li4/b;->a:Ljava/nio/charset/Charset;

    .line 133
    .line 134
    invoke-direct {v11, v6, v9, v12, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10, v11}, Lk4/e;->a(Ljava/lang/String;)[B

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    add-int/lit8 v10, v7, 0x1

    .line 142
    .line 143
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move v9, v10

    .line 150
    :goto_95
    add-int/lit8 v7, v7, 0x1

    .line 151
    .line 152
    goto :goto_72

    .line 153
    :cond_98
    :goto_98
    add-int/lit8 v2, v2, 0x2

    .line 154
    .line 155
    goto :goto_5b

    .line 156
    :cond_9b
    new-array p0, v3, [[B

    .line 157
    .line 158
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    check-cast p0, [[B

    .line 163
    .line 164
    return-object p0

    .line 165
    :cond_a4
    add-int/lit8 v4, v4, 0x1

    .line 166
    .line 167
    goto :goto_40

    .line 168
    :cond_a7
    sget-object v4, Lk4/e;->d:Lk4/c;

    .line 169
    .line 170
    new-instance v7, Ljava/lang/String;

    .line 171
    .line 172
    sget-object v8, Li4/b;->a:Ljava/nio/charset/Charset;

    .line 173
    .line 174
    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v7}, Lk4/e;->a(Ljava/lang/String;)[B

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    aput-object v4, v1, v5

    .line 182
    .line 183
    :cond_b6
    add-int/lit8 v2, v2, 0x2

    .line 184
    .line 185
    goto/16 :goto_31

    .line 186
    .line 187
    :cond_ba
    return-object v1
.end method
