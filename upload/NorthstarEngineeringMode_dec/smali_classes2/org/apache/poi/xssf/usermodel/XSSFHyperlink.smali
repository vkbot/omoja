.class public Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Hyperlink;
.implements Lorg/apache/poi/common/Duplicatable;


# instance fields
.field private final _ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

.field private final _externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

.field private _location:Ljava/lang/String;

.field private final _type:Lorg/apache/poi/common/usermodel/HyperlinkType;


# direct methods
.method public constructor <init>(Lorg/apache/poi/common/usermodel/HyperlinkType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 2
    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 2
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    .line 25
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getType()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 26
    iget-object v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 28
    iget-object p1, p1, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/Hyperlink;->getType()Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 30
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/Hyperlink;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 31
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    .line 32
    invoke-interface {p1}, Lorg/apache/poi/common/usermodel/Hyperlink;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setDisplay(Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getFirstColumn()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstColumn(I)V

    .line 34
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getLastColumn()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLastColumn(I)V

    .line 35
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getFirstRow()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setFirstRow(I)V

    .line 36
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Hyperlink;->getLastRow()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLastRow(I)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    if-nez p2, :cond_2

    .line 4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    sget-object p2, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    goto/16 :goto_1

    .line 7
    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 8
    sget-object p1, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto/16 :goto_1

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The hyperlink for cell "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " references relation "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but that didn\'t exist!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    .line 14
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string p2, "http://"

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string p2, "https://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string p2, "ftp://"

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    const-string p2, "mailto:"

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lorg/apache/poi/common/usermodel/HyperlinkType;->EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto :goto_1

    .line 20
    :cond_5
    sget-object p1, Lorg/apache/poi/common/usermodel/HyperlinkType;->FILE:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    goto :goto_1

    .line 21
    :cond_6
    :goto_0
    sget-object p1, Lorg/apache/poi/common/usermodel/HyperlinkType;->URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    :goto_1
    return-void
.end method

.method private buildCellReference(Z)Lorg/apache/poi/ss/util/CellReference;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getRef()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "A1"

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private buildFirstCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildCellReference(Z)Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    return-object p0
.end method

.method private buildLastCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildCellReference(Z)Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    return-object p0
.end method

.method private setCellRange(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->isSingleCell()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Lorg/apache/poi/ss/util/CellReference;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private validate(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink$1;->$SwitchMap$org$apache$poi$common$usermodel$HyperlinkType:[I

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Hyperlink type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    new-instance p0, Ljava/net/URI;

    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Address of hyperlink must be a valid URI"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public copy()Lorg/apache/poi/common/Duplicatable;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/ss/usermodel/Hyperlink;)V

    return-object v0
.end method

.method public generateRelationIfNeeded(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_externalRel:Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->needsRelationToo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/ooxml/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    return-object p0
.end method

.method public getCTHyperlink()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    return-object p0
.end method

.method public getCellRef()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getRef()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirstColumn()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildFirstCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p0

    return p0
.end method

.method public getFirstRow()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildFirstCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p0

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getDisplay()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastColumn()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildLastCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p0

    return p0
.end method

.method public getLastRow()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->buildLastCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p0

    return p0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getLocation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTooltip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->getTooltip()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object p0
.end method

.method public needsRelationToo()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->validate(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_location:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_type:Lorg/apache/poi/common/usermodel/HyperlinkType;

    sget-object v1, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setLocation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCellReference(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    .line 1
    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setRef(Ljava/lang/String;)V

    return-void
.end method

.method public setCellReference(Lorg/apache/poi/ss/util/CellReference;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Ljava/lang/String;)V

    return-void
.end method

.method public setFirstColumn(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastColumn()I

    move-result v0

    if-le p1, v0, :cond_0

    move v0, p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstRow()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastRow()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-static {p1, v1, v0}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellRange(Ljava/lang/String;)V

    return-void
.end method

.method public setFirstRow(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastRow()I

    move-result v0

    if-le p1, v0, :cond_0

    move v0, p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstColumn()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastColumn()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-static {p1, v1, v0}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellRange(Ljava/lang/String;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public setLastColumn(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstColumn()I

    move-result v0

    if-ge p1, v0, :cond_0

    move v0, p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstRow()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastRow()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ":"

    invoke-static {v0, v1, p1}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellRange(Ljava/lang/String;)V

    return-void
.end method

.method public setLastRow(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstRow()I

    move-result v0

    if-ge p1, v0, :cond_0

    move v0, p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getFirstColumn()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getLastColumn()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ":"

    invoke-static {v0, v1, p1}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellRange(Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setLocation(Ljava/lang/String;)V

    return-void
.end method

.method public setTooltip(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->_ctHyperlink:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHyperlink;->setTooltip(Ljava/lang/String;)V

    return-void
.end method
