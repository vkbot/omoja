.class public Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

.field private table:Lorg/apache/poi/xssf/usermodel/XSSFTable;

.field private tableColumn:Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->getTable()Lorg/apache/poi/xssf/usermodel/XSSFTable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->table:Lorg/apache/poi/xssf/usermodel/XSSFTable;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->tableColumn:Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    return-void
.end method


# virtual methods
.method public getLocalXPath()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->table:Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getCommonXpath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getXpath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMapId()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getMapId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTableColumn()Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->tableColumn:Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;

    return-object p0
.end method

.method public getXPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getXpath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXmlDataType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;->ctXmlColumnPr:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;->getXmlDataType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
