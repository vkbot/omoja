.class public abstract Lorg/apache/poi/POIReadOnlyDocument;
.super Lorg/apache/poi/POIDocument;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method private static notImplemented()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Writing is not yet implemented for this Document Format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public write()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/apache/poi/POIReadOnlyDocument;->notImplemented()V

    return-void
.end method

.method public write(Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-static {}, Lorg/apache/poi/POIReadOnlyDocument;->notImplemented()V

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0

    .line 3
    invoke-static {}, Lorg/apache/poi/POIReadOnlyDocument;->notImplemented()V

    return-void
.end method
