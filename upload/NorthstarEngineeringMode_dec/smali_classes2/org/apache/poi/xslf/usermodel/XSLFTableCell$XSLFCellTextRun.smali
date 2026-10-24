.class final Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;
.super Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/usermodel/XSLFTableCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "XSLFCellTextRun"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;


# direct methods
.method private constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    .line 2
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;Lorg/apache/poi/xslf/usermodel/XSLFTableCell$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;-><init>(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-void
.end method

.method private getTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->access$200(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;->isSetTcTxStyle()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;->wholeTbl:Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;

    invoke-static {p0, v0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell;->access$200(Lorg/apache/poi/xslf/usermodel/XSLFTableCell;Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;->getTcTxStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->getTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetSolidFill()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetGradFill()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;->isSetPattFill()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->getFontRef()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFontReference;->getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xslf/usermodel/XSLFSheet;->getTheme()Lorg/apache/poi/xslf/usermodel/XSLFTheme;

    move-result-object v2

    :try_start_0
    new-instance v3, Lorg/apache/poi/xslf/usermodel/XSLFColor;

    iget-object v4, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->this$0:Lorg/apache/poi/xslf/usermodel/XSLFTableCell;

    invoke-virtual {v4}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getSheet()Lorg/apache/poi/xslf/usermodel/XSLFSheet;

    move-result-object v4

    invoke-direct {v3, v0, v2, v1, v4}, Lorg/apache/poi/xslf/usermodel/XSLFColor;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTheme;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;Lorg/apache/poi/xslf/usermodel/XSLFSheet;)V

    invoke-virtual {v3}, Lorg/apache/poi/xslf/usermodel/XSLFColor;->getColorStyle()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0
.end method

.method public isBold()Z
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->getTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isBold()Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetB()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getB()Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->isSetB()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->getB()Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public isItalic()Z
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTableCell$XSLFCellTextRun;->getTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->isItalic()Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getRPr(Z)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetI()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->getI()Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->isSetI()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyleTextStyle;->getI()Lorg/openxmlformats/schemas/drawingml/x2006/main/STOnOffStyleType$Enum;

    move-result-object p0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method
