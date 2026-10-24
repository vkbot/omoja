.class public Lorg/apache/poi/xssf/usermodel/XSSFWorkbookFactory;
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

.method public static createWorkbook(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    throw v0
.end method


# virtual methods
.method public accepts(Lorg/apache/poi/poifs/filesystem/FileMagic;)Z
    .locals 0

    sget-object p0, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic create()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookFactory;->create()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic create(Ljava/io/InputStream;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 2

    .line 11
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    .line 13
    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, v1, :cond_2

    .line 14
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 15
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper;->getDecryptedStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 17
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-object p0

    :catchall_1
    move-exception p0

    .line 18
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_1

    .line 19
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 20
    :goto_2
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    .line 21
    :try_start_7
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    .line 22
    :cond_2
    sget-object p2, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, p2, :cond_3

    .line 23
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public create()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 0

    .line 5
    new-instance p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>()V

    return-object p0
.end method

.method public create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 2

    .line 27
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    .line 28
    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, v1, :cond_2

    .line 29
    new-instance p3, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    const/4 v0, 0x1

    invoke-direct {p3, p1, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V

    .line 30
    :try_start_0
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper;->getDecryptedStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 32
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    return-object p0

    :catchall_1
    move-exception p0

    .line 33
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_1

    .line 34
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 35
    :goto_2
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    .line 36
    :try_start_7
    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    :cond_2
    if-eqz p3, :cond_3

    .line 37
    :try_start_8
    sget-object p0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_3
    sget-object p0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ_WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    :goto_4
    invoke-static {p1, p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    .line 38
    invoke-static {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookFactory;->createWorkbook(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0
    :try_end_8
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_8 .. :try_end_8} :catch_0

    return-object p0

    .line 39
    :goto_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public create(Ljava/io/InputStream;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 0

    .line 24
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookFactory;->createWorkbook(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
    .locals 0

    .line 6
    invoke-static {p1, p2}, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper;->getDecryptedStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
.end method
