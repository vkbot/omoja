.class public Lorg/apache/poi/poifs/filesystem/TempFilePOIFSFileSystem;
.super Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
.source "SourceFile"


# static fields
.field private static final LOG:La5/d;


# instance fields
.field tempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/filesystem/TempFilePOIFSFileSystem;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/filesystem/TempFilePOIFSFileSystem;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/TempFilePOIFSFileSystem;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/TempFilePOIFSFileSystem;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/poifs/filesystem/TempFilePOIFSFileSystem;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string/jumbo v1, "temp file was already deleted (probably due to previous call to close this resource)"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-void
.end method

.method public createNewDataSource()V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "poifs"

    const-string v1, ".tmp"

    invoke-static {v0, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/TempFilePOIFSFileSystem;->tempFile:Ljava/io/File;

    new-instance v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/TempFilePOIFSFileSystem;->tempFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->_data:Lorg/apache/poi/poifs/nio/DataSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create data source"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
