.class public final Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private final internalRelationshipsByTargetName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation
.end field

.field private nextRelationshipId:I

.field private partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

.field private relationshipPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field private final relationshipsByID:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation
.end field

.field private sourcePart:Lorg/apache/poi/openxml4j/opc/PackagePart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->internalRelationshipsByTargetName:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->nextRelationshipId:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->internalRelationshipsByTargetName:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->nextRelationshipId:I

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->isRelationshipPart()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "part"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->sourcePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 15
    invoke-static {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageAccess()Lorg/apache/poi/openxml4j/opc/PackageAccess;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageAccess;->WRITE:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 17
    invoke-virtual {p1, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 18
    invoke-virtual {p1, p2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 19
    invoke-virtual {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->parseRelationshipsPart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    :cond_2
    return-void

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "container needs to be specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    .line 9
    iget-object v0, p1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>()V

    .line 5
    iget-object p1, p1, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->PACKAGE_ROOT_PART_NAME:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->getRelationshipPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 8

    if-eqz p4, :cond_1

    .line 5
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v7, p4

    goto :goto_2

    :cond_1
    :goto_1
    iget p4, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->nextRelationshipId:I

    const/4 v0, -0x1

    if-ne p4, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->nextRelationshipId:I

    .line 7
    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "rId"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->nextRelationshipId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->nextRelationshipId:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    .line 8
    invoke-virtual {v0, p4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 9
    :goto_2
    new-instance p4, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iget-object v3, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->sourcePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-object v1, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p4}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V

    .line 11
    sget-object p3, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne p2, p3, :cond_3

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->internalRelationshipsByTargetName:Ljava/util/HashMap;

    .line 12
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p4
.end method

.method public addRelationship(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid relationship part/id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string v1, "<null>"

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for relationship: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->internalRelationshipsByTargetName:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public findExistingInternalRelation(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->internalRelationshipsByTargetName:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    return-object p0
.end method

.method public getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    add-int/lit8 v2, v0, 0x1

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRelationshipByID(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 3

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot read relationship, provided ID is empty: "

    const-string v2, ", having relationships: "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRelationships(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;
    .locals 1

    new-instance v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;Ljava/lang/String;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    .line 1
    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public iterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    .line 3
    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

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

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 4
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public parseRelationshipsPart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 10

    :try_start_0
    sget-object v0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->e()La5/b;

    move-result-object v0

    const-string v1, "Parsing relationship: {}"

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-interface {v0, v2, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Lorg/apache/poi/ooxml/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v0, "http://schemas.openxmlformats.org/package/2006/relationships"

    const-string v1, "Relationship"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    const-string v4, "Id"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Type"

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    new-instance p0, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string p1, "OPC Compliance error [M4.1]: there is more than one core properties relationship in the package !"

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    const-string v6, "TargetMode"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "internal"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    sget-object v7, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    :cond_4
    :goto_3
    const-string v6, "http://invalid.uri"

    invoke-static {v6}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    const-string v8, "Target"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {v3}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_1
    move-exception v8

    :try_start_4
    sget-object v9, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->LOG:La5/d;

    invoke-interface {v9}, La5/d;->h()La5/b;

    move-result-object v9

    invoke-interface {v9, v8}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v8

    const-string v9, "Cannot convert {} in a valid relationship URI-> dummy-URI used"

    invoke-interface {v8, v3, v9}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p0, v6, v7, v5, v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_6

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_6
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    const-string v0, "Failed to parse relationships"

    invoke-direct {p1, v0, p0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public removeRelationship(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->internalRelationshipsByTargetName:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result p0

    return p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipsByID:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " relationship(s) = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->relationshipPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v1, v1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "relationshipPart=null"

    invoke-static {v0, v1}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->sourcePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    const-string v2, ","

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    if-eqz v1, :cond_1

    invoke-static {v0, v2}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->sourcePart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v1, v1, Lorg/apache/poi/openxml4j/opc/PackagePart;->_partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v1, ",sourcePart=null"

    invoke-static {v0, v1}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    if-eqz v1, :cond_2

    invoke-static {v0, v2}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, ",uri=null)"

    invoke-static {v0, p0}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string v0, "]"

    invoke-static {p0, v0}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
