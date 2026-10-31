.class public Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/RandomAccessFileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/RandomAccessFileInputStream;",
        "Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private propagateClose:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;->propagateClose:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;->get()Lorg/apache/commons/io/input/RandomAccessFileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/RandomAccessFileInputStream;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/RandomAccessFileInputStream;-><init>(Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;Lorg/apache/commons/io/input/RandomAccessFileInputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setCloseOnClose(Z)Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;->propagateClose:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic setRandomAccessFile(Ljava/io/RandomAccessFile;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .registers 2

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;->setRandomAccessFile(Ljava/io/RandomAccessFile;)Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRandomAccessFile(Ljava/io/RandomAccessFile;)Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->setRandomAccessFile(Ljava/io/RandomAccessFile;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;

    .line 6
    .line 7
    return-object p1
.end method
