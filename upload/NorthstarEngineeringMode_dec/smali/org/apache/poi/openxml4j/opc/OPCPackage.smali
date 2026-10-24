.class public abstract Lorg/apache/poi/openxml4j/opc/OPCPackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/RelationshipSource;
.implements Ljava/io/Closeable;


# static fields
.field private static final LOG:La5/d;

.field protected static final defaultPackageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;


# instance fields
.field protected contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

.field protected final defaultPartMarshaller:Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

.field protected isDirty:Z

.field protected originalPackagePath:Ljava/lang/String;

.field protected output:Ljava/io/OutputStream;

.field private final packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

.field protected packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

.field private partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

.field protected final partMarshallers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/openxml4j/opc/internal/ContentType;",
            "Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;",
            ">;"
        }
    .end annotation
.end field

.field protected final partUnmarshallers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/openxml4j/opc/internal/ContentType;",
            "Lorg/apache/poi/openxml4j/opc/internal/PartUnmarshaller;",
            ">;"
        }
    .end annotation
.end field

.field protected relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->LOG:La5/d;

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ_WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    sput-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPackageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackageAccess;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partMarshallers:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/DefaultMarshaller;

    invoke-direct {v1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/DefaultMarshaller;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPartMarshaller:Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partUnmarshallers:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    if-ne v2, v3, :cond_0

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-static {}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->newCorePropertiesPart()Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;-><init>()V

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPackagePropertiesMarshaller;

    invoke-direct {p1}, Lorg/apache/poi/openxml4j/opc/internal/marshallers/ZipPackagePropertiesMarshaller;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PackageBase may not be subclassed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static configurePackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/openxml4j/opc/internal/ZipContentTypeManager;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_RELATIONSHIPS_ROOT_URI:Ljava/net/URI;

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    const-string v2, "application/vnd.openxmlformats-package.relationships+xml"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    const-string v1, "/default.xml"

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->CORE_PROPERTIES_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    const-string v1, "Generated by Apache POI OpenXML4J"

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCreatorProperty(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCreatedProperty(Ljava/util/Optional;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static create(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>()V

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->configurePackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0

    .line 7
    :cond_1
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "This package (or file) already exists : use the open() method or delete the file."

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Ljava/io/OutputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    .line 9
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    iput-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->output:Ljava/io/OutputStream;

    .line 10
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->configurePackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0
.end method

.method private getRelationshipsHelper(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->ensureRelationships()V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationships(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p0

    return-object p0
.end method

.method private static newCorePropertiesPart()Lorg/apache/poi/openxml4j/opc/internal/ContentType;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    const-string v1, "application/vnd.openxmlformats-package.core-properties+xml"

    invoke-direct {v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Package.init() : this exception should never happen, if you read this message please send a mail to the developers team. : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static open(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPackageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    .line 2
    invoke-static {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0
.end method

.method public static open(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    if-eqz p0, :cond_4

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "file must not be a directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Ljava/io/File;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    :try_start_0
    iget-object v1, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez v1, :cond_2

    .line 21
    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq p1, v1, :cond_2

    .line 22
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 23
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 24
    :goto_2
    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-ne p1, v1, :cond_3

    .line 25
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    goto :goto_3

    .line 26
    :cond_3
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 27
    :goto_3
    throw p0

    .line 28
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'file\' must be given"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    .line 29
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ_WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    :try_start_0
    iget-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez p0, :cond_0

    .line 30
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    .line 31
    :goto_1
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 32
    throw p0
.end method

.method public static open(Ljava/io/InputStream;Z)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    .line 33
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ_WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Ljava/io/InputStream;Lorg/apache/poi/openxml4j/opc/PackageAccess;Z)V

    :try_start_0
    iget-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez p0, :cond_0

    .line 34
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    .line 35
    :goto_1
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    throw p0
.end method

.method public static open(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->defaultPackageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    .line 1
    invoke-static {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0
.end method

.method public static open(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    .line 7
    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "path must not be a directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    iget-object v1, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez v1, :cond_2

    .line 12
    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq p1, v1, :cond_2

    .line 13
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 14
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 15
    throw p0

    .line 16
    :cond_2
    :goto_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    return-object v0

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'path\' must be given"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static open(Lorg/apache/poi/openxml4j/util/ZipEntrySource;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 2

    .line 3
    new-instance v0, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;-><init>(Lorg/apache/poi/openxml4j/util/ZipEntrySource;Lorg/apache/poi/openxml4j/opc/PackageAccess;)V

    :try_start_0
    iget-object p0, v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    .line 5
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    .line 6
    throw p0
.end method

.method public static openOrCreate(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    return-object p0
.end method

.method public addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->ensureRelationships()V

    iget-object p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    .line 4
    sget-object v1, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-object p1

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid target - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "relationshipType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "target"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addMarshaller(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partMarshallers:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/openxml4j/opc/OPCPackage;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    const-string p2, "The specified content type is not valid: \'{}\'. The marshaller will not be added !"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addPackagePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->hasPackagePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object v1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->setDeleted(Z)V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object v1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->remove(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A part with the name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already exists : Packages shall not contain equivalent part names and package implementers shall neither create nor recognize packages with equivalent part names. [M1.12]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object v1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "part"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    return-object p0
.end method

.method public addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    const-string v0, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties"

    .line 1
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p1, "OPC Compliance error [M4.1]: can\'t add another core properties part ! Use the built-in package method instead."

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->ensureRelationships()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-object p1

    .line 7
    :cond_2
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p1, "Rule M1.25: The Relationships part shall not have relationships to any other part."

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addThumbnail(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 3
    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addThumbnail(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 7
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
    throw v0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "path"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addThumbnail(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 4

    const-string v0, "\'"

    const-string v1, "/docProps/"

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/ContentTypes;->getContentTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "/docProps/thumbnail"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2e

    .line 13
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    :try_start_1
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, v1, v2, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    .line 17
    sget-object v0, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v2, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/thumbnail"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/apache/poi/openxml4j/opc/StreamHelper;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    return-void

    .line 19
    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p2, "You already add a thumbnail named \'"

    .line 20
    invoke-static {p2, p1, v0}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 22
    new-instance p2, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v1, "Can\'t add a thumbnail file named \'"

    .line 23
    invoke-static {v1, p1, v0}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {p2, p1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "filename"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addUnmarshaller(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/internal/PartUnmarshaller;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partUnmarshallers:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/openxml4j/opc/OPCPackage;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    const-string p2, "The specified content type is not valid: \'{}\'. The unmarshaller will not be added !"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clearRelationships()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string v1, "The close() method is intended to SAVE a package. This package is open in READ ONLY mode, use the revert() method instead!"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    const-string v1, "Unable to call close() on a package that hasn\'t been fully opened yet"

    invoke-interface {v0, v1}, La5/b;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->closeImpl()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->save(Ljava/io/File;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_6

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->save(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->output:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw v0

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->clearAll()V

    return-void
.end method

.method public abstract closeImpl()V
.end method

.method public containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    return-object p0
.end method

.method public createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-eqz p3, :cond_3

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    if-nez p2, :cond_2

    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    .line 23
    :cond_2
    :try_start_1
    invoke-virtual {p3, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 25
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    .line 26
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_3
    return-object p1
.end method

.method public createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    .line 4
    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->containsKey(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    .line 5
    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "A part with the name \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already exists : Packages shall not contain equivalent part names and package implementers shall neither create nor recognize packages with equivalent part names. [M1.12]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v0, "application/vnd.openxmlformats-package.core-properties+xml"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-nez v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p1, "OPC Compliance error [M4.1]: you try to add more than one core properties relationship in the package !"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p3

    :try_start_0
    const-string v0, "/.xml"

    .line 11
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    const-string v2, "application/xml"

    .line 12
    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    const-string v0, "/.rels"

    .line 13
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    const-string v2, "application/vnd.openxmlformats-package.relationships+xml"

    .line 14
    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    .line 15
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    .line 16
    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-object p3

    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string/jumbo p2, "unable to create default content-type entries."

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "contentType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "partName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract createPartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;Z)Lorg/apache/poi/openxml4j/opc/PackagePart;
.end method

.method public deletePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "partName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deletePartRecursive(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->resolvePartUri(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->deletePartRecursive(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :cond_1
    return-void

    :goto_1
    sget-object v0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-interface {v0, p0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p0

    const-string v0, "An exception occurs while deleting part \'{}\'. Some parts may remain in the package."

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "partName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ensureRelationships()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0, p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    :cond_0
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->flush()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->flushImpl()V

    return-void
.end method

.method public abstract flushImpl()V
.end method

.method public getPackageAccess()Lorg/apache/poi/openxml4j/opc/PackageAccess;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    return-object p0
.end method

.method public getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    sget-object v1, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->CORE_PROPERTIES_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    return-object p0
.end method

.method public getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "partName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 4

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->ensureRelationships()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 7
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getParts()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsImpl()Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->sortedValues()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->loadRelationships()V

    const-string v6, "application/vnd.openxmlformats-package.core-properties+xml"

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    sget-object v6, Lorg/apache/poi/openxml4j/opc/OPCPackage;->LOG:La5/d;

    invoke-interface {v6}, La5/d;->g()La5/b;

    move-result-object v6

    const-string v7, "OPC Compliance error [M4.1]: there is more than one core properties relationship in the package! POI will use only the first, but other software may reject this file."

    invoke-interface {v6, v7}, La5/b;->f(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v6, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partUnmarshallers:Ljava/util/Map;

    iget-object v7, v5, Lorg/apache/poi/openxml4j/opc/PackagePart;->_contentType:Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/openxml4j/opc/internal/PartUnmarshaller;

    if-eqz v6, :cond_0

    new-instance v7, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;

    iget-object v8, v5, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :try_start_0
    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v6, v7, v8}, Lorg/apache/poi/openxml4j/opc/internal/PartUnmarshaller;->unmarshall(Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->remove(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v7, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object v9, v6, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v7, v9, v6}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->put(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    instance-of v7, v6, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    check-cast v6, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    iput-object v6, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v2

    goto :goto_2

    :catchall_0
    move-exception v6

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v7

    if-eqz v8, :cond_4

    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v8

    :try_start_5
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    new-instance v0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    sget-object v6, Lorg/apache/poi/openxml4j/opc/OPCPackage;->LOG:La5/d;

    invoke-interface {v6}, La5/d;->g()La5/b;

    move-result-object v6

    const-string v7, "Unmarshall operation : IOException for {}"

    iget-object v5, v5, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-interface {v6, v5, v7}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->sortedValues()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->sortedValues()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->sortedValues()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name pattern must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPartsByRelationshipType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "relationshipType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getPartsImpl()Lorg/apache/poi/openxml4j/opc/PackagePartCollection;
.end method

.method public getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationshipByID(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    return-object p0
.end method

.method public getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsHelper(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p0

    return-object p0
.end method

.method public getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfWriteOnly()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsHelper(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "relationshipType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUnusedPartIndex(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->getUnusedPartIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hasPackagePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    iget-object p1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->containsKey(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result p0

    return p0
.end method

.method public hasRelationships()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract isClosed()Z
.end method

.method public isRelationshipExists(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isStrictOoxmlFormat()Z
    .locals 1

    const-string v0, "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public registerPartAndContentType(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addPackagePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-void
.end method

.method public removeMarshaller(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partMarshallers:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public removePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :cond_0
    return-void
.end method

.method public removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    .line 4
    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->containsKey(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    .line 5
    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->setDeleted(Z)V

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    .line 8
    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->removeContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->isRelationshipPartURI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getSourcePartUriFromRelationshipPartUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 11
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_URI:Ljava/net/URI;

    invoke-virtual {v0, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->clearRelationships()V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clearRelationships()V

    goto :goto_1

    :catch_0
    sget-object p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->LOG:La5/d;

    .line 17
    invoke-interface {p0}, La5/d;->h()La5/b;

    move-result-object p0

    const-string v0, "Part name URI \'{}\' is not valid! This message is not intended to be displayed!"

    invoke-interface {p0, p1, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-void

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "partName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePartImpl(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->remove(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "partName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePartRecursive(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partList:Lorg/apache/poi/openxml4j/opc/PackagePartCollection;

    invoke-virtual {v1, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->get(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    if-eqz v0, :cond_1

    new-instance v1, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v1, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getSourceURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->resolvePartUri(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    :cond_1
    iget-object p1, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    return-void
.end method

.method public removeRelationship(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->removeRelationship(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    :cond_0
    return-void
.end method

.method public removeUnmarshaller(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->partUnmarshallers:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/ContentType;

    invoke-direct {v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentType;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public replaceContentType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v3, v1, p2}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->addContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2, p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->setContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;

    const-string v0, "invalid content type - "

    invoke-static {v0, p2}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/openxml4j/exceptions/OpenXML4JRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return v1
.end method

.method public revert()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revertImpl()V

    return-void
.end method

.method public abstract revertImpl()V
.end method

.method public save(Ljava/io/File;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->originalPackagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p1, "You can\'t call save(File) to save to the currently open file. To save to the current file, please just call close()"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->save(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    .line 9
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "targetFile"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 0

    .line 11
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->throwExceptionIfReadOnly()V

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->saveImpl(Ljava/io/OutputStream;)V

    return-void
.end method

.method public abstract saveImpl(Ljava/io/OutputStream;)V
.end method

.method public throwExceptionIfReadOnly()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "Operation not allowed, document open in read only mode!"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public throwExceptionIfWriteOnly()V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string v0, "Operation not allowed, document open in write only mode!"

    invoke-direct {p0, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OPCPackage{packageAccess="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageAccess:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relationships="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->relationships:Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->packageProperties:Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterPartAndContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->contentTypeManager:Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/ContentTypeManager;->removeContentType(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/openxml4j/opc/OPCPackage;->isDirty:Z

    return-void
.end method

.method public validatePackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)Z
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;

    const-string p1, "Not implemented yet !!!"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
