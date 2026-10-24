.class public Lorg/apache/poi/hssf/usermodel/HSSFWorkbookFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/WorkbookProvider;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWorkbook(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-object v0
.end method


# virtual methods
.method public accepts(Lorg/apache/poi/poifs/filesystem/FileMagic;)Z
    .locals 0

    sget-object p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public create()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 0

    .line 3
    new-instance p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>()V

    return-object p0
.end method

.method public create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 2

    const/4 p0, 0x1

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    move p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v1, p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_2

    invoke-static {v0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    .line 7
    :cond_2
    throw p0
.end method

.method public bridge synthetic create()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbookFactory;->create()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 2

    const/4 p0, 0x1

    if-eqz p2, :cond_0

    .line 11
    invoke-static {p2}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    move p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 12
    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v1, p1, p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {p1, v1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 14
    invoke-static {v0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 15
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    .line 16
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz p2, :cond_2

    .line 17
    invoke-static {v0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->setCurrentUserPassword(Ljava/lang/String;)V

    .line 18
    :cond_2
    throw p0
.end method

.method public create(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbookFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 9
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object p0

    return-object p0
.end method
