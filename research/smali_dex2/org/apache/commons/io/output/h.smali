.class public final synthetic Lorg/apache/commons/io/output/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic b:[B

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>([BII)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/output/h;->b:[B

    .line 5
    .line 6
    iput p2, p0, Lorg/apache/commons/io/output/h;->c:I

    .line 7
    .line 8
    iput p3, p0, Lorg/apache/commons/io/output/h;->d:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/h;->c:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/io/output/h;->d:I

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/commons/io/output/h;->b:[B

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->c([BII)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
