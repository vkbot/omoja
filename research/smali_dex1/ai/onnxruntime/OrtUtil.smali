.class public final Lai/onnxruntime/OrtUtil;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtUtil$BufferTuple;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lai/onnxruntime/OrtUtil;

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
    move-result-object v0

    .line 11
    sput-object v0, Lai/onnxruntime/OrtUtil;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static capacityFromSize(I)I
    .registers 5

    .line 1
    int-to-double v0, p0

    .line 2
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 3
    .line 4
    div-double/2addr v0, v2

    .line 5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    add-double/2addr v0, v2

    .line 8
    double-to-int p0, v0

    .line 9
    return p0
.end method

.method public static convertArrayToBuffer(Lai/onnxruntime/TensorInfo;Ljava/lang/Object;)Ljava/nio/Buffer;
    .registers 7

    .line 1
    iget-wide v0, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 5
    .line 6
    iget v1, v1, Lai/onnxruntime/OnnxJavaType;->size:I

    .line 7
    .line 8
    mul-int/2addr v0, v1

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lai/onnxruntime/OrtUtil$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    .line 22
    .line 23
    iget-object v2, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    aget v1, v1, v2

    .line 30
    .line 31
    packed-switch v1, :pswitch_data_84

    .line 32
    .line 33
    .line 34
    :pswitch_21
    const-string p1, "Unexpected type, expected Java primitive found "

    .line 35
    .line 36
    iget-object p0, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 37
    .line 38
    invoke-static {p0, p1}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :pswitch_2a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_42

    .line 48
    :pswitch_2f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_42

    .line 53
    :pswitch_34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_42

    .line 58
    :pswitch_39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_42

    .line 63
    :pswitch_3e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_42
    :pswitch_42
    const/4 v1, 0x0

    .line 68
    invoke-static {p0, p1, v1, v0}, Lai/onnxruntime/OrtUtil;->fillBufferFromArray(Lai/onnxruntime/TensorInfo;Ljava/lang/Object;ILjava/nio/Buffer;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_50

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    iget-wide v1, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v4, "Failed to copy all elements into the buffer, expected to copy "

    .line 96
    .line 97
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, " into a buffer of capacity "

    .line 104
    .line 105
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p0, " but had "

    .line 112
    .line 113
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p0, " values left over."

    .line 120
    .line 121
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    nop

    .line 133
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_39
        :pswitch_42
        :pswitch_42
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_42
        :pswitch_21
        :pswitch_21
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method public static convertBoxedPrimitiveToArray(Lai/onnxruntime/OnnxJavaType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object v0, Lai/onnxruntime/OrtUtil$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

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
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    packed-switch p0, :pswitch_data_5c

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :pswitch_f
    check-cast p1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    new-array p1, v1, [Z

    .line 23
    .line 24
    aput-boolean p0, p1, v0

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_1a
    check-cast p1, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    new-array v1, v1, [J

    .line 34
    .line 35
    aput-wide p0, v1, v0

    .line 36
    .line 37
    return-object v1

    .line 38
    :pswitch_25
    check-cast p1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    filled-new-array {p0}, [I

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_30
    check-cast p1, Ljava/lang/Short;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    new-array p1, v1, [S

    .line 56
    .line 57
    aput-short p0, p1, v0

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_3b
    check-cast p1, Ljava/lang/Byte;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    new-array p1, v1, [B

    .line 67
    .line 68
    aput-byte p0, p1, v0

    .line 69
    .line 70
    return-object p1

    .line 71
    :pswitch_46
    check-cast p1, Ljava/lang/Double;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 74
    .line 75
    .line 76
    move-result-wide p0

    .line 77
    new-array v1, v1, [D

    .line 78
    .line 79
    aput-wide p0, v1, v0

    .line 80
    .line 81
    return-object v1

    .line 82
    :pswitch_51
    check-cast p1, Ljava/lang/Float;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    new-array p1, v1, [F

    .line 89
    .line 90
    aput p0, p1, v0

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_51
        :pswitch_46
        :pswitch_3b
        :pswitch_3b
        :pswitch_30
        :pswitch_25
        :pswitch_1a
        :pswitch_f
    .end packed-switch
.end method

.method public static convertBoxedPrimitiveToBuffer(Lai/onnxruntime/OnnxJavaType;Ljava/lang/Object;)Ljava/nio/Buffer;
    .registers 6

    .line 1
    sget-object v0, Lai/onnxruntime/OrtUtil$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    packed-switch v0, :pswitch_data_ca

    .line 11
    .line 12
    .line 13
    :pswitch_c
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :pswitch_e
    iget p0, p0, Lai/onnxruntime/OnnxJavaType;->size:I

    .line 16
    .line 17
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_26
    iget p0, p0, Lai/onnxruntime/OnnxJavaType;->size:I

    .line 40
    .line 41
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p1, Ljava/lang/Long;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {p0, v1, v2, v3}, Ljava/nio/LongBuffer;->put(IJ)Ljava/nio/LongBuffer;

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_42
    iget p0, p0, Lai/onnxruntime/OnnxJavaType;->size:I

    .line 68
    .line 69
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p1, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p0, v1, p1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_5e
    iget p0, p0, Lai/onnxruntime/OnnxJavaType;->size:I

    .line 96
    .line 97
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p1, Ljava/lang/Short;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {p0, v1, p1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_7a
    iget p0, p0, Lai/onnxruntime/OnnxJavaType;->size:I

    .line 124
    .line 125
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p1, Ljava/lang/Byte;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-virtual {p0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 144
    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_92
    iget p0, p0, Lai/onnxruntime/OnnxJavaType;->size:I

    .line 148
    .line 149
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p1, Ljava/lang/Double;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 168
    .line 169
    .line 170
    move-result-wide v2

    .line 171
    invoke-virtual {p0, v1, v2, v3}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 172
    .line 173
    .line 174
    return-object p0

    .line 175
    :pswitch_ae
    iget p0, p0, Lai/onnxruntime/OnnxJavaType;->size:I

    .line 176
    .line 177
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    check-cast p1, Ljava/lang/Float;

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    invoke-virtual {p0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 200
    .line 201
    .line 202
    return-object p0

    .line 203
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_92
        :pswitch_7a
        :pswitch_7a
        :pswitch_5e
        :pswitch_42
        :pswitch_26
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_5e
        :pswitch_5e
    .end packed-switch
.end method

.method public static convertToMap([[Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne v0, v1, :cond_38

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object v1, p0, v0

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    const/4 v2, 0x1

    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    array-length v3, v3

    .line 13
    if-ne v1, v3, :cond_31

    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    aget-object v3, p0, v0

    .line 18
    .line 19
    array-length v3, v3

    .line 20
    invoke-static {v3}, Lai/onnxruntime/OrtUtil;->capacityFromSize(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 25
    .line 26
    .line 27
    move v3, v0

    .line 28
    :goto_1b
    aget-object v4, p0, v0

    .line 29
    .line 30
    array-length v5, v4

    .line 31
    if-ge v3, v5, :cond_2c

    .line 32
    .line 33
    aget-object v4, v4, v3

    .line 34
    .line 35
    aget-object v5, p0, v2

    .line 36
    .line 37
    aget-object v5, v5, v3

    .line 38
    .line 39
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_1b

    .line 45
    :cond_2c
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_31
    const-string p0, "Invalid zipped string, must have two arrays of the same length."

    .line 51
    .line 52
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_36
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_38
    const-string p0, "Invalid zipped string, must have two arrays."

    .line 58
    .line 59
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_36
.end method

.method public static elementCount([J)J
    .registers 8

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_3
    array-length v3, p0

    .line 5
    if-ge v2, v3, :cond_1f

    .line 6
    .line 7
    aget-wide v3, p0, v2

    .line 8
    .line 9
    const-wide/16 v5, 0x0

    .line 10
    .line 11
    cmp-long v5, v3, v5

    .line 12
    .line 13
    if-ltz v5, :cond_12

    .line 14
    .line 15
    mul-long/2addr v0, v3

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_12
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, " ."

    .line 24
    .line 25
    const-string v1, "Received negative value in shape "

    .line 26
    .line 27
    invoke-static {p0, v1, v0}, Landroidx/navigation/b;->x(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    :cond_1f
    return-wide v0
.end method

.method public static fillArrayFromBuffer(Lai/onnxruntime/TensorInfo;Ljava/nio/Buffer;ILjava/lang/Object;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    sub-int/2addr v1, v2

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne p2, v1, :cond_64

    .line 8
    .line 9
    sget-object p2, Lai/onnxruntime/OrtUtil$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    .line 10
    .line 11
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    aget p2, p2, v0

    .line 18
    .line 19
    packed-switch p2, :pswitch_data_b4

    .line 20
    .line 21
    .line 22
    goto :goto_80

    .line 23
    :pswitch_16
    const-string p1, "Unexpected type, expected Java primitive found "

    .line 24
    .line 25
    iget-object p0, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1e
    check-cast p3, [Z

    .line 32
    .line 33
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    move p0, v3

    .line 36
    :goto_23
    array-length p2, p3

    .line 37
    if-ge p0, p2, :cond_80

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2e

    .line 44
    .line 45
    move p2, v2

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move p2, v3

    .line 48
    :goto_2f
    aput-boolean p2, p3, p0

    .line 49
    .line 50
    add-int/lit8 p0, p0, 0x1

    .line 51
    .line 52
    goto :goto_23

    .line 53
    :pswitch_34
    check-cast p3, [J

    .line 54
    .line 55
    check-cast p1, Ljava/nio/LongBuffer;

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_3c
    check-cast p3, [I

    .line 62
    .line 63
    check-cast p1, Ljava/nio/IntBuffer;

    .line 64
    .line 65
    invoke-virtual {p1, p3}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_44
    check-cast p3, [S

    .line 70
    .line 71
    check-cast p1, Ljava/nio/ShortBuffer;

    .line 72
    .line 73
    invoke-virtual {p1, p3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_4c
    check-cast p3, [B

    .line 78
    .line 79
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_54
    check-cast p3, [D

    .line 86
    .line 87
    check-cast p1, Ljava/nio/DoubleBuffer;

    .line 88
    .line 89
    invoke-virtual {p1, p3}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_5c
    check-cast p3, [F

    .line 94
    .line 95
    check-cast p1, Ljava/nio/FloatBuffer;

    .line 96
    .line 97
    invoke-virtual {p1, p3}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_64
    aget-wide v4, v0, p2

    .line 102
    .line 103
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    int-to-long v0, v0

    .line 108
    cmp-long v6, v4, v0

    .line 109
    .line 110
    if-nez v6, :cond_81

    .line 111
    .line 112
    :goto_6f
    int-to-long v4, v3

    .line 113
    cmp-long v4, v4, v0

    .line 114
    .line 115
    if-gez v4, :cond_80

    .line 116
    .line 117
    add-int/lit8 v4, p2, 0x1

    .line 118
    .line 119
    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-static {p0, p1, v4, v5}, Lai/onnxruntime/OrtUtil;->fillArrayFromBuffer(Lai/onnxruntime/TensorInfo;Ljava/nio/Buffer;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_6f

    .line 129
    :cond_80
    :goto_80
    return-void

    .line 130
    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    iget-object p0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 133
    .line 134
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    new-instance p3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v2, "Mismatch in array sizes, expected "

    .line 141
    .line 142
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, " at dim "

    .line 149
    .line 150
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p2, " from shape "

    .line 157
    .line 158
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p0, ", found "

    .line 165
    .line 166
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    nop

    .line 181
    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_4c
        :pswitch_44
        :pswitch_3c
        :pswitch_34
        :pswitch_1e
        :pswitch_16
        :pswitch_16
        :pswitch_5c
        :pswitch_5c
    .end packed-switch
.end method

.method private static fillBufferFromArray(Lai/onnxruntime/TensorInfo;Ljava/lang/Object;ILjava/nio/Buffer;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne p2, v1, :cond_5d

    .line 8
    .line 9
    sget-object p2, Lai/onnxruntime/OrtUtil$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    .line 10
    .line 11
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    aget p2, p2, v0

    .line 18
    .line 19
    packed-switch p2, :pswitch_data_ac

    .line 20
    .line 21
    .line 22
    goto :goto_79

    .line 23
    :pswitch_16
    const-string p1, "Unexpected type, expected Java primitive found "

    .line 24
    .line 25
    iget-object p0, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1e
    check-cast p1, [Z

    .line 32
    .line 33
    check-cast p3, Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    :goto_22
    array-length p0, p1

    .line 36
    if-ge v2, p0, :cond_79

    .line 37
    .line 38
    aget-boolean p0, p1, v2

    .line 39
    .line 40
    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_22

    .line 46
    :pswitch_2d
    check-cast p1, [J

    .line 47
    .line 48
    check-cast p3, Ljava/nio/LongBuffer;

    .line 49
    .line 50
    invoke-virtual {p3, p1}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_35
    check-cast p1, [I

    .line 55
    .line 56
    check-cast p3, Ljava/nio/IntBuffer;

    .line 57
    .line 58
    invoke-virtual {p3, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_3d
    check-cast p1, [S

    .line 63
    .line 64
    check-cast p3, Ljava/nio/ShortBuffer;

    .line 65
    .line 66
    invoke-virtual {p3, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_45
    check-cast p1, [B

    .line 71
    .line 72
    check-cast p3, Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_4d
    check-cast p1, [D

    .line 79
    .line 80
    check-cast p3, Ljava/nio/DoubleBuffer;

    .line 81
    .line 82
    invoke-virtual {p3, p1}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_55
    check-cast p1, [F

    .line 87
    .line 88
    check-cast p3, Ljava/nio/FloatBuffer;

    .line 89
    .line 90
    invoke-virtual {p3, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5d
    aget-wide v3, v0, p2

    .line 95
    .line 96
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    int-to-long v0, v0

    .line 101
    cmp-long v5, v3, v0

    .line 102
    .line 103
    if-nez v5, :cond_7a

    .line 104
    .line 105
    :goto_68
    int-to-long v3, v2

    .line 106
    cmp-long v3, v3, v0

    .line 107
    .line 108
    if-gez v3, :cond_79

    .line 109
    .line 110
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    add-int/lit8 v4, p2, 0x1

    .line 115
    .line 116
    invoke-static {p0, v3, v4, p3}, Lai/onnxruntime/OrtUtil;->fillBufferFromArray(Lai/onnxruntime/TensorInfo;Ljava/lang/Object;ILjava/nio/Buffer;)V

    .line 117
    .line 118
    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_68

    .line 122
    :cond_79
    :goto_79
    return-void

    .line 123
    :cond_7a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    iget-object p0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 126
    .line 127
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    new-instance p3, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v2, "Mismatch in array sizes, expected "

    .line 134
    .line 135
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, " at dim "

    .line 142
    .line 143
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p2, " from shape "

    .line 150
    .line 151
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p0, ", found "

    .line 158
    .line 159
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4d
        :pswitch_45
        :pswitch_45
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_1e
        :pswitch_16
        :pswitch_16
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

.method private static flattenString([Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_4b

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_42

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_20

    .line 26
    .line 27
    check-cast v2, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v2, p1}, Lai/onnxruntime/OrtUtil;->flattenString([Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 30
    .line 31
    .line 32
    goto :goto_35

    .line 33
    :cond_20
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-class v5, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_38

    .line 44
    .line 45
    check-cast v2, [Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    :goto_35
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_38
    const-string p0, "Found a non-String, non-array element type, "

    .line 58
    .line 59
    invoke-static {v3, p0}, Lai/onnxruntime/a;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_42
    const-string p0, "Found an element type where there should have been an array. Class = "

    .line 68
    .line 69
    invoke-static {v3, p0}, Lai/onnxruntime/a;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_4b
    return-void
.end method

.method public static flattenString(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 2

    .line 77
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 78
    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 79
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lai/onnxruntime/OrtUtil;->flattenString([Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    .line 81
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static newBooleanArray([J)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static newByteArray([J)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static newDoubleArray([J)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static newFloatArray([J)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static newIntArray([J)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static newLongArray([J)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static newShortArray([J)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static newStringArray([J)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static prepareBuffer(Ljava/nio/Buffer;Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OrtUtil$BufferTuple;
    .registers 15

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    .line 2
    .line 3
    if-eq p1, v0, :cond_c1

    .line 4
    .line 5
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    .line 6
    .line 7
    if-eq p1, v0, :cond_c1

    .line 8
    .line 9
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_f

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    iget v0, p1, Lai/onnxruntime/OnnxJavaType;->size:I

    .line 17
    .line 18
    :goto_11
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-long v2, v2

    .line 23
    int-to-long v4, v0

    .line 24
    mul-long/2addr v2, v4

    .line 25
    const-wide/16 v6, 0x8

    .line 26
    .line 27
    mul-long/2addr v4, v6

    .line 28
    const-wide/32 v6, 0x7fffffff

    .line 29
    .line 30
    .line 31
    sub-long/2addr v6, v4

    .line 32
    cmp-long v2, v2, v6

    .line 33
    .line 34
    if-gtz v2, :cond_b5

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    mul-int/2addr v2, v0

    .line 41
    invoke-virtual {p0}, Ljava/nio/Buffer;->isDirect()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz v3, :cond_37

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    mul-int/2addr p1, v0

    .line 53
    move-object v6, p0

    .line 54
    move v7, p1

    .line 55
    goto :goto_a4

    .line 56
    :cond_37
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    sget-object v5, Lai/onnxruntime/OrtUtil$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    aget v5, v5, v6

    .line 79
    .line 80
    packed-switch v5, :pswitch_data_ca

    .line 81
    .line 82
    .line 83
    :pswitch_52
    const-string p0, "Impossible to reach here, managed to cast a buffer as an incorrect type, found "

    .line 84
    .line 85
    invoke-static {p1, p0}, Lai/onnxruntime/b;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_57
    const/4 p0, 0x0

    .line 89
    return-object p0

    .line 90
    :pswitch_59
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    move-object v3, p0

    .line 95
    check-cast v3, Ljava/nio/LongBuffer;

    .line 96
    .line 97
    invoke-virtual {p1, v3}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_9c

    .line 102
    :pswitch_65
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    move-object v3, p0

    .line 107
    check-cast v3, Ljava/nio/IntBuffer;

    .line 108
    .line 109
    invoke-virtual {p1, v3}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    goto :goto_9c

    .line 114
    :pswitch_71
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    move-object v3, p0

    .line 119
    check-cast v3, Ljava/nio/ShortBuffer;

    .line 120
    .line 121
    invoke-virtual {p1, v3}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    goto :goto_9c

    .line 126
    :pswitch_7d
    move-object p1, p0

    .line 127
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    goto :goto_9c

    .line 134
    :pswitch_85
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    move-object v3, p0

    .line 139
    check-cast v3, Ljava/nio/DoubleBuffer;

    .line 140
    .line 141
    invoke-virtual {p1, v3}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    goto :goto_9c

    .line 146
    :pswitch_91
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    move-object v3, p0

    .line 151
    check-cast v3, Ljava/nio/FloatBuffer;

    .line 152
    .line 153
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    :goto_9c
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 161
    .line 162
    .line 163
    move-object v6, p1

    .line 164
    move v7, v4

    .line 165
    :goto_a4
    new-instance v5, Lai/onnxruntime/OrtUtil$BufferTuple;

    .line 166
    .line 167
    int-to-long v8, v2

    .line 168
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    int-to-long v10, p1

    .line 173
    if-eq v6, p0, :cond_b0

    .line 174
    .line 175
    move v12, v1

    .line 176
    goto :goto_b1

    .line 177
    :cond_b0
    move v12, v4

    .line 178
    :goto_b1
    invoke-direct/range {v5 .. v12}, Lai/onnxruntime/OrtUtil$BufferTuple;-><init>(Ljava/nio/Buffer;IJJZ)V

    .line 179
    .line 180
    .line 181
    return-object v5

    .line 182
    :cond_b5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    const-string v0, ", type = "

    .line 187
    .line 188
    const-string v1, "Cannot allocate a direct buffer of the requested size and type, size "

    .line 189
    .line 190
    invoke-static {p0, v1, v0, p1}, Lai/onnxruntime/b;->c(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto :goto_57

    .line 194
    :cond_c1
    const-string p0, "Cannot create a "

    .line 195
    .line 196
    const-string v0, " tensor from a buffer"

    .line 197
    .line 198
    invoke-static {p1, p0, v0}, Lai/onnxruntime/b;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto :goto_57

    .line 202
    nop

    .line 203
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_91
        :pswitch_85
        :pswitch_7d
        :pswitch_7d
        :pswitch_71
        :pswitch_65
        :pswitch_59
        :pswitch_7d
        :pswitch_52
        :pswitch_52
        :pswitch_71
        :pswitch_71
    .end packed-switch
.end method

.method private static reshape(Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "Found element type when expecting an array. Class "

    .line 10
    .line 11
    if-eqz v0, :cond_49

    .line 12
    .line 13
    check-cast p1, [Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, p1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_11
    if-ge v3, v0, :cond_48

    .line 19
    .line 20
    aget-object v4, p1, v3

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_3f

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_33

    .line 41
    .line 42
    const-class v6, Ljava/lang/String;

    .line 43
    .line 44
    if-ne v5, v6, :cond_2e

    .line 45
    .line 46
    goto :goto_33

    .line 47
    :cond_2e
    invoke-static {p0, v4, p2}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    goto :goto_3c

    .line 52
    :cond_33
    :goto_33
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {p0, p2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    add-int/2addr v5, p2

    .line 60
    move p2, v5

    .line 61
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_11

    .line 64
    :cond_3f
    invoke-static {v5, v1}, Lai/onnxruntime/a;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_46
    const/4 p0, 0x0

    .line 72
    return p0

    .line 73
    :cond_48
    return p2

    .line 74
    :cond_49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0, v1}, Lai/onnxruntime/b;->u(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_46
.end method

.method public static reshape([B[J)Ljava/lang/Object;
    .registers 3

    .line 82
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newByteArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([D[J)Ljava/lang/Object;
    .registers 3

    .line 92
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newDoubleArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([F[J)Ljava/lang/Object;
    .registers 3

    .line 90
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newFloatArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([I[J)Ljava/lang/Object;
    .registers 3

    .line 86
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newIntArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([J[J)Ljava/lang/Object;
    .registers 3

    .line 88
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newLongArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([Ljava/lang/String;[J)Ljava/lang/Object;
    .registers 3

    .line 94
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newStringArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([S[J)Ljava/lang/Object;
    .registers 3

    .line 84
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newShortArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([Z[J)Ljava/lang/Object;
    .registers 3

    .line 96
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newBooleanArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static transformShape([J)[I
    .registers 7

    .line 1
    array-length v0, p0

    .line 2
    if-eqz v0, :cond_30

    .line 3
    .line 4
    array-length v0, p0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-gt v0, v1, :cond_30

    .line 8
    .line 9
    array-length v0, p0

    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_c
    array-length v2, p0

    .line 14
    if-ge v1, v2, :cond_2f

    .line 15
    .line 16
    aget-wide v2, p0, v1

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    cmp-long v4, v2, v4

    .line 21
    .line 22
    if-ltz v4, :cond_24

    .line 23
    .line 24
    const-wide/32 v4, 0x7fffffff

    .line 25
    .line 26
    .line 27
    cmp-long v4, v2, v4

    .line 28
    .line 29
    if-gtz v4, :cond_24

    .line 30
    .line 31
    long-to-int v2, v2

    .line 32
    aput v2, v0, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_c

    .line 37
    :cond_24
    const-string v0, "Invalid shape for a Java array, expected non-negative entries smaller than Integer.MAX_VALUE. Found "

    .line 38
    .line 39
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0, v0}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_2d
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_2f
    return-object v0

    .line 49
    :cond_30
    const-string p0, "Arrays with less than 1 and greater than 8 dimensions are not supported."

    .line 50
    .line 51
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2d
.end method

.method public static transformShape([I)[J
    .registers 7

    .line 55
    array-length v0, p0

    if-eqz v0, :cond_29

    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_29

    .line 56
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 57
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_28

    .line 58
    aget v2, p0, v1

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1d

    .line 59
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 60
    :cond_1d
    const-string v0, "Invalid shape for a Java array, expected positive entries smaller than Integer.MAX_VALUE. Found "

    .line 61
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/navigation/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_26
    const/4 p0, 0x0

    return-object p0

    :cond_28
    return-object v0

    .line 62
    :cond_29
    const-string p0, "Arrays with less than 1 and greater than 8 dimensions are not supported."

    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public static unpackMap(Ljava/util/Map;)[[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_55

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eqz v4, :cond_40

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_40

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/String;

    .line 51
    .line 52
    aput-object v4, v0, v2

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/String;

    .line 59
    .line 60
    aput-object v3, v1, v2

    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_15

    .line 65
    :cond_40
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/String;

    .line 76
    .line 77
    const-string v1, "Invalid map, keys and values must not be null, found key = "

    .line 78
    .line 79
    const-string v2, ", value = "

    .line 80
    .line 81
    invoke-static {v1, p0, v2, v0}, Landroidx/navigation/b;->y(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/4 p0, 0x0

    .line 85
    return-object p0

    .line 86
    :cond_55
    filled-new-array {v0, v1}, [[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method

.method public static validateShape([J)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_4
    array-length v4, p0

    .line 6
    if-ge v2, v4, :cond_20

    .line 7
    .line 8
    aget-wide v4, p0, v2

    .line 9
    .line 10
    const-wide/16 v6, 0x0

    .line 11
    .line 12
    cmp-long v6, v4, v6

    .line 13
    .line 14
    if-lez v6, :cond_11

    .line 15
    .line 16
    move v6, v0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v6, v1

    .line 19
    :goto_12
    and-int/2addr v3, v6

    .line 20
    long-to-int v6, v4

    .line 21
    int-to-long v6, v6

    .line 22
    cmp-long v4, v6, v4

    .line 23
    .line 24
    if-nez v4, :cond_1b

    .line 25
    .line 26
    move v4, v0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v4, v1

    .line 29
    :goto_1c
    and-int/2addr v3, v4

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_4

    .line 33
    :cond_20
    if-eqz v3, :cond_28

    .line 34
    .line 35
    array-length p0, p0

    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    if-gt p0, v2, :cond_28

    .line 39
    .line 40
    return v0

    .line 41
    :cond_28
    return v1
.end method
