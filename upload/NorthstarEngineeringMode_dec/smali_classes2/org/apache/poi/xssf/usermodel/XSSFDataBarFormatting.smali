.class public Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataBarFormatting;


# instance fields
.field _colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

.field _databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    return-void
.end method


# virtual methods
.method public createThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->addNewCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-object v0
.end method

.method public bridge synthetic getColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->getColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public getColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    .line 2
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->getColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_colorMap:Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    invoke-static {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->from(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getMaxThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->getMaxThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    move-result-object p0

    return-object p0
.end method

.method public getMaxThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->getCfvoArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-object v0
.end method

.method public bridge synthetic getMinThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->getMinThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    move-result-object p0

    return-object p0
.end method

.method public getMinThreshold()Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->getCfvoArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V

    return-object v0
.end method

.method public getWidthMax()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->getMaxLength()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public getWidthMin()I
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->getMinLength()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public isIconOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->isSetShowValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->getShowValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLeftToRight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFColor;->getCTColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->setColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setIconOnly(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->setShowValue(Z)V

    return-void
.end method

.method public setLeftToRight(Z)V
    .locals 0

    return-void
.end method

.method public setWidthMax(I)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->setMaxLength(J)V

    return-void
.end method

.method public setWidthMin(I)V
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataBarFormatting;->_databar:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;->setMinLength(J)V

    return-void
.end method
