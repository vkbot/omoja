.class public Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;
.super Lorg/apache/poi/ooxml/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field protected _document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method


# virtual methods
.method public setDocument(Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    return-void
.end method
