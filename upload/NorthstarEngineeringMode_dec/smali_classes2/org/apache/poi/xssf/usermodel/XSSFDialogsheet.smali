.class public Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;
.super Lorg/apache/poi/xssf/usermodel/XSSFSheet;
.source "SourceFile"


# instance fields
.field protected dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/ooxml/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    return-void
.end method


# virtual methods
.method public bridge synthetic createRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    return-object p0
.end method

.method public createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDialog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDialogColumnBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDialogHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setHeaderFooter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    return-object p0
.end method

.method public getDialogPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setPageMargins(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object p0

    return-object p0
.end method

.method public getDialogPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setPrintOptions(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    return-object p0
.end method

.method public getDialogProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetProtection(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    return-object p0
.end method

.method public getDialogRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDialogSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetFormatPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    return-object p0
.end method

.method public getDialogSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    return-object p0
.end method

.method public getDialogSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetViews(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->addNewSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object p0

    return-object p0
.end method
