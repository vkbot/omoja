.class public Lorg/apache/commons/io/output/LockableFileWriter$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/LockableFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/LockableFileWriter;",
        "Lorg/apache/commons/io/output/LockableFileWriter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private append:Z

.field private lockDirectory:Lorg/apache/commons/io/build/AbstractOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/build/AbstractOrigin<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newFileOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->lockDirectory:Lorg/apache/commons/io/build/AbstractOrigin;

    .line 13
    .line 14
    const/16 v0, 0x400

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSizeDefault(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/io/output/LockableFileWriter$Builder;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->checkOriginFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/io/output/LockableFileWriter$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->append:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Lorg/apache/commons/io/output/LockableFileWriter$Builder;)Lorg/apache/commons/io/build/AbstractOrigin;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->lockDirectory:Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    return-object p0
.end method

.method private checkOriginFile()Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/io/build/AbstractOrigin;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->get()Lorg/apache/commons/io/output/LockableFileWriter;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/LockableFileWriter;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/LockableFileWriter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Lorg/apache/commons/io/output/LockableFileWriter$Builder;Lorg/apache/commons/io/output/LockableFileWriter$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAppend(Z)Lorg/apache/commons/io/output/LockableFileWriter$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->append:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setLockDirectory(Ljava/io/File;)Lorg/apache/commons/io/output/LockableFileWriter$Builder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectory()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newFileOrigin(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->lockDirectory:Lorg/apache/commons/io/build/AbstractOrigin;

    .line 13
    .line 14
    return-object p0
.end method

.method public setLockDirectory(Ljava/lang/String;)Lorg/apache/commons/io/output/LockableFileWriter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->newFileOrigin(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractOrigin$FileOrigin;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/LockableFileWriter$Builder;->lockDirectory:Lorg/apache/commons/io/build/AbstractOrigin;

    return-object p0
.end method
