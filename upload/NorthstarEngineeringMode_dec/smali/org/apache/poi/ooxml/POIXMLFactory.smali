.class public abstract Lorg/apache/poi/ooxml/POIXMLFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:La5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ooxml/POIXMLFactory;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ooxml/POIXMLFactory;->LOGGER:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocumentPart(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ooxml/POIXMLFactory;->getPackageRelationship(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ooxml/POIXMLFactory;->getDescriptor(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLRelation;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getParentPartConstructor()Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lorg/apache/poi/ooxml/POIXMLRelation$ParentPartConstructor;->init(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getPackagePartConstructor()Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;->init(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/ooxml/POIXMLFactory;->LOGGER:La5/d;

    invoke-interface {p0}, La5/d;->e()La5/b;

    move-result-object p0

    const-string/jumbo v1, "using default POIXMLDocumentPart for {}"

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract getDescriptor(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLRelation;
.end method

.method public getPackageRelationship(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 1

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object p2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string/jumbo p1, "package part isn\'t a child of the parent document."

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p2, "error while determining package relations"

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public newDocumentPart(Lorg/apache/poi/ooxml/POIXMLRelation;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getNoArgConstructor()Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getNoArgConstructor()Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;->init()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "can\'t initialize POIXMLDocumentPart"

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
