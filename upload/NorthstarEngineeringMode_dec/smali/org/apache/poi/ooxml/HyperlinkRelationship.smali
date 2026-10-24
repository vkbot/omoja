.class public Lorg/apache/poi/ooxml/HyperlinkRelationship;
.super Lorg/apache/poi/ooxml/ReferenceRelationship;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Ljava/net/URI;ZLjava/lang/String;)V
    .locals 6

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ooxml/ReferenceRelationship;-><init>(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Ljava/net/URI;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRelationshipType()Ljava/lang/String;
    .locals 0

    const-string p0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    return-object p0
.end method
