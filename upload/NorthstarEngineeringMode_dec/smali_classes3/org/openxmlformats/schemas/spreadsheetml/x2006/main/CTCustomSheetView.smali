.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetView;",
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

    const-string v2, "ctcustomsheetview59d2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetView;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomSheetView;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewAutoFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoFilter;
.end method

.method public abstract addNewColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
.end method

.method public abstract addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
.end method

.method public abstract addNewPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;
.end method

.method public abstract addNewPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;
.end method

.method public abstract addNewPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
.end method

.method public abstract addNewRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
.end method

.method public abstract addNewSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
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

.method public abstract getColBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
.end method

.method public abstract getColorId()J
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFilter()Z
.end method

.method public abstract getFilterUnique()Z
.end method

.method public abstract getFitToPage()Z
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
.end method

.method public abstract getHiddenColumns()Z
.end method

.method public abstract getHiddenRows()Z
.end method

.method public abstract getOutlineSymbols()Z
.end method

.method public abstract getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
.end method

.method public abstract getPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;
.end method

.method public abstract getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;
.end method

.method public abstract getPrintArea()Z
.end method

.method public abstract getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
.end method

.method public abstract getRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
.end method

.method public abstract getScale()J
.end method

.method public abstract getSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
.end method

.method public abstract getShowAutoFilter()Z
.end method

.method public abstract getShowFormulas()Z
.end method

.method public abstract getShowGridLines()Z
.end method

.method public abstract getShowPageBreaks()Z
.end method

.method public abstract getShowRowCol()Z
.end method

.method public abstract getShowRuler()Z
.end method

.method public abstract getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;
.end method

.method public abstract getTopLeftCell()Ljava/lang/String;
.end method

.method public abstract getView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType$Enum;
.end method

.method public abstract getZeroValues()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAutoFilter()Z
.end method

.method public abstract isSetColBreaks()Z
.end method

.method public abstract isSetColorId()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFilter()Z
.end method

.method public abstract isSetFilterUnique()Z
.end method

.method public abstract isSetFitToPage()Z
.end method

.method public abstract isSetHeaderFooter()Z
.end method

.method public abstract isSetHiddenColumns()Z
.end method

.method public abstract isSetHiddenRows()Z
.end method

.method public abstract isSetOutlineSymbols()Z
.end method

.method public abstract isSetPageMargins()Z
.end method

.method public abstract isSetPageSetup()Z
.end method

.method public abstract isSetPane()Z
.end method

.method public abstract isSetPrintArea()Z
.end method

.method public abstract isSetPrintOptions()Z
.end method

.method public abstract isSetRowBreaks()Z
.end method

.method public abstract isSetScale()Z
.end method

.method public abstract isSetSelection()Z
.end method

.method public abstract isSetShowAutoFilter()Z
.end method

.method public abstract isSetShowFormulas()Z
.end method

.method public abstract isSetShowGridLines()Z
.end method

.method public abstract isSetShowPageBreaks()Z
.end method

.method public abstract isSetShowRowCol()Z
.end method

.method public abstract isSetShowRuler()Z
.end method

.method public abstract isSetState()Z
.end method

.method public abstract isSetTopLeftCell()Z
.end method

.method public abstract isSetView()Z
.end method

.method public abstract isSetZeroValues()Z
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

.method public abstract setColBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V
.end method

.method public abstract setColorId(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFilter(Z)V
.end method

.method public abstract setFilterUnique(Z)V
.end method

.method public abstract setFitToPage(Z)V
.end method

.method public abstract setGuid(Ljava/lang/String;)V
.end method

.method public abstract setHeaderFooter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V
.end method

.method public abstract setHiddenColumns(Z)V
.end method

.method public abstract setHiddenRows(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOutlineSymbols(Z)V
.end method

.method public abstract setPageMargins(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;)V
.end method

.method public abstract setPageSetup(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;)V
.end method

.method public abstract setPane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;)V
.end method

.method public abstract setPrintArea(Z)V
.end method

.method public abstract setPrintOptions(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;)V
.end method

.method public abstract setRowBreaks(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;)V
.end method

.method public abstract setScale(J)V
.end method

.method public abstract setSelection(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;)V
.end method

.method public abstract setShowAutoFilter(Z)V
.end method

.method public abstract setShowFormulas(Z)V
.end method

.method public abstract setShowGridLines(Z)V
.end method

.method public abstract setShowPageBreaks(Z)V
.end method

.method public abstract setShowRowCol(Z)V
.end method

.method public abstract setShowRuler(Z)V
.end method

.method public abstract setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;)V
.end method

.method public abstract setTopLeftCell(Ljava/lang/String;)V
.end method

.method public abstract setView(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType$Enum;)V
.end method

.method public abstract setZeroValues(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAutoFilter()V
.end method

.method public abstract unsetColBreaks()V
.end method

.method public abstract unsetColorId()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFilter()V
.end method

.method public abstract unsetFilterUnique()V
.end method

.method public abstract unsetFitToPage()V
.end method

.method public abstract unsetHeaderFooter()V
.end method

.method public abstract unsetHiddenColumns()V
.end method

.method public abstract unsetHiddenRows()V
.end method

.method public abstract unsetOutlineSymbols()V
.end method

.method public abstract unsetPageMargins()V
.end method

.method public abstract unsetPageSetup()V
.end method

.method public abstract unsetPane()V
.end method

.method public abstract unsetPrintArea()V
.end method

.method public abstract unsetPrintOptions()V
.end method

.method public abstract unsetRowBreaks()V
.end method

.method public abstract unsetScale()V
.end method

.method public abstract unsetSelection()V
.end method

.method public abstract unsetShowAutoFilter()V
.end method

.method public abstract unsetShowFormulas()V
.end method

.method public abstract unsetShowGridLines()V
.end method

.method public abstract unsetShowPageBreaks()V
.end method

.method public abstract unsetShowRowCol()V
.end method

.method public abstract unsetShowRuler()V
.end method

.method public abstract unsetState()V
.end method

.method public abstract unsetTopLeftCell()V
.end method

.method public abstract unsetView()V
.end method

.method public abstract unsetZeroValues()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetColorId()Li5/l2;
.end method

.method public abstract xgetFilter()Li5/m0;
.end method

.method public abstract xgetFilterUnique()Li5/m0;
.end method

.method public abstract xgetFitToPage()Li5/m0;
.end method

.method public abstract xgetGuid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetHiddenColumns()Li5/m0;
.end method

.method public abstract xgetHiddenRows()Li5/m0;
.end method

.method public abstract xgetOutlineSymbols()Li5/m0;
.end method

.method public abstract xgetPrintArea()Li5/m0;
.end method

.method public abstract xgetScale()Li5/l2;
.end method

.method public abstract xgetShowAutoFilter()Li5/m0;
.end method

.method public abstract xgetShowFormulas()Li5/m0;
.end method

.method public abstract xgetShowGridLines()Li5/m0;
.end method

.method public abstract xgetShowPageBreaks()Li5/m0;
.end method

.method public abstract xgetShowRowCol()Li5/m0;
.end method

.method public abstract xgetShowRuler()Li5/m0;
.end method

.method public abstract xgetState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;
.end method

.method public abstract xgetTopLeftCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;
.end method

.method public abstract xgetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType;
.end method

.method public abstract xgetZeroValues()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetColorId(Li5/l2;)V
.end method

.method public abstract xsetFilter(Li5/m0;)V
.end method

.method public abstract xsetFilterUnique(Li5/m0;)V
.end method

.method public abstract xsetFitToPage(Li5/m0;)V
.end method

.method public abstract xsetGuid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetHiddenColumns(Li5/m0;)V
.end method

.method public abstract xsetHiddenRows(Li5/m0;)V
.end method

.method public abstract xsetOutlineSymbols(Li5/m0;)V
.end method

.method public abstract xsetPrintArea(Li5/m0;)V
.end method

.method public abstract xsetScale(Li5/l2;)V
.end method

.method public abstract xsetShowAutoFilter(Li5/m0;)V
.end method

.method public abstract xsetShowFormulas(Li5/m0;)V
.end method

.method public abstract xsetShowGridLines(Li5/m0;)V
.end method

.method public abstract xsetShowPageBreaks(Li5/m0;)V
.end method

.method public abstract xsetShowRowCol(Li5/m0;)V
.end method

.method public abstract xsetShowRuler(Li5/m0;)V
.end method

.method public abstract xsetState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;)V
.end method

.method public abstract xsetTopLeftCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;)V
.end method

.method public abstract xsetView(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType;)V
.end method

.method public abstract xsetZeroValues(Li5/m0;)V
.end method
