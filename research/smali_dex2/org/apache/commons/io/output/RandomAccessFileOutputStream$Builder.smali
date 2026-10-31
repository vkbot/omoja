.class public final Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/RandomAccessFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/RandomAccessFileOutputStream;",
        "Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {}, Lorg/apache/commons/io/d;->j()Ljava/nio/file/StandardOpenOption;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setOpenOptions([Ljava/nio/file/OpenOption;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$1;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;->get()Lorg/apache/commons/io/output/RandomAccessFileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/RandomAccessFileOutputStream;
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/RandomAccessFileOutputStream;-><init>(Lorg/apache/commons/io/output/RandomAccessFileOutputStream$Builder;Lorg/apache/commons/io/output/RandomAccessFileOutputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
