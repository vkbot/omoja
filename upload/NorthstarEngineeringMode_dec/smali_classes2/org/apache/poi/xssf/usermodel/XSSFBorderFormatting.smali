.class public Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/BorderFormatting;


# instance fields
.field _border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

.field _colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method

.method private getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-short p0, p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->getColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-static {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->from(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getIndexed()S

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBorderBottom()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    return-object p0
.end method

.method public getBorderDiagonal()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    return-object p0
.end method

.method public getBorderHorizontal()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    return-object p0
.end method

.method public getBorderLeft()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    return-object p0
.end method

.method public getBorderRight()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    return-object p0
.end method

.method public getBorderTop()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    return-object p0
.end method

.method public getBorderVertical()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBorderStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object p0

    return-object p0
.end method

.method public getBottomBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBottomBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result p0

    return p0
.end method

.method public bridge synthetic getBottomBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getBottomBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getBottomBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getDiagonalBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getDiagonalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result p0

    return p0
.end method

.method public bridge synthetic getDiagonalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getDiagonalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getDiagonalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getHorizontalBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getHorizontalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result p0

    return p0
.end method

.method public bridge synthetic getHorizontalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getHorizontalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getHorizontalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getLeftBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getLeftBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result p0

    return p0
.end method

.method public bridge synthetic getLeftBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getLeftBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getLeftBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getRightBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getRightBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result p0

    return p0
.end method

.method public bridge synthetic getRightBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getRightBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getRightBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getTopBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getTopBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result p0

    return p0
.end method

.method public bridge synthetic getTopBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getTopBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getTopBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalBorderColor()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getVerticalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getIndexedColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)S

    move-result p0

    return p0
.end method

.method public bridge synthetic getVerticalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getVerticalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalBorderColorColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->getColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetBottom()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderDiagonal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetDiagonal()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderHorizontal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetHorizontal()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetLeft()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetRight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetRight()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetTop()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBorderVertical(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->unsetVertical()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STBorderStyle$Enum;)V

    :goto_1
    return-void
.end method

.method public setBottomBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetBottom()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewBottom()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    .line 8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setBottomBorderColor(S)V
    .locals 3

    .line 4
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v1, p1

    .line 5
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setDiagonalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setDiagonalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setDiagonalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setDiagonalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetDiagonal()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewDiagonal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    .line 8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setDiagonalBorderColor(S)V
    .locals 3

    .line 4
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v1, p1

    .line 5
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setDiagonalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setHorizontalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setHorizontalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setHorizontalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetHorizontal()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    .line 8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setHorizontalBorderColor(S)V
    .locals 3

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v1, p1

    .line 2
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setHorizontalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setLeftBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setLeftBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setLeftBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setLeftBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetLeft()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewLeft()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    .line 8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setLeftBorderColor(S)V
    .locals 3

    .line 4
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v1, p1

    .line 5
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setLeftBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setRightBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setRightBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setRightBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setRightBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetRight()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewRight()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    .line 8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setRightBorderColor(S)V
    .locals 3

    .line 4
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v1, p1

    .line 5
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setRightBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setTopBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setTopBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setTopBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setTopBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetTop()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewTop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    .line 8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setTopBorderColor(S)V
    .locals 3

    .line 4
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v1, p1

    .line 5
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setTopBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setVerticalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->toXSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setBottomBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setVerticalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_0
    return-void
.end method

.method public setVerticalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->isSetVertical()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->_border:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorder;->addNewVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    .line 8
    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->unsetColor()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBorderPr;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    :goto_1
    return-void
.end method

.method public setVerticalBorderColor(S)V
    .locals 3

    .line 1
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    int-to-long v1, p1

    .line 2
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFBorderFormatting;->setVerticalBorderColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method
