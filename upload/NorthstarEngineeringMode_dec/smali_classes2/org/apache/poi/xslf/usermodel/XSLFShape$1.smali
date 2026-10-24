.class Lorg/apache/poi/xslf/usermodel/XSLFShape$1;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFShape;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/xslf/model/PropertyFetcher<",
        "Lorg/apache/poi/sl/usermodel/PaintStyle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFShape;

.field final synthetic val$hasPlaceholder:Z

.field final synthetic val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFShape;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iput-boolean p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$hasPlaceholder:Z

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 9

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    instance-of v1, p1, Lorg/apache/poi/xslf/usermodel/XSLFPictureShape;

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;->getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-virtual {p1, v1, v0, v2, v3}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFTheme;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v7

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getShapeProperties()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v3

    const/4 v8, 0x0

    if-nez v3, :cond_1

    return v8

    :cond_1
    invoke-interface {v3}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v7

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$hasPlaceholder:Z

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v7

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getFillRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v2

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFShape;

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFShape$1;->val$hasPlaceholder:Z

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v7

    :cond_5
    return v8
.end method
