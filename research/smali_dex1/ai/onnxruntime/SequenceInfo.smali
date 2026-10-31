.class public Lai/onnxruntime/SequenceInfo;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lai/onnxruntime/ValueInfo;


# instance fields
.field public final length:I

.field public final mapInfo:Lai/onnxruntime/MapInfo;

.field public final sequenceOfMaps:Z

.field public final sequenceType:Lai/onnxruntime/OnnxJavaType;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lai/onnxruntime/SequenceInfo;->length:I

    .line 5
    .line 6
    invoke-static {p2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromInt(I)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lai/onnxruntime/OnnxJavaType;->mapFromOnnxTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Lai/onnxruntime/OnnxJavaType;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->mapInfo:Lai/onnxruntime/MapInfo;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(ILai/onnxruntime/MapInfo;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lai/onnxruntime/SequenceInfo;->length:I

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    .line 31
    iput-object p2, p0, Lai/onnxruntime/SequenceInfo;->mapInfo:Lai/onnxruntime/MapInfo;

    .line 32
    sget-object p1, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    return-void
.end method

.method public constructor <init>(ILai/onnxruntime/OnnxJavaType;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lai/onnxruntime/SequenceInfo;->length:I

    .line 25
    iput-object p2, p0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->mapInfo:Lai/onnxruntime/MapInfo;

    return-void
.end method

.method public constructor <init>(ILai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OnnxJavaType;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lai/onnxruntime/SequenceInfo;->length:I

    .line 35
    sget-object p1, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    .line 37
    new-instance p1, Lai/onnxruntime/MapInfo;

    invoke-direct {p1, p2, p3}, Lai/onnxruntime/MapInfo;-><init>(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OnnxJavaType;)V

    iput-object p1, p0, Lai/onnxruntime/SequenceInfo;->mapInfo:Lai/onnxruntime/MapInfo;

    return-void
.end method


# virtual methods
.method public isSequenceOfMaps()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SequenceInfo(length="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lai/onnxruntime/SequenceInfo;->length:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v1, v2, :cond_f

    .line 12
    .line 13
    const-string v1, "UNKNOWN"

    .line 14
    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-boolean v1, p0, Lai/onnxruntime/SequenceInfo;->sequenceOfMaps:Z

    .line 28
    .line 29
    const-string v2, ")"

    .line 30
    .line 31
    const-string v3, ",type="

    .line 32
    .line 33
    if-eqz v1, :cond_37

    .line 34
    .line 35
    invoke-static {v0, v3}, Lai/onnxruntime/a;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lai/onnxruntime/SequenceInfo;->mapInfo:Lai/onnxruntime/MapInfo;

    .line 40
    .line 41
    invoke-virtual {v1}, Lai/onnxruntime/MapInfo;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    :cond_37
    invoke-static {v0, v3}, Lai/onnxruntime/a;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lai/onnxruntime/SequenceInfo;->sequenceType:Lai/onnxruntime/OnnxJavaType;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method
