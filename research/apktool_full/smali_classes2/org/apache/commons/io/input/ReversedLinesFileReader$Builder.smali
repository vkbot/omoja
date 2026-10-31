.class public Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ReversedLinesFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/ReversedLinesFileReader;",
        "Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$000()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSizeDefault(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$000()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {}, Lorg/apache/commons/io/filefilter/f;->g()Ljava/nio/file/StandardOpenOption;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    aput-object v2, v0, v1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setOpenOptions([Ljava/nio/file/OpenOption;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;->get()Lorg/apache/commons/io/input/ReversedLinesFileReader;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/ReversedLinesFileReader;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;Lorg/apache/commons/io/input/ReversedLinesFileReader$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
