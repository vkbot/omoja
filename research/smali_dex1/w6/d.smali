.class public final enum Lw6/d;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final enum d:Lw6/d;

.field public static final enum e:Lw6/d;

.field public static final enum f:Lw6/d;

.field public static final enum g:Lw6/d;

.field public static final enum h:Lw6/d;

.field public static final enum i:Lw6/d;

.field public static final enum j:Lw6/d;

.field public static final enum k:Lw6/d;

.field public static final enum l:Lw6/d;

.field public static final enum m:Lw6/d;

.field public static final synthetic n:[Lw6/d;


# instance fields
.field public final b:[I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lw6/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    filled-new-array {v1, v1, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v3, "TERMINATOR"

    .line 9
    .line 10
    invoke-direct {v0, v3, v1, v1, v2}, Lw6/d;-><init>(Ljava/lang/String;II[I)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lw6/d;->d:Lw6/d;

    .line 14
    .line 15
    new-instance v2, Lw6/d;

    .line 16
    .line 17
    const/16 v3, 0xe

    .line 18
    .line 19
    const/16 v4, 0xa

    .line 20
    .line 21
    const/16 v5, 0xc

    .line 22
    .line 23
    filled-new-array {v4, v5, v3}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v6, "NUMERIC"

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    invoke-direct {v2, v6, v7, v7, v3}, Lw6/d;-><init>(Ljava/lang/String;II[I)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lw6/d;->e:Lw6/d;

    .line 34
    .line 35
    move-object v3, v2

    .line 36
    new-instance v2, Lw6/d;

    .line 37
    .line 38
    const/16 v6, 0x9

    .line 39
    .line 40
    const/16 v7, 0xb

    .line 41
    .line 42
    const/16 v8, 0xd

    .line 43
    .line 44
    filled-new-array {v6, v7, v8}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const-string v9, "ALPHANUMERIC"

    .line 49
    .line 50
    const/4 v10, 0x2

    .line 51
    invoke-direct {v2, v9, v10, v10, v7}, Lw6/d;-><init>(Ljava/lang/String;II[I)V

    .line 52
    .line 53
    .line 54
    sput-object v2, Lw6/d;->f:Lw6/d;

    .line 55
    .line 56
    move-object v7, v3

    .line 57
    new-instance v3, Lw6/d;

    .line 58
    .line 59
    const/4 v9, 0x3

    .line 60
    filled-new-array {v1, v1, v1}, [I

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    const-string v11, "STRUCTURED_APPEND"

    .line 65
    .line 66
    invoke-direct {v3, v11, v9, v9, v10}, Lw6/d;-><init>(Ljava/lang/String;II[I)V

    .line 67
    .line 68
    .line 69
    sput-object v3, Lw6/d;->g:Lw6/d;

    .line 70
    .line 71
    new-instance v9, Lw6/d;

    .line 72
    .line 73
    const/16 v10, 0x10

    .line 74
    .line 75
    const/16 v11, 0x8

    .line 76
    .line 77
    filled-new-array {v11, v10, v10}, [I

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    const-string v12, "BYTE"

    .line 82
    .line 83
    const/4 v13, 0x4

    .line 84
    invoke-direct {v9, v12, v13, v13, v10}, Lw6/d;-><init>(Ljava/lang/String;II[I)V

    .line 85
    .line 86
    .line 87
    sput-object v9, Lw6/d;->h:Lw6/d;

    .line 88
    .line 89
    new-instance v10, Lw6/d;

    .line 90
    .line 91
    filled-new-array {v1, v1, v1}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    const-string v13, "ECI"

    .line 96
    .line 97
    const/4 v14, 0x5

    .line 98
    const/4 v15, 0x7

    .line 99
    invoke-direct {v10, v13, v14, v15, v12}, Lw6/d;-><init>(Ljava/lang/String;II[I)V

    .line 100
    .line 101
    .line 102
    sput-object v10, Lw6/d;->i:Lw6/d;

    .line 103
    .line 104
    new-instance v12, Lw6/d;

    .line 105
    .line 106
    const/4 v13, 0x6

    .line 107
    filled-new-array {v11, v4, v5}, [I

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    const-string v4, "KANJI"

    .line 112
    .line 113
    invoke-direct {v12, v4, v13, v11, v8}, Lw6/d;-><init>(Ljava/lang/String;II[I)V

    .line 114
    .line 115
    .line 116
    sput-object v12, Lw6/d;->j:Lw6/d;

    .line 117
    .line 118
    move-object v4, v7

    .line 119
    new-instance v7, Lw6/d;

    .line 120
    .line 121
    const-string v8, "FNC1_FIRST_POSITION"

    .line 122
    .line 123
    filled-new-array {v1, v1, v1}, [I

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    invoke-direct {v7, v8, v15, v14, v13}, Lw6/d;-><init>(Ljava/lang/String;II[I)V

    .line 128
    .line 129
    .line 130
    sput-object v7, Lw6/d;->k:Lw6/d;

    .line 131
    .line 132
    new-instance v8, Lw6/d;

    .line 133
    .line 134
    const-string v13, "FNC1_SECOND_POSITION"

    .line 135
    .line 136
    filled-new-array {v1, v1, v1}, [I

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-direct {v8, v13, v11, v6, v1}, Lw6/d;-><init>(Ljava/lang/String;II[I)V

    .line 141
    .line 142
    .line 143
    sput-object v8, Lw6/d;->l:Lw6/d;

    .line 144
    .line 145
    move-object v1, v4

    .line 146
    move-object v4, v9

    .line 147
    new-instance v9, Lw6/d;

    .line 148
    .line 149
    const-string v13, "HANZI"

    .line 150
    .line 151
    const/16 v14, 0xa

    .line 152
    .line 153
    filled-new-array {v11, v14, v5}, [I

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    const/16 v11, 0xd

    .line 158
    .line 159
    invoke-direct {v9, v13, v6, v11, v5}, Lw6/d;-><init>(Ljava/lang/String;II[I)V

    .line 160
    .line 161
    .line 162
    sput-object v9, Lw6/d;->m:Lw6/d;

    .line 163
    .line 164
    move-object v5, v10

    .line 165
    move-object v6, v12

    .line 166
    filled-new-array/range {v0 .. v9}, [Lw6/d;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sput-object v0, Lw6/d;->n:[Lw6/d;

    .line 171
    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II[I)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lw6/d;->b:[I

    .line 5
    .line 6
    iput p3, p0, Lw6/d;->c:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw6/d;
    .registers 2

    .line 1
    const-class v0, Lw6/d;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lw6/d;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lw6/d;
    .registers 1

    .line 1
    sget-object v0, Lw6/d;->n:[Lw6/d;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lw6/d;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lw6/d;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a(Lw6/f;)I
    .registers 3

    .line 1
    iget p1, p1, Lw6/f;->a:I

    .line 2
    .line 3
    const/16 v0, 0x9

    .line 4
    .line 5
    if-gt p1, v0, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_f

    .line 9
    :cond_8
    const/16 v0, 0x1a

    .line 10
    .line 11
    if-gt p1, v0, :cond_e

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x2

    .line 16
    :goto_f
    iget-object v0, p0, Lw6/d;->b:[I

    .line 17
    .line 18
    aget p1, v0, p1

    .line 19
    .line 20
    return p1
.end method
