.class public final Ln7/f1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final d:Ljava/util/List;

.field public static final e:Ln7/f1;

.field public static final f:Ln7/f1;

.field public static final g:Ln7/f1;

.field public static final h:Ln7/f1;

.field public static final i:Ln7/f1;

.field public static final j:Ln7/f1;

.field public static final k:Ln7/f1;

.field public static final l:Ln7/f1;

.field public static final m:Ln7/f1;

.field public static final n:Ln7/t0;

.field public static final o:Ln7/t0;


# instance fields
.field public final a:Ln7/e1;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ln7/e1;->values()[Ln7/e1;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_c
    if-ge v4, v2, :cond_39

    .line 14
    .line 15
    aget-object v5, v1, v4

    .line 16
    .line 17
    iget v6, v5, Ln7/e1;->b:I

    .line 18
    .line 19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    new-instance v7, Ln7/f1;

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    invoke-direct {v7, v5, v8, v8}, Ln7/f1;-><init>(Ln7/e1;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Ln7/f1;

    .line 34
    .line 35
    if-nez v6, :cond_27

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_c

    .line 40
    :cond_27
    iget-object v0, v6, Ln7/f1;->a:Ln7/e1;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, " & "

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "Code value duplication between "

    .line 53
    .line 54
    invoke-static {v3, v0, v1, v2}, Ln0/b;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_39
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Ln7/f1;->d:Ljava/util/List;

    .line 72
    .line 73
    sget-object v0, Ln7/e1;->d:Ln7/e1;

    .line 74
    .line 75
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Ln7/f1;->e:Ln7/f1;

    .line 80
    .line 81
    sget-object v0, Ln7/e1;->e:Ln7/e1;

    .line 82
    .line 83
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Ln7/f1;->f:Ln7/f1;

    .line 88
    .line 89
    sget-object v0, Ln7/e1;->f:Ln7/e1;

    .line 90
    .line 91
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Ln7/f1;->g:Ln7/f1;

    .line 96
    .line 97
    sget-object v0, Ln7/e1;->g:Ln7/e1;

    .line 98
    .line 99
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 100
    .line 101
    .line 102
    sget-object v0, Ln7/e1;->h:Ln7/e1;

    .line 103
    .line 104
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sput-object v0, Ln7/f1;->h:Ln7/f1;

    .line 109
    .line 110
    sget-object v0, Ln7/e1;->i:Ln7/e1;

    .line 111
    .line 112
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 113
    .line 114
    .line 115
    sget-object v0, Ln7/e1;->j:Ln7/e1;

    .line 116
    .line 117
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 118
    .line 119
    .line 120
    sget-object v0, Ln7/e1;->k:Ln7/e1;

    .line 121
    .line 122
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sput-object v0, Ln7/f1;->i:Ln7/f1;

    .line 127
    .line 128
    sget-object v0, Ln7/e1;->t:Ln7/e1;

    .line 129
    .line 130
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 131
    .line 132
    .line 133
    sget-object v0, Ln7/e1;->l:Ln7/e1;

    .line 134
    .line 135
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sput-object v0, Ln7/f1;->j:Ln7/f1;

    .line 140
    .line 141
    sget-object v0, Ln7/e1;->m:Ln7/e1;

    .line 142
    .line 143
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    sput-object v0, Ln7/f1;->k:Ln7/f1;

    .line 148
    .line 149
    sget-object v0, Ln7/e1;->n:Ln7/e1;

    .line 150
    .line 151
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 152
    .line 153
    .line 154
    sget-object v0, Ln7/e1;->o:Ln7/e1;

    .line 155
    .line 156
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 157
    .line 158
    .line 159
    sget-object v0, Ln7/e1;->p:Ln7/e1;

    .line 160
    .line 161
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 162
    .line 163
    .line 164
    sget-object v0, Ln7/e1;->q:Ln7/e1;

    .line 165
    .line 166
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sput-object v0, Ln7/f1;->l:Ln7/f1;

    .line 171
    .line 172
    sget-object v0, Ln7/e1;->r:Ln7/e1;

    .line 173
    .line 174
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    sput-object v0, Ln7/f1;->m:Ln7/f1;

    .line 179
    .line 180
    sget-object v0, Ln7/e1;->s:Ln7/e1;

    .line 181
    .line 182
    invoke-virtual {v0}, Ln7/e1;->a()Ln7/f1;

    .line 183
    .line 184
    .line 185
    new-instance v0, Ln7/h;

    .line 186
    .line 187
    const/16 v1, 0xa

    .line 188
    .line 189
    invoke-direct {v0, v1}, Ln7/h;-><init>(I)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Ln7/t0;

    .line 193
    .line 194
    const-string v2, "grpc-status"

    .line 195
    .line 196
    invoke-direct {v1, v2, v3, v0}, Ln7/t0;-><init>(Ljava/lang/String;ZLn7/u0;)V

    .line 197
    .line 198
    .line 199
    sput-object v1, Ln7/f1;->n:Ln7/t0;

    .line 200
    .line 201
    new-instance v0, Ln7/h;

    .line 202
    .line 203
    const/4 v1, 0x1

    .line 204
    invoke-direct {v0, v1}, Ln7/h;-><init>(I)V

    .line 205
    .line 206
    .line 207
    new-instance v1, Ln7/t0;

    .line 208
    .line 209
    const-string v2, "grpc-message"

    .line 210
    .line 211
    invoke-direct {v1, v2, v3, v0}, Ln7/t0;-><init>(Ljava/lang/String;ZLn7/u0;)V

    .line 212
    .line 213
    .line 214
    sput-object v1, Ln7/f1;->o:Ln7/t0;

    .line 215
    .line 216
    return-void
.end method

.method public constructor <init>(Ln7/e1;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "code"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ln7/f1;->a:Ln7/e1;

    .line 10
    .line 11
    iput-object p2, p0, Ln7/f1;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Ln7/f1;->c:Ljava/lang/Throwable;

    .line 14
    .line 15
    return-void
.end method

.method public static c(Ln7/f1;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ln7/f1;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ln7/f1;->a:Ln7/e1;

    .line 4
    .line 5
    if-nez v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ": "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Ln7/f1;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static d(I)Ln7/f1;
    .registers 3

    .line 1
    if-ltz p0, :cond_12

    .line 2
    .line 3
    sget-object v0, Ln7/f1;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt p0, v1, :cond_b

    .line 10
    .line 11
    goto :goto_12

    .line 12
    :cond_b
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ln7/f1;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_12
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Unknown code "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object v0, Ln7/f1;->g:Ln7/f1;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static e(Ljava/lang/Throwable;)Ln7/f1;
    .registers 3

    .line 1
    const-string v0, "t"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    :goto_6
    if-eqz v0, :cond_1f

    .line 8
    .line 9
    instance-of v1, v0, Ln7/g1;

    .line 10
    .line 11
    if-eqz v1, :cond_11

    .line 12
    .line 13
    check-cast v0, Ln7/g1;

    .line 14
    .line 15
    iget-object p0, v0, Ln7/g1;->b:Ln7/f1;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_11
    instance-of v1, v0, Ln7/h1;

    .line 19
    .line 20
    if-eqz v1, :cond_1a

    .line 21
    .line 22
    check-cast v0, Ln7/h1;

    .line 23
    .line 24
    iget-object p0, v0, Ln7/h1;->b:Ln7/f1;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_6

    .line 32
    :cond_1f
    sget-object v0, Ln7/f1;->g:Ln7/f1;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method


# virtual methods
.method public final a()Ln7/h1;
    .registers 3

    .line 1
    new-instance v0, Ln7/h1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Ln7/h1;-><init>(Ln7/f1;Ln7/v0;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ln7/f1;
    .registers 7

    .line 1
    iget-object v0, p0, Ln7/f1;->c:Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object v1, p0, Ln7/f1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Ln7/f1;->a:Ln7/e1;

    .line 6
    .line 7
    if-nez v1, :cond_e

    .line 8
    .line 9
    new-instance v1, Ln7/f1;

    .line 10
    .line 11
    invoke-direct {v1, v2, p1, v0}, Ln7/f1;-><init>(Ln7/e1;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_e
    new-instance v3, Ln7/f1;

    .line 16
    .line 17
    const-string v4, "\n"

    .line 18
    .line 19
    invoke-static {v1, v4, p1}, Lai/onnxruntime/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v3, v2, p1, v0}, Ln7/f1;-><init>(Ln7/e1;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    return-object v3
.end method

.method public final f()Z
    .registers 3

    .line 1
    sget-object v0, Ln7/e1;->d:Ln7/e1;

    .line 2
    .line 3
    iget-object v1, p0, Ln7/f1;->a:Ln7/e1;

    .line 4
    .line 5
    if-ne v0, v1, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final g(Ljava/lang/Throwable;)Ln7/f1;
    .registers 5

    .line 1
    iget-object v0, p0, Ln7/f1;->c:Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/bumptech/glide/d;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_9
    new-instance v0, Ln7/f1;

    .line 11
    .line 12
    iget-object v1, p0, Ln7/f1;->a:Ln7/e1;

    .line 13
    .line 14
    iget-object v2, p0, Ln7/f1;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, p1}, Ln7/f1;-><init>(Ln7/e1;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ln7/f1;
    .registers 5

    .line 1
    iget-object v0, p0, Ln7/f1;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/bumptech/glide/d;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_9
    new-instance v0, Ln7/f1;

    .line 11
    .line 12
    iget-object v1, p0, Ln7/f1;->a:Ln7/e1;

    .line 13
    .line 14
    iget-object v2, p0, Ln7/f1;->c:Ljava/lang/Throwable;

    .line 15
    .line 16
    invoke-direct {v0, v1, p1, v2}, Ln7/f1;-><init>(Ln7/e1;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ln7/f1;->a:Ln7/e1;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "code"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "description"

    .line 17
    .line 18
    iget-object v2, p0, Ln7/f1;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Ln7/f1;->c:Ljava/lang/Throwable;

    .line 24
    .line 25
    if-eqz v1, :cond_2d

    .line 26
    .line 27
    sget-object v2, Li4/g;->a:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v2, Ljava/io/StringWriter;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v3, Ljava/io/PrintWriter;

    .line 35
    .line 36
    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_2d
    const-string v2, "cause"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
