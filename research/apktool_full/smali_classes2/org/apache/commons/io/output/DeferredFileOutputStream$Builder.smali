.class public Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/DeferredFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/DeferredFileOutputStream;",
        "Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private directory:Ljava/nio/file/Path;

.field private outputFile:Ljava/nio/file/Path;

.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x400

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

.method public static synthetic access$300(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->threshold:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->outputFile:Ljava/nio/file/Path;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->prefix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->suffix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->directory:Ljava/nio/file/Path;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->get()Lorg/apache/commons/io/output/DeferredFileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/DeferredFileOutputStream;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/DeferredFileOutputStream;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;Lorg/apache/commons/io/output/DeferredFileOutputStream$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setDirectory(Ljava/io/File;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$100(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->directory:Ljava/nio/file/Path;

    .line 7
    .line 8
    return-object p0
.end method

.method public setDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$200(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->directory:Ljava/nio/file/Path;

    return-object p0
.end method

.method public setOutputFile(Ljava/io/File;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$100(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->outputFile:Ljava/nio/file/Path;

    .line 7
    .line 8
    return-object p0
.end method

.method public setOutputFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$200(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->outputFile:Ljava/nio/file/Path;

    return-object p0
.end method

.method public setPrefix(Ljava/lang/String;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->prefix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSuffix(Ljava/lang/String;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->suffix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setThreshold(I)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->threshold:I

    .line 2
    .line 3
    return-object p0
.end method
