.class public Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelationPart"
.end annotation


# instance fields
.field private final documentPart:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

.field private final relationship:Lorg/apache/poi/openxml4j/opc/PackageRelationship;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Lorg/apache/poi/ooxml/POIXMLDocumentPart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->relationship:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iput-object p2, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->documentPart:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    return-void
.end method


# virtual methods
.method public getDocumentPart()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ooxml/POIXMLDocumentPart;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->documentPart:Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    return-object p0
.end method

.method public getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ooxml/POIXMLDocumentPart$RelationPart;->relationship:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    return-object p0
.end method
