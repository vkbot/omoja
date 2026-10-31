.class public Lai/onnxruntime/TensorInfo;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lai/onnxruntime/ValueInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/TensorInfo$OnnxTensorType;
    }
.end annotation


# static fields
.field public static final MAX_DIMENSIONS:I = 0x8


# instance fields
.field final dimensionNames:[Ljava/lang/String;

.field private final hasNames:Z

.field final numElements:J

.field public final onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

.field final shape:[J

.field public final type:Lai/onnxruntime/OnnxJavaType;


# direct methods
.method public constructor <init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 49
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    .line 50
    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lai/onnxruntime/TensorInfo;->hasNames:Z

    .line 52
    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 53
    iput-object p3, p0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    .line 54
    invoke-static {p1}, Lai/onnxruntime/TensorInfo;->elementCount([J)J

    move-result-wide p1

    iput-wide p1, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    return-void
.end method

.method public constructor <init>([J[Ljava/lang/String;I)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 5
    .line 6
    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v0, p2

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_a
    if-ge v2, v0, :cond_19

    .line 12
    .line 13
    aget-object v3, p2, v2

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_16

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_19

    .line 23
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_a

    .line 26
    :cond_19
    :goto_19
    iput-boolean v1, p0, Lai/onnxruntime/TensorInfo;->hasNames:Z

    .line 27
    .line 28
    invoke-static {p3}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromInt(I)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    .line 33
    .line 34
    invoke-static {p2}, Lai/onnxruntime/OnnxJavaType;->mapFromOnnxTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Lai/onnxruntime/OnnxJavaType;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 39
    .line 40
    invoke-static {p1}, Lai/onnxruntime/TensorInfo;->elementCount([J)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    iput-wide p1, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lai/onnxruntime/TensorInfo;->lambda$toString$0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static constructFromBuffer(Ljava/nio/Buffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo;
    .registers 9

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    .line 2
    .line 3
    if-eq p2, v0, :cond_5b

    .line 4
    .line 5
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    .line 6
    .line 7
    if-eq p2, v0, :cond_5b

    .line 8
    .line 9
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    int-to-long v2, p0

    .line 18
    cmp-long p0, v0, v2

    .line 19
    .line 20
    if-eqz p0, :cond_4c

    .line 21
    .line 22
    iget p0, p2, Lai/onnxruntime/OnnxJavaType;->size:I

    .line 23
    .line 24
    int-to-long v4, p0

    .line 25
    div-long v4, v2, v4

    .line 26
    .line 27
    cmp-long p0, v0, v4

    .line 28
    .line 29
    if-nez p0, :cond_1f

    .line 30
    .line 31
    goto :goto_4c

    .line 32
    :cond_1f
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v4, "Shape "

    .line 41
    .line 42
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, ", requires "

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " elements but the buffer has "

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, " elements."

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_4c
    :goto_4c
    new-instance p0, Lai/onnxruntime/TensorInfo;

    .line 78
    .line 79
    array-length v0, p1

    .line 80
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    .line 89
    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_5b
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 93
    .line 94
    const-string p1, "Cannot create a tensor from a string or unknown buffer."

    .line 95
    .line 96
    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method public static constructFromJavaArray(Ljava/lang/Object;)Lai/onnxruntime/TensorInfo;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_38

    .line 11
    .line 12
    invoke-static {v0}, Lai/onnxruntime/OnnxJavaType;->mapFromClass(Ljava/lang/Class;)Lai/onnxruntime/OnnxJavaType;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v1, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    .line 17
    .line 18
    if-eq p0, v1, :cond_1f

    .line 19
    .line 20
    new-instance v0, Lai/onnxruntime/TensorInfo;

    .line 21
    .line 22
    new-array v1, v2, [J

    .line 23
    .line 24
    invoke-static {p0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v1, p0, v2}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1f
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Cannot convert "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " to a OnnxTensor."

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_38
    move v1, v2

    .line 58
    :goto_39
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_46

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_39

    .line 71
    :cond_46
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_61

    .line 76
    .line 77
    const-class v3, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_55

    .line 84
    .line 85
    goto :goto_61

    .line 86
    :cond_55
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 87
    .line 88
    const-string v1, "Cannot create an OnnxTensor from a base type of "

    .line 89
    .line 90
    invoke-static {v0, v1}, Lai/onnxruntime/a;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_61
    :goto_61
    const/16 v3, 0x8

    .line 99
    .line 100
    if-gt v1, v3, :cond_78

    .line 101
    .line 102
    invoke-static {v0}, Lai/onnxruntime/OnnxJavaType;->mapFromClass(Ljava/lang/Class;)Lai/onnxruntime/OnnxJavaType;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-array v1, v1, [J

    .line 107
    .line 108
    invoke-static {v1, v2, p0}, Lai/onnxruntime/TensorInfo;->extractShape([JILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    new-instance p0, Lai/onnxruntime/TensorInfo;

    .line 112
    .line 113
    invoke-static {v0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-direct {p0, v1, v0, v2}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    .line 118
    .line 119
    .line 120
    return-object p0

    .line 121
    :cond_78
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 122
    .line 123
    const-string v0, "Cannot create an OnnxTensor with more than 8 dimensions. Found "

    .line 124
    .line 125
    const-string v2, " dimensions."

    .line 126
    .line 127
    invoke-static {v1, v0, v2}, Lai/onnxruntime/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0
.end method

.method public static constructFromSparseTensor(Lai/onnxruntime/OnnxSparseTensor$SparseTensor;)Lai/onnxruntime/TensorInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(",
            "Lai/onnxruntime/OnnxSparseTensor$SparseTensor<",
            "TT;>;)",
            "Lai/onnxruntime/TensorInfo;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getDenseShape()[J

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getValues()Ljava/nio/Buffer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    int-to-long v3, v3

    .line 18
    cmp-long v5, v1, v3

    .line 19
    .line 20
    if-ltz v5, :cond_2c

    .line 21
    .line 22
    new-instance v1, Lai/onnxruntime/TensorInfo;

    .line 23
    .line 24
    array-length v2, v0

    .line 25
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getType()Lai/onnxruntime/OnnxJavaType;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->getType()Lai/onnxruntime/OnnxJavaType;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v1, v0, v2, p0}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_2c
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 46
    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v6, "Shape "

    .line 54
    .line 55
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ", has at most "

    .line 62
    .line 63
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, " elements but the buffer has "

    .line 70
    .line 71
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, " elements."

    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {p0, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method private static elementCount([J)J
    .registers 6

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_3
    array-length v3, p0

    .line 5
    if-ge v2, v3, :cond_c

    .line 6
    .line 7
    aget-wide v3, p0, v2

    .line 8
    .line 9
    mul-long/2addr v0, v3

    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_c
    return-wide v0
.end method

.method private static extractShape([JILjava/lang/Object;)V
    .registers 8

    .line 1
    array-length v0, p0

    .line 2
    if-eq v0, p1, :cond_55

    .line 3
    .line 4
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_47

    .line 9
    .line 10
    aget-wide v1, p0, p1

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    cmp-long v3, v1, v3

    .line 15
    .line 16
    if-nez v3, :cond_15

    .line 17
    .line 18
    int-to-long v1, v0

    .line 19
    aput-wide v1, p0, p1

    .line 20
    .line 21
    goto :goto_1a

    .line 22
    :cond_15
    int-to-long v3, v0

    .line 23
    cmp-long v1, v1, v3

    .line 24
    .line 25
    if-nez v1, :cond_29

    .line 26
    .line 27
    :goto_1a
    const/4 v1, 0x0

    .line 28
    :goto_1b
    if-ge v1, v0, :cond_55

    .line 29
    .line 30
    add-int/lit8 v2, p1, 0x1

    .line 31
    .line 32
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {p0, v2, v3}, Lai/onnxruntime/TensorInfo;->extractShape([JILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_1b

    .line 42
    :cond_29
    new-instance p2, Lai/onnxruntime/OrtException;

    .line 43
    .line 44
    aget-wide v1, p0, p1

    .line 45
    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p1, "Supplied array is ragged, expected "

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, ", found "

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {p2, p0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p2

    .line 72
    :cond_47
    new-instance p0, Lai/onnxruntime/OrtException;

    .line 73
    .line 74
    const-string p2, "Supplied array has a zero dimension at "

    .line 75
    .line 76
    const-string v0, ", all dimensions must be positive"

    .line 77
    .line 78
    invoke-static {p1, p2, v0}, Lai/onnxruntime/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_55
    return-void
.end method

.method private static synthetic lambda$toString$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const-string p0, "\"\""

    .line 8
    .line 9
    :cond_8
    return-object p0
.end method

.method private validateShape()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 2
    .line 3
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->validateShape([J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public getDimensionNames()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method public getNumElements()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getShape()[J
    .registers 3

    .line 1
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public isScalar()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-nez v0, :cond_7

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public makeCarrier()Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-direct {p0}, Lai/onnxruntime/TensorInfo;->validateShape()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_29

    .line 6
    .line 7
    iget-wide v0, p0, Lai/onnxruntime/TensorInfo;->numElements:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    goto :goto_29

    .line 16
    :cond_f
    new-instance v0, Lai/onnxruntime/OrtException;

    .line 17
    .line 18
    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "This tensor is not representable in Java, it\'s too big - shape = "

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_29
    :goto_29
    sget-object v0, Lai/onnxruntime/TensorInfo$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    .line 43
    .line 44
    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    aget v0, v0, v1

    .line 51
    .line 52
    packed-switch v0, :pswitch_data_90

    .line 53
    .line 54
    .line 55
    new-instance v0, Lai/onnxruntime/OrtException;

    .line 56
    .line 57
    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "Unsupported type - "

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :pswitch_4c
    new-instance v0, Lai/onnxruntime/OrtException;

    .line 78
    .line 79
    const-string v1, "Can\'t construct a carrier for an invalid type."

    .line 80
    .line 81
    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :pswitch_54
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 86
    .line 87
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    long-to-int v0, v0

    .line 92
    new-array v0, v0, [Ljava/lang/String;

    .line 93
    .line 94
    return-object v0

    .line 95
    :pswitch_5e
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 96
    .line 97
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newBooleanArray([J)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0

    .line 102
    :pswitch_65
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 103
    .line 104
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newLongArray([J)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :pswitch_6c
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 110
    .line 111
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newIntArray([J)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0

    .line 116
    :pswitch_73
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 117
    .line 118
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newShortArray([J)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    return-object v0

    .line 123
    :pswitch_7a
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 124
    .line 125
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newByteArray([J)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0

    .line 130
    :pswitch_81
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 131
    .line 132
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newDoubleArray([J)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    return-object v0

    .line 137
    :pswitch_88
    iget-object v0, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 138
    .line 139
    invoke-static {v0}, Lai/onnxruntime/OrtUtil;->newFloatArray([J)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0

    .line 144
    nop

    .line 145
    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_88
        :pswitch_81
        :pswitch_7a
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
        :pswitch_65
        :pswitch_5e
        :pswitch_54
        :pswitch_88
        :pswitch_88
        :pswitch_4c
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TensorInfo(javaType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ",onnxType="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ",shape="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 37
    .line 38
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-boolean v1, p0, Lai/onnxruntime/TensorInfo;->hasNames:Z

    .line 50
    .line 51
    if-eqz v1, :cond_5c

    .line 52
    .line 53
    const-string v1, ",dimNames=["

    .line 54
    .line 55
    invoke-static {v0, v1}, Lai/onnxruntime/a;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lai/onnxruntime/TensorInfo;->dimensionNames:[Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Lai/onnxruntime/d;

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-direct {v2, v3}, Lai/onnxruntime/d;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, ","

    .line 76
    .line 77
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/String;

    .line 86
    .line 87
    const-string v2, "]"

    .line 88
    .line 89
    invoke-static {v0, v1, v2}, Lai/onnxruntime/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :cond_5c
    const-string v1, ")"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0
.end method
