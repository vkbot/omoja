.class public Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;
.super Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFDiagram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XSLFDiagramGroupShape"
.end annotation


# instance fields
.field private diagramDrawing:Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    return-void
.end method

.method private constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    iput-object p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;->diagramDrawing:Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;Lorg/apache/poi/xslf/usermodel/XSLFDiagram$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;Lorg/apache/poi/xslf/usermodel/XSLFSheet;Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;)V

    return-void
.end method


# virtual methods
.method public getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFDiagram$XSLFDiagramGroupShape;->diagramDrawing:Lorg/apache/poi/xslf/usermodel/XSLFDiagramDrawing;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;

    move-result-object p0

    return-object p0
.end method
