.class public final Ls6/e;
.super Ll/d;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Ls6/c;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ll/d;-><init>(Ls6/c;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Ls6/e;->e:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final S()Ls6/a;
    .registers 15

    .line 1
    iget-object v0, p0, Ll/d;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ls6/a;

    .line 4
    .line 5
    new-instance v1, Ls6/b;

    .line 6
    .line 7
    invoke-direct {v1}, Ls6/b;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ls6/b;

    .line 11
    .line 12
    invoke-direct {v2}, Ls6/b;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ls6/b;

    .line 16
    .line 17
    invoke-direct {v3}, Ls6/b;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Ls6/b;

    .line 21
    .line 22
    invoke-direct {v4}, Ls6/b;-><init>()V

    .line 23
    .line 24
    .line 25
    array-length v5, v0

    .line 26
    const/4 v6, 0x0

    .line 27
    move v7, v6

    .line 28
    :goto_1b
    const/4 v8, 0x3

    .line 29
    if-ge v7, v5, :cond_55

    .line 30
    .line 31
    aget-object v9, v0, v7

    .line 32
    .line 33
    if-eqz v9, :cond_52

    .line 34
    .line 35
    invoke-virtual {v9}, Ls6/a;->b()V

    .line 36
    .line 37
    .line 38
    iget v10, v9, Ls6/a;->e:I

    .line 39
    .line 40
    rem-int/lit8 v10, v10, 0x1e

    .line 41
    .line 42
    iget v9, v9, Ls6/a;->f:I

    .line 43
    .line 44
    iget-boolean v11, p0, Ls6/e;->e:Z

    .line 45
    .line 46
    if-nez v11, :cond_31

    .line 47
    .line 48
    add-int/lit8 v9, v9, 0x2

    .line 49
    .line 50
    :cond_31
    rem-int/2addr v9, v8

    .line 51
    const/4 v8, 0x1

    .line 52
    if-eqz v9, :cond_4c

    .line 53
    .line 54
    if-eq v9, v8, :cond_41

    .line 55
    .line 56
    const/4 v8, 0x2

    .line 57
    if-eq v9, v8, :cond_3b

    .line 58
    .line 59
    goto :goto_52

    .line 60
    :cond_3b
    add-int/lit8 v10, v10, 0x1

    .line 61
    .line 62
    invoke-virtual {v1, v10}, Ls6/b;->b(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_52

    .line 66
    :cond_41
    div-int/lit8 v8, v10, 0x3

    .line 67
    .line 68
    invoke-virtual {v4, v8}, Ls6/b;->b(I)V

    .line 69
    .line 70
    .line 71
    rem-int/lit8 v10, v10, 0x3

    .line 72
    .line 73
    invoke-virtual {v3, v10}, Ls6/b;->b(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_52

    .line 77
    :cond_4c
    mul-int/lit8 v10, v10, 0x3

    .line 78
    .line 79
    add-int/2addr v10, v8

    .line 80
    invoke-virtual {v2, v10}, Ls6/b;->b(I)V

    .line 81
    .line 82
    .line 83
    :cond_52
    :goto_52
    add-int/lit8 v7, v7, 0x1

    .line 84
    .line 85
    goto :goto_1b

    .line 86
    :cond_55
    invoke-virtual {v1}, Ls6/b;->a()[I

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    array-length v5, v5

    .line 91
    if-eqz v5, :cond_bc

    .line 92
    .line 93
    invoke-virtual {v2}, Ls6/b;->a()[I

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    array-length v5, v5

    .line 98
    if-eqz v5, :cond_bc

    .line 99
    .line 100
    invoke-virtual {v3}, Ls6/b;->a()[I

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    array-length v5, v5

    .line 105
    if-eqz v5, :cond_bc

    .line 106
    .line 107
    invoke-virtual {v4}, Ls6/b;->a()[I

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    array-length v5, v5

    .line 112
    if-eqz v5, :cond_bc

    .line 113
    .line 114
    invoke-virtual {v1}, Ls6/b;->a()[I

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    aget v5, v5, v6

    .line 119
    .line 120
    if-lez v5, :cond_bc

    .line 121
    .line 122
    invoke-virtual {v2}, Ls6/b;->a()[I

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    aget v5, v5, v6

    .line 127
    .line 128
    invoke-virtual {v3}, Ls6/b;->a()[I

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    aget v7, v7, v6

    .line 133
    .line 134
    add-int/2addr v5, v7

    .line 135
    if-lt v5, v8, :cond_bc

    .line 136
    .line 137
    invoke-virtual {v2}, Ls6/b;->a()[I

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    aget v5, v5, v6

    .line 142
    .line 143
    invoke-virtual {v3}, Ls6/b;->a()[I

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    aget v7, v7, v6

    .line 148
    .line 149
    add-int/2addr v5, v7

    .line 150
    const/16 v7, 0x5a

    .line 151
    .line 152
    if-le v5, v7, :cond_9a

    .line 153
    .line 154
    goto :goto_bc

    .line 155
    :cond_9a
    new-instance v8, Ls6/a;

    .line 156
    .line 157
    invoke-virtual {v1}, Ls6/b;->a()[I

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    aget v9, v1, v6

    .line 162
    .line 163
    invoke-virtual {v2}, Ls6/b;->a()[I

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    aget v10, v1, v6

    .line 168
    .line 169
    invoke-virtual {v3}, Ls6/b;->a()[I

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    aget v11, v1, v6

    .line 174
    .line 175
    invoke-virtual {v4}, Ls6/b;->a()[I

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    aget v12, v1, v6

    .line 180
    .line 181
    const/4 v13, 0x0

    .line 182
    invoke-direct/range {v8 .. v13}, Ls6/a;-><init>(IIIII)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0, v8}, Ls6/e;->T([Ls6/a;Ls6/a;)V

    .line 186
    .line 187
    .line 188
    return-object v8

    .line 189
    :cond_bc
    :goto_bc
    const/4 v0, 0x0

    .line 190
    return-object v0
.end method

.method public final T([Ls6/a;Ls6/a;)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_4b

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    if-eqz v1, :cond_48

    .line 8
    .line 9
    iget v2, v1, Ls6/a;->e:I

    .line 10
    .line 11
    rem-int/lit8 v2, v2, 0x1e

    .line 12
    .line 13
    iget v1, v1, Ls6/a;->f:I

    .line 14
    .line 15
    iget v3, p2, Ls6/a;->f:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-le v1, v3, :cond_16

    .line 19
    .line 20
    aput-object v4, p1, v0

    .line 21
    .line 22
    goto :goto_48

    .line 23
    :cond_16
    iget-boolean v3, p0, Ls6/e;->e:Z

    .line 24
    .line 25
    if-nez v3, :cond_1c

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x2

    .line 28
    .line 29
    :cond_1c
    rem-int/lit8 v1, v1, 0x3

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v1, :cond_3f

    .line 33
    .line 34
    if-eq v1, v3, :cond_30

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    if-eq v1, v3, :cond_27

    .line 38
    .line 39
    goto :goto_48

    .line 40
    :cond_27
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    iget v1, p2, Ls6/a;->b:I

    .line 43
    .line 44
    if-eq v2, v1, :cond_48

    .line 45
    .line 46
    aput-object v4, p1, v0

    .line 47
    .line 48
    goto :goto_48

    .line 49
    :cond_30
    div-int/lit8 v1, v2, 0x3

    .line 50
    .line 51
    iget v3, p2, Ls6/a;->c:I

    .line 52
    .line 53
    if-ne v1, v3, :cond_3c

    .line 54
    .line 55
    rem-int/lit8 v2, v2, 0x3

    .line 56
    .line 57
    iget v1, p2, Ls6/a;->e:I

    .line 58
    .line 59
    if-eq v2, v1, :cond_48

    .line 60
    .line 61
    :cond_3c
    aput-object v4, p1, v0

    .line 62
    .line 63
    goto :goto_48

    .line 64
    :cond_3f
    mul-int/lit8 v2, v2, 0x3

    .line 65
    .line 66
    add-int/2addr v2, v3

    .line 67
    iget v1, p2, Ls6/a;->d:I

    .line 68
    .line 69
    if-eq v2, v1, :cond_48

    .line 70
    .line 71
    aput-object v4, p1, v0

    .line 72
    .line 73
    :cond_48
    :goto_48
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4b
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "IsLeft: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Ls6/e;->e:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Ll/d;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
