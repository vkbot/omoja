.class final Lai/onnxruntime/OrtUtil$BufferTuple;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferTuple"
.end annotation


# instance fields
.field final byteSize:J

.field final data:Ljava/nio/Buffer;

.field final isCopy:Z

.field final pos:I

.field final size:J


# direct methods
.method public constructor <init>(Ljava/nio/Buffer;IJJZ)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/onnxruntime/OrtUtil$BufferTuple;->data:Ljava/nio/Buffer;

    .line 5
    .line 6
    iput p2, p0, Lai/onnxruntime/OrtUtil$BufferTuple;->pos:I

    .line 7
    .line 8
    iput-wide p3, p0, Lai/onnxruntime/OrtUtil$BufferTuple;->byteSize:J

    .line 9
    .line 10
    iput-wide p5, p0, Lai/onnxruntime/OrtUtil$BufferTuple;->size:J

    .line 11
    .line 12
    iput-boolean p7, p0, Lai/onnxruntime/OrtUtil$BufferTuple;->isCopy:Z

    .line 13
    .line 14
    return-void
.end method
