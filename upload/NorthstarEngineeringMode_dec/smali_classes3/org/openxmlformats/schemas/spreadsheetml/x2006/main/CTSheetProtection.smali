.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctsheetprotection22f7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract synthetic changeType(Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic compareTo(Ljava/lang/Object;)I
.end method

.method public abstract synthetic compareValue(Lorg/apache/xmlbeans/XmlObject;)I
.end method

.method public abstract synthetic copy()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic copy(Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic documentProperties()Li5/t0;
.end method

.method public abstract synthetic dump()V
.end method

.method public abstract synthetic execQuery(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic execQuery(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract getAutoFilter()Z
.end method

.method public abstract getDeleteColumns()Z
.end method

.method public abstract getDeleteRows()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getFormatCells()Z
.end method

.method public abstract getFormatColumns()Z
.end method

.method public abstract getFormatRows()Z
.end method

.method public abstract getHashValue()[B
.end method

.method public abstract getInsertColumns()Z
.end method

.method public abstract getInsertHyperlinks()Z
.end method

.method public abstract getInsertRows()Z
.end method

.method public abstract getObjects()Z
.end method

.method public abstract getPassword()[B
.end method

.method public abstract getPivotTables()Z
.end method

.method public abstract getSaltValue()[B
.end method

.method public abstract getScenarios()Z
.end method

.method public abstract getSelectLockedCells()Z
.end method

.method public abstract getSelectUnlockedCells()Z
.end method

.method public abstract getSheet()Z
.end method

.method public abstract getSort()Z
.end method

.method public abstract getSpinCount()J
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAlgorithmName()Z
.end method

.method public abstract isSetAutoFilter()Z
.end method

.method public abstract isSetDeleteColumns()Z
.end method

.method public abstract isSetDeleteRows()Z
.end method

.method public abstract isSetFormatCells()Z
.end method

.method public abstract isSetFormatColumns()Z
.end method

.method public abstract isSetFormatRows()Z
.end method

.method public abstract isSetHashValue()Z
.end method

.method public abstract isSetInsertColumns()Z
.end method

.method public abstract isSetInsertHyperlinks()Z
.end method

.method public abstract isSetInsertRows()Z
.end method

.method public abstract isSetObjects()Z
.end method

.method public abstract isSetPassword()Z
.end method

.method public abstract isSetPivotTables()Z
.end method

.method public abstract isSetSaltValue()Z
.end method

.method public abstract isSetScenarios()Z
.end method

.method public abstract isSetSelectLockedCells()Z
.end method

.method public abstract isSetSelectUnlockedCells()Z
.end method

.method public abstract isSetSheet()Z
.end method

.method public abstract isSetSort()Z
.end method

.method public abstract isSetSpinCount()Z
.end method

.method public abstract synthetic monitor()Ljava/lang/Object;
.end method

.method public abstract synthetic newCursor()Li5/p0;
.end method

.method public abstract synthetic newDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract synthetic newDomNode(Li5/z1;)Lorg/w3c/dom/Node;
.end method

.method public abstract synthetic newInputStream()Ljava/io/InputStream;
.end method

.method public abstract synthetic newInputStream(Li5/z1;)Ljava/io/InputStream;
.end method

.method public abstract synthetic newReader()Ljava/io/Reader;
.end method

.method public abstract synthetic newReader(Li5/z1;)Ljava/io/Reader;
.end method

.method public abstract synthetic newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
.end method

.method public abstract synthetic newXMLStreamReader(Li5/z1;)Ljavax/xml/stream/XMLStreamReader;
.end method

.method public abstract synthetic save(Ljava/io/File;)V
.end method

.method public abstract synthetic save(Ljava/io/File;Li5/z1;)V
.end method

.method public abstract synthetic save(Ljava/io/OutputStream;)V
.end method

.method public abstract synthetic save(Ljava/io/OutputStream;Li5/z1;)V
.end method

.method public abstract synthetic save(Ljava/io/Writer;)V
.end method

.method public abstract synthetic save(Ljava/io/Writer;Li5/z1;)V
.end method

.method public abstract synthetic save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
.end method

.method public abstract synthetic save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Li5/z1;)V
.end method

.method public abstract synthetic schemaType()Li5/c0;
.end method

.method public abstract synthetic selectAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectAttribute(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectAttributes(Li5/k;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Li5/k;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectChildren(Ljavax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic selectPath(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract setAlgorithmName(Ljava/lang/String;)V
.end method

.method public abstract setAutoFilter(Z)V
.end method

.method public abstract setDeleteColumns(Z)V
.end method

.method public abstract setDeleteRows(Z)V
.end method

.method public abstract setFormatCells(Z)V
.end method

.method public abstract setFormatColumns(Z)V
.end method

.method public abstract setFormatRows(Z)V
.end method

.method public abstract setHashValue([B)V
.end method

.method public abstract setInsertColumns(Z)V
.end method

.method public abstract setInsertHyperlinks(Z)V
.end method

.method public abstract setInsertRows(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setObjects(Z)V
.end method

.method public abstract setPassword([B)V
.end method

.method public abstract setPivotTables(Z)V
.end method

.method public abstract setSaltValue([B)V
.end method

.method public abstract setScenarios(Z)V
.end method

.method public abstract setSelectLockedCells(Z)V
.end method

.method public abstract setSelectUnlockedCells(Z)V
.end method

.method public abstract setSheet(Z)V
.end method

.method public abstract setSort(Z)V
.end method

.method public abstract setSpinCount(J)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAlgorithmName()V
.end method

.method public abstract unsetAutoFilter()V
.end method

.method public abstract unsetDeleteColumns()V
.end method

.method public abstract unsetDeleteRows()V
.end method

.method public abstract unsetFormatCells()V
.end method

.method public abstract unsetFormatColumns()V
.end method

.method public abstract unsetFormatRows()V
.end method

.method public abstract unsetHashValue()V
.end method

.method public abstract unsetInsertColumns()V
.end method

.method public abstract unsetInsertHyperlinks()V
.end method

.method public abstract unsetInsertRows()V
.end method

.method public abstract unsetObjects()V
.end method

.method public abstract unsetPassword()V
.end method

.method public abstract unsetPivotTables()V
.end method

.method public abstract unsetSaltValue()V
.end method

.method public abstract unsetScenarios()V
.end method

.method public abstract unsetSelectLockedCells()V
.end method

.method public abstract unsetSelectUnlockedCells()V
.end method

.method public abstract unsetSheet()V
.end method

.method public abstract unsetSort()V
.end method

.method public abstract unsetSpinCount()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAlgorithmName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetAutoFilter()Li5/m0;
.end method

.method public abstract xgetDeleteColumns()Li5/m0;
.end method

.method public abstract xgetDeleteRows()Li5/m0;
.end method

.method public abstract xgetFormatCells()Li5/m0;
.end method

.method public abstract xgetFormatColumns()Li5/m0;
.end method

.method public abstract xgetFormatRows()Li5/m0;
.end method

.method public abstract xgetHashValue()Li5/k0;
.end method

.method public abstract xgetInsertColumns()Li5/m0;
.end method

.method public abstract xgetInsertHyperlinks()Li5/m0;
.end method

.method public abstract xgetInsertRows()Li5/m0;
.end method

.method public abstract xgetObjects()Li5/m0;
.end method

.method public abstract xgetPassword()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;
.end method

.method public abstract xgetPivotTables()Li5/m0;
.end method

.method public abstract xgetSaltValue()Li5/k0;
.end method

.method public abstract xgetScenarios()Li5/m0;
.end method

.method public abstract xgetSelectLockedCells()Li5/m0;
.end method

.method public abstract xgetSelectUnlockedCells()Li5/m0;
.end method

.method public abstract xgetSheet()Li5/m0;
.end method

.method public abstract xgetSort()Li5/m0;
.end method

.method public abstract xgetSpinCount()Li5/l2;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAlgorithmName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetAutoFilter(Li5/m0;)V
.end method

.method public abstract xsetDeleteColumns(Li5/m0;)V
.end method

.method public abstract xsetDeleteRows(Li5/m0;)V
.end method

.method public abstract xsetFormatCells(Li5/m0;)V
.end method

.method public abstract xsetFormatColumns(Li5/m0;)V
.end method

.method public abstract xsetFormatRows(Li5/m0;)V
.end method

.method public abstract xsetHashValue(Li5/k0;)V
.end method

.method public abstract xsetInsertColumns(Li5/m0;)V
.end method

.method public abstract xsetInsertHyperlinks(Li5/m0;)V
.end method

.method public abstract xsetInsertRows(Li5/m0;)V
.end method

.method public abstract xsetObjects(Li5/m0;)V
.end method

.method public abstract xsetPassword(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STUnsignedShortHex;)V
.end method

.method public abstract xsetPivotTables(Li5/m0;)V
.end method

.method public abstract xsetSaltValue(Li5/k0;)V
.end method

.method public abstract xsetScenarios(Li5/m0;)V
.end method

.method public abstract xsetSelectLockedCells(Li5/m0;)V
.end method

.method public abstract xsetSelectUnlockedCells(Li5/m0;)V
.end method

.method public abstract xsetSheet(Li5/m0;)V
.end method

.method public abstract xsetSort(Li5/m0;)V
.end method

.method public abstract xsetSpinCount(Li5/l2;)V
.end method
