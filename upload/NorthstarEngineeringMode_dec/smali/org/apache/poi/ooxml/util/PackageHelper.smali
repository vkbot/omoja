.class public final Lorg/apache/poi/ooxml/util/PackageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "6.0.0"
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/poi/ooxml/util/PackageHelper;->copyProperties(Lorg/apache/poi/openxml4j/opc/PackageProperties;Lorg/apache/poi/openxml4j/opc/PackageProperties;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v5, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v4, v5}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->hasRelationships()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0, v3, v0, v2}, Lorg/apache/poi/ooxml/util/PackageHelper;->copy(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    :try_start_7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception p1

    if-eqz v4, :cond_5

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V

    :cond_7
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0

    :goto_5
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p1

    if-eqz v0, :cond_8

    :try_start_c
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    throw p1
.end method

.method private static copy(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v2, v3, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v3, v4, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2, v3}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-static {p0, v1, p2, v0}, Lorg/apache/poi/ooxml/util/PackageHelper;->copy(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p1

    :cond_7
    return-void
.end method

.method private static copyProperties(Lorg/apache/poi/openxml4j/opc/PackageProperties;Lorg/apache/poi/openxml4j/opc/PackageProperties;)V
    .locals 1

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getCategoryProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setCategoryProperty(Ljava/util/Optional;)V

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getContentStatusProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setContentStatusProperty(Ljava/util/Optional;)V

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getContentTypeProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setContentTypeProperty(Ljava/util/Optional;)V

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getCreatorProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setCreatorProperty(Ljava/util/Optional;)V

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getDescriptionProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setDescriptionProperty(Ljava/util/Optional;)V

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getIdentifierProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setIdentifierProperty(Ljava/util/Optional;)V

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getKeywordsProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setKeywordsProperty(Ljava/util/Optional;)V

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getLanguageProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setLanguageProperty(Ljava/util/Optional;)V

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getRevisionProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setRevisionProperty(Ljava/util/Optional;)V

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getSubjectProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setSubjectProperty(Ljava/util/Optional;)V

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getTitleProperty()Ljava/util/Optional;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setTitleProperty(Ljava/util/Optional;)V

    invoke-interface {p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->getVersionProperty()Ljava/util/Optional;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setVersionProperty(Ljava/util/Optional;)V

    return-void
.end method

.method public static open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lorg/apache/poi/ooxml/util/PackageHelper;->open(Ljava/io/InputStream;Z)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0
.end method

.method public static open(Ljava/io/InputStream;Z)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/InputStream;Z)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_1
    new-instance v1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 6
    :cond_1
    throw v0
.end method
