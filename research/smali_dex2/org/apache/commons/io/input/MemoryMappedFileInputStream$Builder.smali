.class public Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/MemoryMappedFileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/MemoryMappedFileInputStream;",
        "Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x40000

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSizeDefault(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;->get()Lorg/apache/commons/io/input/MemoryMappedFileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/MemoryMappedFileInputStream;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;-><init>(Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;Lorg/apache/commons/io/input/MemoryMappedFileInputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
