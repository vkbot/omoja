.class public abstract Lai/onnxruntime/OnnxSparseTensor$SparseTensor;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxSparseTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SparseTensor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/nio/Buffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final denseShape:[J

.field final indices:Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final indicesShape:[J

.field private final numNonZero:J

.field private final type:Lai/onnxruntime/OnnxJavaType;

.field final values:Ljava/nio/Buffer;

.field private final valuesShape:[J


# direct methods
.method public constructor <init>(Ljava/nio/Buffer;[JLjava/nio/Buffer;[J[JLai/onnxruntime/OnnxJavaType;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[J",
            "Ljava/nio/Buffer;",
            "[J[J",
            "Lai/onnxruntime/OnnxJavaType;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->indices:Ljava/nio/Buffer;

    .line 5
    .line 6
    iput-object p2, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->indicesShape:[J

    .line 7
    .line 8
    iput-object p3, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->values:Ljava/nio/Buffer;

    .line 9
    .line 10
    iput-object p4, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->valuesShape:[J

    .line 11
    .line 12
    iput-object p5, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->denseShape:[J

    .line 13
    .line 14
    iput-object p6, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->type:Lai/onnxruntime/OnnxJavaType;

    .line 15
    .line 16
    iput-wide p7, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->numNonZero:J

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    int-to-long p1, p1

    .line 23
    cmp-long p1, p1, p7

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    sget-object p1, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    .line 28
    .line 29
    if-eq p6, p1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string p1, "String SparseTensors are not supported."

    .line 33
    .line 34
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p4, "Expected numNonZero and data.remaining to be equal, found "

    .line 48
    .line 49
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p4, " and "

    .line 56
    .line 57
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p2, " respectively"

    .line 64
    .line 65
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method


# virtual methods
.method public getDenseShape()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->denseShape:[J

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndices()Ljava/nio/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->indices:Ljava/nio/Buffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndicesShape()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->indicesShape:[J

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getIndicesType()Lai/onnxruntime/OnnxJavaType;
.end method

.method public getNumNonZeroElements()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->numNonZero:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public abstract getSparsityType()Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
.end method

.method public getType()Lai/onnxruntime/OnnxJavaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->type:Lai/onnxruntime/OnnxJavaType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValues()Ljava/nio/Buffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->values:Ljava/nio/Buffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValuesShape()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->valuesShape:[J

    .line 2
    .line 3
    return-object v0
.end method
