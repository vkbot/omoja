.class public final Lb7/v;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lb7/s;

.field public final b:I

.field public final c:I

.field public d:Landroid/graphics/Rect;

.field public e:Z


# direct methods
.method public constructor <init>(IIII[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb7/s;

    .line 5
    .line 6
    invoke-direct {v0, p5, p1, p2}, Lb7/s;-><init>([BII)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb7/v;->a:Lb7/s;

    .line 10
    .line 11
    iput p4, p0, Lb7/v;->c:I

    .line 12
    .line 13
    iput p3, p0, Lb7/v;->b:I

    .line 14
    .line 15
    mul-int p3, p1, p2

    .line 16
    .line 17
    array-length p4, p5

    .line 18
    if-gt p3, p4, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p4, "x"

    .line 24
    .line 25
    const-string v0, " > "

    .line 26
    .line 27
    const-string v1, "Image data does not match the resolution. "

    .line 28
    .line 29
    invoke-static {v1, p1, p2, p4, v0}, Lai/onnxruntime/a;->v(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    array-length p2, p5

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p3
.end method
