.class public final Lai/onnxruntime/OnnxSparseTensor$CSRCTensor;
.super Lai/onnxruntime/OnnxSparseTensor$SparseTensor;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxSparseTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CSRCTensor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lai/onnxruntime/OnnxSparseTensor$SparseTensor<",
        "Ljava/nio/LongBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final innerIndices:Ljava/nio/LongBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/LongBuffer;Ljava/nio/LongBuffer;Ljava/nio/Buffer;[JLai/onnxruntime/OnnxJavaType;J)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    new-array v3, v2, [J

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    aput-wide v0, v3, v9

    .line 11
    .line 12
    new-array v4, v2, [J

    .line 13
    .line 14
    aput-wide p6, v4, v9

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-object v5, p4

    .line 19
    move-object v6, p5

    .line 20
    move-wide/from16 v7, p6

    .line 21
    .line 22
    move-object v2, v3

    .line 23
    move-object v3, p3

    .line 24
    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;-><init>(Ljava/nio/Buffer;[JLjava/nio/Buffer;[J[JLai/onnxruntime/OnnxJavaType;J)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lai/onnxruntime/OnnxSparseTensor$CSRCTensor;->innerIndices:Ljava/nio/LongBuffer;

    .line 28
    .line 29
    aget-wide p3, p4, v9

    .line 30
    .line 31
    const-wide/16 v1, 0x1

    .line 32
    .line 33
    add-long/2addr p3, v1

    .line 34
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 35
    .line 36
    .line 37
    move-result p5

    .line 38
    int-to-long v1, p5

    .line 39
    cmp-long p5, v1, p3

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    const-string v2, ", expected "

    .line 43
    .line 44
    if-nez p5, :cond_1

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    int-to-long p3, p1

    .line 51
    cmp-long p1, p3, v7

    .line 52
    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    const-string p1, "Inner indices should be equal to the number of non-zero elements, found "

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-static {p1, p2, v2, v7, v8}, Lai/onnxruntime/b;->k(Ljava/lang/String;ILjava/lang/Object;J)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    :cond_1
    const-string p2, "Outer indices should be equal to the number of rows + 1 in the dense shape, found "

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p2, p1, v2, p3, p4}, Lai/onnxruntime/b;->k(Ljava/lang/String;ILjava/lang/Object;J)V

    .line 73
    .line 74
    .line 75
    throw v1
.end method


# virtual methods
.method public getIndicesType()Lai/onnxruntime/OnnxJavaType;
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInnerIndices()Ljava/nio/LongBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$CSRCTensor;->innerIndices:Ljava/nio/LongBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInnerIndicesShape()[J
    .locals 4

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$CSRCTensor;->innerIndices:Ljava/nio/LongBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-wide v0, v2, v3

    .line 13
    .line 14
    return-object v2
.end method

.method public getSparsityType()Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .locals 1

    .line 1
    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->CSRC:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 2
    .line 3
    return-object v0
.end method
