.class public final Lorg/apache/poi/ooxml/extractor/POIXMLExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/ExtractorProvider;


# static fields
.field private static final CORE_DOCUMENT_REL:Ljava/lang/String; = "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

.field private static final STRICT_DOCUMENT_REL:Ljava/lang/String; = "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

.field private static final SUPPORTED_XSLF_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xslf/usermodel/XSLFRelation;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIO_DOCUMENT_REL:Ljava/lang/String; = "http://schemas.microsoft.com/visio/2010/relationships/document"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MAIN:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->MACRO_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATIONML:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v4, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATIONML_TEMPLATE:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    sget-object v5, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->PRESENTATION_MACRO:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ooxml/extractor/POIXMLExtractorFactory;->SUPPORTED_XSLF_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllThreadsPreferEventExtractors()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory;->getAllThreadsPreferEventExtractors()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferEventExtractor()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory;->getPreferEventExtractor()Z

    move-result v0

    return v0
.end method

.method public static getThreadPrefersEventExtractors()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory;->getThreadPrefersEventExtractors()Z

    move-result v0

    return v0
.end method

.method public static removeThreadPrefersEventExtractorsSetting()V
    .locals 0

    invoke-static {}, Lorg/apache/poi/extractor/ExtractorFactory;->removeThreadPrefersEventExtractorsSetting()V

    return-void
.end method

.method public static setAllThreadsPreferEventExtractors(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/extractor/ExtractorFactory;->setAllThreadsPreferEventExtractors(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static setThreadPrefersEventExtractors(Z)V
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/extractor/ExtractorFactory;->setThreadPrefersEventExtractors(Z)V

    return-void
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

.method public create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p1, p2}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Ljava/io/File;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-static {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p2}, Lorg/apache/poi/ooxml/extractor/POIXMLExtractorFactory;->create(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;

    move-result-object p0

    if-nez p0, :cond_1

    .line 5
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    return-object p0

    :goto_1
    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 7
    :cond_2
    throw p0

    .line 8
    :goto_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 2

    .line 9
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OOXML:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-eq v0, v1, :cond_0

    .line 11
    invoke-static {p1, p2}, Lorg/apache/poi/extractor/ExtractorFactory;->createExtractor(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p2, 0x0

    .line 12
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p2

    .line 13
    invoke-virtual {p0, p2}, Lorg/apache/poi/ooxml/extractor/POIXMLExtractorFactory;->create(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;

    move-result-object p0

    if-nez p0, :cond_1

    .line 14
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    return-object p0

    :goto_1
    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 16
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 18
    :cond_3
    throw p0

    .line 19
    :goto_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 2

    const-string v0, "Package"

    .line 49
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    .line 51
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ooxml/extractor/POIXMLExtractorFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 53
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    .line 54
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2

    :cond_2
    const-string v0, "EncryptedPackage"

    .line 55
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntryCaseInsensitive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 56
    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 57
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    .line 58
    :try_start_3
    invoke-virtual {v0, p2}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_7

    .line 59
    :try_start_4
    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 60
    :try_start_5
    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/ooxml/extractor/POIXMLExtractorFactory;->create(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_3

    .line 61
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    goto :goto_4

    .line 62
    :cond_3
    :goto_1
    :try_start_7
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_6

    :cond_4
    :goto_2
    return-object p0

    :catchall_4
    move-exception p0

    .line 64
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception p2

    if-eqz v0, :cond_5

    .line 65
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 66
    :goto_4
    :try_start_b
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 67
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->close()V

    .line 68
    :cond_6
    throw p0

    .line 69
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid password specified"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 70
    :goto_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 71
    :goto_6
    throw p0

    .line 72
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The OLE2 file neither contained a plain OOXML package node (\"Package\") nor an encrypted one (\"EncryptedPackage\")."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public create(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ooxml/extractor/POIXMLExtractorFactory;->create(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public create(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Lorg/apache/poi/ooxml/extractor/POIXMLTextExtractor;
    .locals 3

    const-string p0, "Invalid OOXML Package received - expected 1 core document, found "

    :try_start_0
    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    .line 20
    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

    .line 22
    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v0, "http://schemas.microsoft.com/visio/2010/relationships/document"

    .line 24
    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 26
    new-instance p0, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/extractor/XDGFVisioExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object p0

    .line 27
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v1

    if-ne v1, v2, :cond_d

    const/4 p0, 0x0

    .line 28
    invoke-virtual {v0, p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    move-object p0, v0

    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p0

    .line 30
    :goto_1
    sget-object v1, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->SUPPORTED_TYPES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    .line 31
    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    invoke-static {}, Lorg/apache/poi/ooxml/extractor/POIXMLExtractorFactory;->getPreferEventExtractor()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 33
    new-instance p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object p0

    .line 34
    :cond_4
    new-instance p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object p0

    .line 35
    :cond_5
    sget-object v1, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;->SUPPORTED_TYPES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    .line 36
    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 37
    new-instance p0, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/extractor/XWPFWordExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object p0

    :cond_7
    sget-object v1, Lorg/apache/poi/ooxml/extractor/POIXMLExtractorFactory;->SUPPORTED_XSLF_TYPES:Ljava/util/List;

    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    .line 39
    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 40
    new-instance p0, Lorg/apache/poi/xslf/extractor/XSLFExtractor;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-direct {v0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/extractor/XSLFExtractor;-><init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;)V

    return-object p0

    .line 41
    :cond_9
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->THEME_MANAGER:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 42
    new-instance p0, Lorg/apache/poi/xslf/extractor/XSLFExtractor;

    new-instance v0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    invoke-direct {v0, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xslf/extractor/XSLFExtractor;-><init>(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;)V

    return-object p0

    .line 43
    :cond_a
    sget-object v1, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->SUPPORTED_TYPES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    .line 44
    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 45
    new-instance p0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object p0

    :cond_c
    return-object v0

    .line 46
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
