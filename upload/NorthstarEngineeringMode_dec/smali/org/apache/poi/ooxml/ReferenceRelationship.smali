.class public abstract Lorg/apache/poi/ooxml/ReferenceRelationship;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private container:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

.field private final external:Z

.field private final id:Ljava/lang/String;

.field private final relationshipType:Ljava/lang/String;

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Ljava/net/URI;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->container:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    iput-object p4, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->relationshipType:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->uri:Ljava/net/URI;

    iput-object p5, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->id:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->external:Z

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "targetUri cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    iput-object p1, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->container:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    .line 2
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->relationshipType:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->uri:Ljava/net/URI;

    .line 4
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->external:Z

    .line 5
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->id:Ljava/lang/String;

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageRelationship"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getContainer()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->container:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getRelationshipType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->relationshipType:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->uri:Ljava/net/URI;

    return-object p0
.end method

.method public isExternal()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ooxml/ReferenceRelationship;->external:Z

    return p0
.end method
