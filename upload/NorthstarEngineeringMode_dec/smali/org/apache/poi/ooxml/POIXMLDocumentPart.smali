.class public Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private coreDocumentRel:Ljava/lang/String;

.field private isCommitted:Z

.field private packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private parent:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

.field private final referenceRelationships:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ooxml/ReferenceRelationship;",
            ">;"
        }
    .end annotation
.end field

.field private relationCounter:I

.field private final relations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relations:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->referenceRelationships:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->isCommitted:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relations:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->referenceRelationships:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->isCommitted:Z

    iput-object p2, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iput-object p1, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->parent:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPartFromOPCPackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iput-object p2, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public static _invokeOnDocumentRead(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->onDocumentRead()V

    return-void
.end method

.method private addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relations:Ljava/util/Map;

    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-direct {v1, p1, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->incrementRelationCounter()I

    return-void
.end method

.method private static getPartFromOPCPackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 3

    const-string v0, "OOXML file structure broken/invalid - core document \'"

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    new-instance v1, Lorg/apache/poi/ooxml/POIXMLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_1
    const-string p1, "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "Strict OOXML isn\'t currently supported, please see bug #57699"

    invoke-direct {p1, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "OOXML file structure broken/invalid - no core document found!"

    invoke-direct {p1, v0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/apache/poi/ooxml/POIXMLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->revert()V

    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string v0, "OOXML file structure broken/invalid"

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :goto_1
    throw p0
.end method

.method private removeRelation(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relations:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->decrementRelationCounter()I

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relations:Ljava/util/Map;

    .line 9
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationCounter()I

    move-result p1

    if-nez p1, :cond_1

    .line 11
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->onDocumentRemove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->removePart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final addRelation(Ljava/lang/String;Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 1
    invoke-virtual {p3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->findExistingRelation(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 4
    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v1, v0, v2, p2, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    .line 5
    :cond_0
    invoke-direct {p0, v0, p3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    .line 6
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-direct {p0, v0, p3}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    return-object p0
.end method

.method public commit()V
    .locals 0

    return-void
.end method

.method public final createHyperlink(Ljava/net/URI;ZLjava/lang/String;)Lorg/apache/poi/ooxml/HyperlinkRelationship;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz p2, :cond_0

    sget-object v1, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    :goto_0
    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    invoke-virtual {v0, p1, v1, v2, p3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    new-instance v0, Lorg/apache/poi/ooxml/HyperlinkRelationship;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/ooxml/HyperlinkRelationship;-><init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Ljava/net/URI;ZLjava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->referenceRelationships:Ljava/util/Map;

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;
    .locals 4

    .line 3
    :try_start_0
    invoke-virtual {p1, p3}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 4
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    if-nez p4, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 5
    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p3, v2, v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p3, 0x0

    .line 6
    :goto_0
    invoke-virtual {p2, p1}, Lorg/apache/poi/ooxml/POIXMLFactory;->newDocumentPart(Lorg/apache/poi/ooxml/POIXMLRelation;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    .line 7
    iput-object v0, p1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 8
    iput-object p0, p1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->parent:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    if-nez p4, :cond_1

    .line 9
    invoke-direct {p0, p3, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    .line 10
    :cond_1
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-direct {p0, p3, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/PartAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 11
    :goto_1
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 12
    :goto_2
    throw p0
.end method

.method public final createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    return-object p0
.end method

.method public final createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;I)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/ooxml/POIXMLRelation;Lorg/apache/poi/ooxml/POIXMLFactory;IZ)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    return-object p0
.end method

.method public decrementRelationCounter()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relationCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relationCounter:I

    return v0
.end method

.method public final getNextPartNumber(Lorg/apache/poi/ooxml/POIXMLRelation;I)I
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x270f

    invoke-virtual {p1, v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    if-gez p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p2, v1

    :goto_1
    if-gt v0, p2, :cond_4

    invoke-virtual {p1, v0}, Lorg/apache/poi/ooxml/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v2

    :goto_2
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    invoke-direct {p1, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-object p0
.end method

.method public final getParent()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->parent:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    return-object p0
.end method

.method public final getReferenceRelationship(Ljava/lang/String;)Lorg/apache/poi/ooxml/ReferenceRelationship;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->referenceRelationships:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ooxml/ReferenceRelationship;

    return-object p0
.end method

.method public final getReferenceRelationships()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ooxml/ReferenceRelationship;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->referenceRelationships:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationPartById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRelationCounter()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relationCounter:I

    return p0
.end method

.method public final getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRelationPartById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    return-object p0
.end method

.method public final getRelationParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRelations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ooxml/POIXMLDocumentPart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTargetPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    return-object p0
.end method

.method public incrementRelationCounter()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relationCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relationCounter:I

    return v0
.end method

.method public isCommitted()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->isCommitted:Z

    return p0
.end method

.method public onDocumentCreate()V
    .locals 0

    return-void
.end method

.method public onDocumentRead()V
    .locals 0

    return-void
.end method

.method public onDocumentRemove()V
    .locals 0

    return-void
.end method

.method public final onSave(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->isCommitted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->prepareForCommit()V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->commit()V

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->relations:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->onSave(Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public prepareForCommit()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->clear()V

    :cond_0
    return-void
.end method

.method public read(Lorg/apache/poi/ooxml/POIXMLFactory;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ooxml/POIXMLFactory;",
            "Ljava/util/Map<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            "Lorg/apache/poi/ooxml/POIXMLDocumentPart;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "POI does not currently support template.main+xml (glossary) parts.  Skipping this part for now."

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    if-eqz v1, :cond_2

    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p1, "Unique PackagePart-POIXMLDocumentPart relation broken!"

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->hasRelationships()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->referenceRelationships:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/ooxml/HyperlinkRelationship;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v7

    sget-object v8, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, p0, v6, v7, v2}, Lorg/apache/poi/ooxml/HyperlinkRelationship;-><init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Ljava/net/URI;ZLjava/lang/String;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    goto :goto_3

    :cond_7
    invoke-static {v3}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    :goto_3
    iget-object v4, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    if-nez v3, :cond_8

    sget-object v3, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->LOG:La5/d;

    invoke-interface {v3}, La5/d;->h()La5/b;

    move-result-object v3

    const-string v4, "Skipped invalid entry {}"

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    invoke-interface {v3, v2, v4}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    if-nez v4, :cond_a

    invoke-virtual {p1, p0, v3}, Lorg/apache/poi/ooxml/POIXMLFactory;->createDocumentPart(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object v4

    instance-of v5, p0, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;

    if-eqz v5, :cond_9

    instance-of v5, v4, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    if-eqz v5, :cond_9

    move-object v5, p0

    check-cast v5, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;

    move-object v6, v4

    check-cast v6, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v5, v6}, Lorg/apache/poi/xddf/usermodel/chart/XDDFChart;->setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    :cond_9
    iput-object p0, v4, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->parent:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-direct {p0, v2, v4}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->addRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->read(Lorg/apache/poi/ooxml/POIXMLFactory;Ljava/util/Map;)V

    goto :goto_4

    :cond_c
    return-void
.end method

.method public final rebase(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 3

    iget-object p1, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried to rebase using "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->coreDocumentRel:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " but found "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " parts of the right type"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeReferenceRelationship(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->referenceRelationships:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ooxml/ReferenceRelationship;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->removeRelationship(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeRelation(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Ljava/lang/String;Z)Z

    return-void
.end method

.method public final removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Z)Z

    return-void
.end method

.method public final removeRelation(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Z)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/ooxml/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->removeRelation(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setCommitted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->isCommitted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->packagePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
