.class public final Lq6/b;
.super Lq6/d;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lf6/a;I)V
    .registers 3

    .line 1
    iput p2, p0, Lq6/b;->d:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lo/b;-><init>(Lf6/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 7

    .line 1
    iget v0, p0, Lq6/b;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_cc

    .line 4
    .line 5
    .line 6
    const-string v0, "(01)"

    .line 7
    .line 8
    invoke-static {v0}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lo/b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, La5/h;

    .line 19
    .line 20
    iget-object v3, v2, La5/h;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v3, Lf6/a;

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    invoke-static {v4, v4, v3}, La5/h;->h(IILf6/a;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 v3, 0x8

    .line 33
    .line 34
    invoke-virtual {p0, v0, v3, v1}, Lq6/d;->c(Ljava/lang/StringBuilder;II)V

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x30

    .line 38
    .line 39
    invoke-virtual {v2, v0, v1}, La5/h;->d(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :pswitch_2b
    iget-object v0, p0, Lo/b;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, La5/h;

    .line 47
    .line 48
    iget-object v1, p0, Lo/b;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lf6/a;

    .line 51
    .line 52
    iget v1, v1, Lf6/a;->c:I

    .line 53
    .line 54
    const/16 v2, 0x30

    .line 55
    .line 56
    if-lt v1, v2, :cond_87

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const/16 v3, 0x8

    .line 64
    .line 65
    invoke-virtual {p0, v1, v3}, Lq6/d;->b(Ljava/lang/StringBuilder;I)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v0, La5/h;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Lf6/a;

    .line 71
    .line 72
    const/4 v4, 0x2

    .line 73
    invoke-static {v2, v4, v3}, La5/h;->h(IILf6/a;)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const-string v4, "(393"

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 v3, 0x29

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v3, v0, La5/h;->c:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v3, Lf6/a;

    .line 93
    .line 94
    const/16 v4, 0x32

    .line 95
    .line 96
    const/16 v5, 0xa

    .line 97
    .line 98
    invoke-static {v4, v5, v3}, La5/h;->h(IILf6/a;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    div-int/lit8 v4, v3, 0x64

    .line 103
    .line 104
    if-nez v4, :cond_6c

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_6c
    div-int/lit8 v4, v3, 0xa

    .line 110
    .line 111
    if-nez v4, :cond_73

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    :cond_73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const/16 v2, 0x3c

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    invoke-virtual {v0, v2, v3}, La5/h;->f(ILjava/lang/String;)Lq6/h;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v0, v0, Lq6/h;->b:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0

    .line 136
    :cond_87
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 137
    .line 138
    throw v0

    .line 139
    :pswitch_8a
    iget-object v0, p0, Lo/b;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, La5/h;

    .line 142
    .line 143
    iget-object v1, p0, Lo/b;->b:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v1, Lf6/a;

    .line 146
    .line 147
    iget v1, v1, Lf6/a;->c:I

    .line 148
    .line 149
    const/16 v2, 0x30

    .line 150
    .line 151
    if-lt v1, v2, :cond_c9

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const/16 v3, 0x8

    .line 159
    .line 160
    invoke-virtual {p0, v1, v3}, Lq6/d;->b(Ljava/lang/StringBuilder;I)V

    .line 161
    .line 162
    .line 163
    iget-object v3, v0, La5/h;->c:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v3, Lf6/a;

    .line 166
    .line 167
    const/4 v4, 0x2

    .line 168
    invoke-static {v2, v4, v3}, La5/h;->h(IILf6/a;)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    const-string v3, "(392"

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const/16 v2, 0x29

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const/16 v2, 0x32

    .line 186
    .line 187
    const/4 v3, 0x0

    .line 188
    invoke-virtual {v0, v2, v3}, La5/h;->f(ILjava/lang/String;)Lq6/h;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v0, v0, Lq6/h;->b:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    return-object v0

    .line 202
    :cond_c9
    sget-object v0, Lz5/i;->d:Lz5/i;

    .line 203
    .line 204
    throw v0

    .line 205
    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_2b
    .end packed-switch
.end method
