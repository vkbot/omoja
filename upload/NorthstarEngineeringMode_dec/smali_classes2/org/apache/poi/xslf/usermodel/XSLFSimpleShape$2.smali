.class Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;
.super Lorg/apache/poi/xslf/model/PropertyFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->getLinePaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
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
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

.field final synthetic val$hasPlaceholder:Z

.field final synthetic val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    iput-object p2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iput-boolean p3, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    invoke-direct {p0}, Lorg/apache/poi/xslf/model/PropertyFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
    .locals 11

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;->access$000(Lorg/apache/poi/xslf/usermodel/XSLFShape;Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v3

    const/4 v1, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetNoFill()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v10

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v7, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    move-object v5, v10

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSpStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v5

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    const/4 v6, 0x0

    iget-object v8, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v9, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, v10}, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->getThemePaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Lorg/apache/poi/xslf/model/PropertyFetcher;->setValue(Ljava/lang/Object;)V

    return v1

    :cond_3
    return v0
.end method

.method public getThemePaint(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 8

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeStyle;->getLnRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getIdx()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v4

    if-gtz v1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    invoke-virtual {p1}, Lorg/apache/poi/xslf/usermodel/XSLFTheme;->getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeStyleSheet;->getThemeElements()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBaseStyles;->getFmtScheme()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->getLnStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;->getLnArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v3

    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    iget-object v6, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$theme:Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    iget-boolean v7, p0, Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape$2;->val$hasPlaceholder:Z

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->selectPaint(Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Z)Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0
.end method
