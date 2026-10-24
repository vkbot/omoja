.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;",
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

    const-string v2, "cttable736dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTable;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewSortState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;
.end method

.method public abstract addNewTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;
.end method

.method public abstract addNewTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;
.end method

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

.method public abstract getAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;
.end method

.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getConnectionId()J
.end method

.method public abstract getDataCellStyle()Ljava/lang/String;
.end method

.method public abstract getDataDxfId()J
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getHeaderRowBorderDxfId()J
.end method

.method public abstract getHeaderRowCellStyle()Ljava/lang/String;
.end method

.method public abstract getHeaderRowCount()J
.end method

.method public abstract getHeaderRowDxfId()J
.end method

.method public abstract getId()J
.end method

.method public abstract getInsertRow()Z
.end method

.method public abstract getInsertRowShift()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPublished()Z
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getSortState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;
.end method

.method public abstract getTableBorderDxfId()J
.end method

.method public abstract getTableColumns()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;
.end method

.method public abstract getTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;
.end method

.method public abstract getTableType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;
.end method

.method public abstract getTotalsRowBorderDxfId()J
.end method

.method public abstract getTotalsRowCellStyle()Ljava/lang/String;
.end method

.method public abstract getTotalsRowCount()J
.end method

.method public abstract getTotalsRowDxfId()J
.end method

.method public abstract getTotalsRowShown()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAutoFilter()Z
.end method

.method public abstract isSetComment()Z
.end method

.method public abstract isSetConnectionId()Z
.end method

.method public abstract isSetDataCellStyle()Z
.end method

.method public abstract isSetDataDxfId()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHeaderRowBorderDxfId()Z
.end method

.method public abstract isSetHeaderRowCellStyle()Z
.end method

.method public abstract isSetHeaderRowCount()Z
.end method

.method public abstract isSetHeaderRowDxfId()Z
.end method

.method public abstract isSetInsertRow()Z
.end method

.method public abstract isSetInsertRowShift()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetPublished()Z
.end method

.method public abstract isSetSortState()Z
.end method

.method public abstract isSetTableBorderDxfId()Z
.end method

.method public abstract isSetTableStyleInfo()Z
.end method

.method public abstract isSetTableType()Z
.end method

.method public abstract isSetTotalsRowBorderDxfId()Z
.end method

.method public abstract isSetTotalsRowCellStyle()Z
.end method

.method public abstract isSetTotalsRowCount()Z
.end method

.method public abstract isSetTotalsRowDxfId()Z
.end method

.method public abstract isSetTotalsRowShown()Z
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

.method public abstract setAutoFilter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;)V
.end method

.method public abstract setComment(Ljava/lang/String;)V
.end method

.method public abstract setConnectionId(J)V
.end method

.method public abstract setDataCellStyle(Ljava/lang/String;)V
.end method

.method public abstract setDataDxfId(J)V
.end method

.method public abstract setDisplayName(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setHeaderRowBorderDxfId(J)V
.end method

.method public abstract setHeaderRowCellStyle(Ljava/lang/String;)V
.end method

.method public abstract setHeaderRowCount(J)V
.end method

.method public abstract setHeaderRowDxfId(J)V
.end method

.method public abstract setId(J)V
.end method

.method public abstract setInsertRow(Z)V
.end method

.method public abstract setInsertRowShift(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPublished(Z)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setSortState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;)V
.end method

.method public abstract setTableBorderDxfId(J)V
.end method

.method public abstract setTableColumns(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumns;)V
.end method

.method public abstract setTableStyleInfo(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleInfo;)V
.end method

.method public abstract setTableType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType$Enum;)V
.end method

.method public abstract setTotalsRowBorderDxfId(J)V
.end method

.method public abstract setTotalsRowCellStyle(Ljava/lang/String;)V
.end method

.method public abstract setTotalsRowCount(J)V
.end method

.method public abstract setTotalsRowDxfId(J)V
.end method

.method public abstract setTotalsRowShown(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAutoFilter()V
.end method

.method public abstract unsetComment()V
.end method

.method public abstract unsetConnectionId()V
.end method

.method public abstract unsetDataCellStyle()V
.end method

.method public abstract unsetDataDxfId()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHeaderRowBorderDxfId()V
.end method

.method public abstract unsetHeaderRowCellStyle()V
.end method

.method public abstract unsetHeaderRowCount()V
.end method

.method public abstract unsetHeaderRowDxfId()V
.end method

.method public abstract unsetInsertRow()V
.end method

.method public abstract unsetInsertRowShift()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetPublished()V
.end method

.method public abstract unsetSortState()V
.end method

.method public abstract unsetTableBorderDxfId()V
.end method

.method public abstract unsetTableStyleInfo()V
.end method

.method public abstract unsetTableType()V
.end method

.method public abstract unsetTotalsRowBorderDxfId()V
.end method

.method public abstract unsetTotalsRowCellStyle()V
.end method

.method public abstract unsetTotalsRowCount()V
.end method

.method public abstract unsetTotalsRowDxfId()V
.end method

.method public abstract unsetTotalsRowShown()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetComment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetConnectionId()Li5/l2;
.end method

.method public abstract xgetDataCellStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDataDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetDisplayName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetHeaderRowBorderDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetHeaderRowCellStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetHeaderRowCount()Li5/l2;
.end method

.method public abstract xgetHeaderRowDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetId()Li5/l2;
.end method

.method public abstract xgetInsertRow()Li5/m0;
.end method

.method public abstract xgetInsertRowShift()Li5/m0;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetPublished()Li5/m0;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetTableBorderDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetTableType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;
.end method

.method public abstract xgetTotalsRowBorderDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetTotalsRowCellStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetTotalsRowCount()Li5/l2;
.end method

.method public abstract xgetTotalsRowDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetTotalsRowShown()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetComment(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetConnectionId(Li5/l2;)V
.end method

.method public abstract xsetDataCellStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDataDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetDisplayName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetHeaderRowBorderDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetHeaderRowCellStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetHeaderRowCount(Li5/l2;)V
.end method

.method public abstract xsetHeaderRowDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetId(Li5/l2;)V
.end method

.method public abstract xsetInsertRow(Li5/m0;)V
.end method

.method public abstract xsetInsertRowShift(Li5/m0;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetPublished(Li5/m0;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetTableBorderDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetTableType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableType;)V
.end method

.method public abstract xsetTotalsRowBorderDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetTotalsRowCellStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetTotalsRowCount(Li5/l2;)V
.end method

.method public abstract xsetTotalsRowDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetTotalsRowShown(Li5/m0;)V
.end method
