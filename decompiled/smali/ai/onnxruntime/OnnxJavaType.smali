.class public final enum Lai/onnxruntime/OnnxJavaType;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OnnxJavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OnnxJavaType;

.field public static final enum BFLOAT16:Lai/onnxruntime/OnnxJavaType;

.field public static final enum BOOL:Lai/onnxruntime/OnnxJavaType;

.field public static final enum DOUBLE:Lai/onnxruntime/OnnxJavaType;

.field public static final enum FLOAT:Lai/onnxruntime/OnnxJavaType;

.field public static final enum FLOAT16:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT16:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT32:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT64:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT8:Lai/onnxruntime/OnnxJavaType;

.field public static final enum STRING:Lai/onnxruntime/OnnxJavaType;

.field public static final enum UINT8:Lai/onnxruntime/OnnxJavaType;

.field public static final enum UNKNOWN:Lai/onnxruntime/OnnxJavaType;

.field private static final values:[Lai/onnxruntime/OnnxJavaType;


# instance fields
.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final size:I

.field public final value:I


# direct methods
.method private static synthetic $values()[Lai/onnxruntime/OnnxJavaType;
    .locals 12

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    .line 2
    .line 3
    sget-object v1, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    .line 4
    .line 5
    sget-object v2, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    .line 6
    .line 7
    sget-object v3, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    .line 8
    .line 9
    sget-object v4, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    .line 10
    .line 11
    sget-object v5, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    .line 12
    .line 13
    sget-object v6, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    .line 14
    .line 15
    sget-object v7, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    .line 16
    .line 17
    sget-object v8, Lai/onnxruntime/OnnxJavaType;->UINT8:Lai/onnxruntime/OnnxJavaType;

    .line 18
    .line 19
    sget-object v9, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    .line 20
    .line 21
    sget-object v10, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    .line 22
    .line 23
    sget-object v11, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Lai/onnxruntime/OnnxJavaType;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lai/onnxruntime/OnnxJavaType;

    .line 2
    .line 3
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 4
    .line 5
    const/4 v5, 0x4

    .line 6
    const-string v1, "FLOAT"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    .line 14
    .line 15
    new-instance v1, Lai/onnxruntime/OnnxJavaType;

    .line 16
    .line 17
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    const/16 v6, 0x8

    .line 20
    .line 21
    const-string v2, "DOUBLE"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    .line 28
    .line 29
    new-instance v2, Lai/onnxruntime/OnnxJavaType;

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    const-string v3, "INT8"

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    invoke-direct/range {v2 .. v7}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 38
    .line 39
    .line 40
    sput-object v2, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    .line 41
    .line 42
    new-instance v7, Lai/onnxruntime/OnnxJavaType;

    .line 43
    .line 44
    const/4 v12, 0x2

    .line 45
    const-string v8, "INT16"

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    const/4 v10, 0x4

    .line 49
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    move-object v11, v4

    .line 52
    invoke-direct/range {v7 .. v12}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 53
    .line 54
    .line 55
    sput-object v7, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    .line 56
    .line 57
    new-instance v8, Lai/onnxruntime/OnnxJavaType;

    .line 58
    .line 59
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 60
    .line 61
    const/4 v13, 0x4

    .line 62
    const-string v9, "INT32"

    .line 63
    .line 64
    const/4 v11, 0x5

    .line 65
    invoke-direct/range {v8 .. v13}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 66
    .line 67
    .line 68
    sput-object v8, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    .line 69
    .line 70
    new-instance v9, Lai/onnxruntime/OnnxJavaType;

    .line 71
    .line 72
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    const/16 v14, 0x8

    .line 75
    .line 76
    const-string v10, "INT64"

    .line 77
    .line 78
    const/4 v12, 0x6

    .line 79
    invoke-direct/range {v9 .. v14}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 80
    .line 81
    .line 82
    sput-object v9, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    .line 83
    .line 84
    new-instance v10, Lai/onnxruntime/OnnxJavaType;

    .line 85
    .line 86
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 87
    .line 88
    const/4 v15, 0x1

    .line 89
    const-string v11, "BOOL"

    .line 90
    .line 91
    const/4 v13, 0x7

    .line 92
    invoke-direct/range {v10 .. v15}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 93
    .line 94
    .line 95
    sput-object v10, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    .line 96
    .line 97
    new-instance v11, Lai/onnxruntime/OnnxJavaType;

    .line 98
    .line 99
    const-class v15, Ljava/lang/String;

    .line 100
    .line 101
    const/16 v16, 0x4

    .line 102
    .line 103
    const-string v12, "STRING"

    .line 104
    .line 105
    const/16 v14, 0x8

    .line 106
    .line 107
    invoke-direct/range {v11 .. v16}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 108
    .line 109
    .line 110
    sput-object v11, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    .line 111
    .line 112
    new-instance v8, Lai/onnxruntime/OnnxJavaType;

    .line 113
    .line 114
    const/16 v11, 0x9

    .line 115
    .line 116
    const/4 v13, 0x1

    .line 117
    const-string v9, "UINT8"

    .line 118
    .line 119
    const/16 v10, 0x8

    .line 120
    .line 121
    move-object v12, v6

    .line 122
    invoke-direct/range {v8 .. v13}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 123
    .line 124
    .line 125
    sput-object v8, Lai/onnxruntime/OnnxJavaType;->UINT8:Lai/onnxruntime/OnnxJavaType;

    .line 126
    .line 127
    new-instance v0, Lai/onnxruntime/OnnxJavaType;

    .line 128
    .line 129
    const/16 v3, 0xa

    .line 130
    .line 131
    const/4 v5, 0x2

    .line 132
    const-string v1, "FLOAT16"

    .line 133
    .line 134
    const/16 v2, 0x9

    .line 135
    .line 136
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 137
    .line 138
    .line 139
    sput-object v0, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    .line 140
    .line 141
    new-instance v0, Lai/onnxruntime/OnnxJavaType;

    .line 142
    .line 143
    const/16 v3, 0xb

    .line 144
    .line 145
    const-string v1, "BFLOAT16"

    .line 146
    .line 147
    const/16 v2, 0xa

    .line 148
    .line 149
    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 150
    .line 151
    .line 152
    sput-object v0, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    .line 153
    .line 154
    new-instance v1, Lai/onnxruntime/OnnxJavaType;

    .line 155
    .line 156
    const-class v5, Ljava/lang/Object;

    .line 157
    .line 158
    const/4 v6, 0x0

    .line 159
    const-string v2, "UNKNOWN"

    .line 160
    .line 161
    const/4 v4, 0x0

    .line 162
    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    .line 163
    .line 164
    .line 165
    sput-object v1, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    .line 166
    .line 167
    invoke-static {}, Lai/onnxruntime/OnnxJavaType;->$values()[Lai/onnxruntime/OnnxJavaType;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    sput-object v0, Lai/onnxruntime/OnnxJavaType;->$VALUES:[Lai/onnxruntime/OnnxJavaType;

    .line 172
    .line 173
    invoke-static {}, Lai/onnxruntime/OnnxJavaType;->values()[Lai/onnxruntime/OnnxJavaType;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    array-length v1, v0

    .line 178
    new-array v1, v1, [Lai/onnxruntime/OnnxJavaType;

    .line 179
    .line 180
    sput-object v1, Lai/onnxruntime/OnnxJavaType;->values:[Lai/onnxruntime/OnnxJavaType;

    .line 181
    .line 182
    array-length v1, v0

    .line 183
    const/4 v2, 0x0

    .line 184
    :goto_0
    if-ge v2, v1, :cond_0

    .line 185
    .line 186
    aget-object v3, v0, v2

    .line 187
    .line 188
    sget-object v4, Lai/onnxruntime/OnnxJavaType;->values:[Lai/onnxruntime/OnnxJavaType;

    .line 189
    .line 190
    iget v5, v3, Lai/onnxruntime/OnnxJavaType;->value:I

    .line 191
    .line 192
    aput-object v3, v4, v5

    .line 193
    .line 194
    add-int/lit8 v2, v2, 0x1

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lai/onnxruntime/OnnxJavaType;->value:I

    .line 5
    .line 6
    iput-object p4, p0, Lai/onnxruntime/OnnxJavaType;->clazz:Ljava/lang/Class;

    .line 7
    .line 8
    iput p5, p0, Lai/onnxruntime/OnnxJavaType;->size:I

    .line 9
    .line 10
    return-void
.end method

.method public static mapFromClass(Ljava/lang/Class;)Lai/onnxruntime/OnnxJavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lai/onnxruntime/OnnxJavaType;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    const-class v0, Ljava/lang/Byte;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_d

    .line 26
    .line 27
    const-class v0, Ljava/lang/Short;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_c

    .line 44
    .line 45
    const-class v0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_b

    .line 61
    .line 62
    const-class v0, Ljava/lang/Long;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_a

    .line 78
    .line 79
    const-class v0, Ljava/lang/Float;

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_9

    .line 95
    .line 96
    const-class v0, Ljava/lang/Double;

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_8

    .line 112
    .line 113
    const-class v0, Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_6

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_6
    const-class v0, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_7

    .line 129
    .line 130
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    .line 131
    .line 132
    return-object p0

    .line 133
    :cond_7
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    .line 134
    .line 135
    return-object p0

    .line 136
    :cond_8
    :goto_0
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_9
    :goto_1
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_a
    :goto_2
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_b
    :goto_3
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_c
    :goto_4
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    .line 149
    .line 150
    return-object p0

    .line 151
    :cond_d
    :goto_5
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    .line 152
    .line 153
    return-object p0

    .line 154
    :cond_e
    :goto_6
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    .line 155
    .line 156
    return-object p0
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OnnxJavaType;
    .locals 2

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->values:[Lai/onnxruntime/OnnxJavaType;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-ge p0, v1, :cond_0

    .line 7
    .line 8
    aget-object p0, v0, p0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    .line 12
    .line 13
    return-object p0
.end method

.method public static mapFromOnnxTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Lai/onnxruntime/OnnxJavaType;
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxJavaType$1;->$SwitchMap$ai$onnxruntime$TensorInfo$OnnxTensorType:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_1
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_2
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_3
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_4
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_5
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_6
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_7
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_8
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_9
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_a
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UINT8:Lai/onnxruntime/OnnxJavaType;

    .line 46
    .line 47
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OnnxJavaType;
    .locals 1

    .line 1
    const-class v0, Lai/onnxruntime/OnnxJavaType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/onnxruntime/OnnxJavaType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OnnxJavaType;
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->$VALUES:[Lai/onnxruntime/OnnxJavaType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lai/onnxruntime/OnnxJavaType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/onnxruntime/OnnxJavaType;

    .line 8
    .line 9
    return-object v0
.end method
