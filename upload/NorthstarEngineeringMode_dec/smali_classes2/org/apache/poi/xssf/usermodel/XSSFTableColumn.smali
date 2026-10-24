.class public Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

.field private final table:Lorg/apache/poi/xssf/usermodel/XSSFTable;

.field private xmlColumnPr:Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->table:Lorg/apache/poi/xssf/usermodel/XSSFTable;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    return-void
.end method


# virtual methods
.method public getColumnIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->table:Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->findColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getId()J
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTable()Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->table:Lorg/apache/poi/xssf/usermodel/XSSFTable;

    return-object p0
.end method

.method public getXmlColumnPr()Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->xmlColumnPr:Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;)V

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->xmlColumnPr:Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->xmlColumnPr:Lorg/apache/poi/xssf/usermodel/helpers/XSSFXmlColumnPr;

    return-object p0
.end method

.method public setId(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-interface {p0, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setId(J)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFTableColumn;->ctTableColumn:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->setName(Ljava/lang/String;)V

    return-void
.end method
