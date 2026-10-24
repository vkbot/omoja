.class public Lorg/apache/poi/xdgf/usermodel/XDGFFactory;
.super Lorg/apache/poi/ooxml/POIXMLFactory;
.source "SourceFile"


# instance fields
.field private final document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ooxml/POIXMLFactory;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;->document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    return-void
.end method


# virtual methods
.method public createDocumentPart(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/poi/ooxml/POIXMLFactory;->createDocumentPart(Lorg/apache/poi/ooxml/POIXMLDocumentPart;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    instance-of p2, p1, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;->document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {p2, p0}, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;->setDocument(Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    :cond_0
    return-object p1
.end method

.method public getDescriptor(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLRelation;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xdgf/usermodel/XDGFRelation;->getInstance(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFRelation;

    move-result-object p0

    return-object p0
.end method

.method public newDocumentPart(Lorg/apache/poi/ooxml/POIXMLRelation;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/poi/ooxml/POIXMLFactory;->newDocumentPart(Lorg/apache/poi/ooxml/POIXMLRelation;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;

    iget-object p0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFFactory;->document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    invoke-virtual {v0, p0}, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;->setDocument(Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V

    :cond_0
    return-object p1
.end method
