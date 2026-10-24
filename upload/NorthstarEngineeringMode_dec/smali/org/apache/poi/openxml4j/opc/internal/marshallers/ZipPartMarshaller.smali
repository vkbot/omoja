.class public final Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;


# static fields
.field private static final LOG:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshallRelationshipPart(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/commons/compress/archivers/zip/r0;)Z
    .locals 11

    invoke-static {}, Lorg/apache/poi/ooxml/util/DocumentHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "Relationships"

    const-string v2, "http://schemas.openxmlformats.org/package/2006/relationships"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getSourcePartUriFromRelationshipPartUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    const-string v5, "Relationship"

    invoke-interface {v0, v2, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Id"

    invoke-interface {v5, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Type"

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "External"

    const-string v9, "TargetMode"

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v4

    sget-object v7, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v4, v7, :cond_2

    invoke-interface {v5, v9, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v7

    sget-object v10, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v7, v10, :cond_1

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v9, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->relativizeURI(Ljava/net/URI;Ljava/net/URI;Z)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    :goto_1
    const-string v4, "Target"

    invoke-interface {v5, v4, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->normalize()V

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getZipURIFromOPCName(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2, p0}, Lorg/apache/commons/compress/archivers/zip/r0;->putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0, p2}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->saveXmlInStream(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V

    return p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->LOG:La5/d;

    invoke-interface {p2}, La5/d;->h()La5/b;

    move-result-object p2

    invoke-interface {p2, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p2, "Cannot create zip entry {}"

    invoke-interface {p0, p1, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z
    .locals 4

    instance-of p0, p2, Lorg/apache/commons/compress/archivers/zip/r0;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    check-cast p2, Lorg/apache/commons/compress/archivers/zip/r0;

    new-instance p0, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getZipItemNameFromOPCName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/o0;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2, p0}, Lorg/apache/commons/compress/archivers/zip/r0;->putArchiveEntry(Lorg/apache/commons/compress/archivers/zip/o0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0, p2}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_4
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->hasRelationships()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->marshallRelationshipPart(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/commons/compress/archivers/zip/r0;)Z

    :cond_2
    return v0

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz p0, :cond_3

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_7
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    :try_start_8
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/r0;->closeArchiveEntry()V

    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    sget-object p2, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->LOG:La5/d;

    invoke-interface {p2}, La5/d;->h()La5/b;

    move-result-object p2

    invoke-interface {p2, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string p2, "Cannot write: {}: in ZIP"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-interface {p0, p1, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    sget-object p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPartMarshaller;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->h()La5/b;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected class {}"

    invoke-interface {p0, p1, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;

    const-string p1, "ZipOutputStream expected !"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
