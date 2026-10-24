.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;",
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

    const-string v2, "ctsheetview0f43type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;
.end method

.method public abstract addNewPivotSelection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;
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

.method public abstract getColorId()J
.end method

.method public abstract getDefaultGridColor()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getPane()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;
.end method

.method public abstract getPivotSelectionArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;
.end method

.method public abstract getPivotSelectionArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;
.end method

.method public abstract getPivotSelectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRightToLeft()Z
.end method

.method public abstract getSelectionArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
.end method

.method public abstract getSelectionArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
.end method

.method public abstract getSelectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShowFormulas()Z
.end method

.method public abstract getShowGridLines()Z
.end method

.method public abstract getShowOutlineSymbols()Z
.end method

.method public abstract getShowRowColHeaders()Z
.end method

.method public abstract getShowRuler()Z
.end method

.method public abstract getShowWhiteSpace()Z
.end method

.method public abstract getShowZeros()Z
.end method

.method public abstract getTabSelected()Z
.end method

.method public abstract getTopLeftCell()Ljava/lang/String;
.end method

.method public abstract getView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType$Enum;
.end method

.method public abstract getWindowProtection()Z
.end method

.method public abstract getWorkbookViewId()J
.end method

.method public abstract getZoomScale()J
.end method

.method public abstract getZoomScaleNormal()J
.end method

.method public abstract getZoomScalePageLayoutView()J
.end method

.method public abstract getZoomScaleSheetLayoutView()J
.end method

.method public abstract insertNewPivotSelection(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;
.end method

.method public abstract insertNewSelection(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetColorId()Z
.end method

.method public abstract isSetDefaultGridColor()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetPane()Z
.end method

.method public abstract isSetRightToLeft()Z
.end method

.method public abstract isSetShowFormulas()Z
.end method

.method public abstract isSetShowGridLines()Z
.end method

.method public abstract isSetShowOutlineSymbols()Z
.end method

.method public abstract isSetShowRowColHeaders()Z
.end method

.method public abstract isSetShowRuler()Z
.end method

.method public abstract isSetShowWhiteSpace()Z
.end method

.method public abstract isSetShowZeros()Z
.end method

.method public abstract isSetTabSelected()Z
.end method

.method public abstract isSetTopLeftCell()Z
.end method

.method public abstract isSetView()Z
.end method

.method public abstract isSetWindowProtection()Z
.end method

.method public abstract isSetZoomScale()Z
.end method

.method public abstract isSetZoomScaleNormal()Z
.end method

.method public abstract isSetZoomScalePageLayoutView()Z
.end method

.method public abstract isSetZoomScaleSheetLayoutView()Z
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

.method public abstract removePivotSelection(I)V
.end method

.method public abstract removeSelection(I)V
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

.method public abstract setColorId(J)V
.end method

.method public abstract setDefaultGridColor(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPane(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPane;)V
.end method

.method public abstract setPivotSelectionArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;)V
.end method

.method public abstract setPivotSelectionArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotSelection;)V
.end method

.method public abstract setRightToLeft(Z)V
.end method

.method public abstract setSelectionArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;)V
.end method

.method public abstract setSelectionArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSelection;)V
.end method

.method public abstract setShowFormulas(Z)V
.end method

.method public abstract setShowGridLines(Z)V
.end method

.method public abstract setShowOutlineSymbols(Z)V
.end method

.method public abstract setShowRowColHeaders(Z)V
.end method

.method public abstract setShowRuler(Z)V
.end method

.method public abstract setShowWhiteSpace(Z)V
.end method

.method public abstract setShowZeros(Z)V
.end method

.method public abstract setTabSelected(Z)V
.end method

.method public abstract setTopLeftCell(Ljava/lang/String;)V
.end method

.method public abstract setView(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType$Enum;)V
.end method

.method public abstract setWindowProtection(Z)V
.end method

.method public abstract setWorkbookViewId(J)V
.end method

.method public abstract setZoomScale(J)V
.end method

.method public abstract setZoomScaleNormal(J)V
.end method

.method public abstract setZoomScalePageLayoutView(J)V
.end method

.method public abstract setZoomScaleSheetLayoutView(J)V
.end method

.method public abstract sizeOfPivotSelectionArray()I
.end method

.method public abstract sizeOfSelectionArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetColorId()V
.end method

.method public abstract unsetDefaultGridColor()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetPane()V
.end method

.method public abstract unsetRightToLeft()V
.end method

.method public abstract unsetShowFormulas()V
.end method

.method public abstract unsetShowGridLines()V
.end method

.method public abstract unsetShowOutlineSymbols()V
.end method

.method public abstract unsetShowRowColHeaders()V
.end method

.method public abstract unsetShowRuler()V
.end method

.method public abstract unsetShowWhiteSpace()V
.end method

.method public abstract unsetShowZeros()V
.end method

.method public abstract unsetTabSelected()V
.end method

.method public abstract unsetTopLeftCell()V
.end method

.method public abstract unsetView()V
.end method

.method public abstract unsetWindowProtection()V
.end method

.method public abstract unsetZoomScale()V
.end method

.method public abstract unsetZoomScaleNormal()V
.end method

.method public abstract unsetZoomScalePageLayoutView()V
.end method

.method public abstract unsetZoomScaleSheetLayoutView()V
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

.method public abstract xgetDefaultGridColor()Li5/m0;
.end method

.method public abstract xgetRightToLeft()Li5/m0;
.end method

.method public abstract xgetShowFormulas()Li5/m0;
.end method

.method public abstract xgetShowGridLines()Li5/m0;
.end method

.method public abstract xgetShowOutlineSymbols()Li5/m0;
.end method

.method public abstract xgetShowRowColHeaders()Li5/m0;
.end method

.method public abstract xgetShowRuler()Li5/m0;
.end method

.method public abstract xgetShowWhiteSpace()Li5/m0;
.end method

.method public abstract xgetShowZeros()Li5/m0;
.end method

.method public abstract xgetTabSelected()Li5/m0;
.end method

.method public abstract xgetTopLeftCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;
.end method

.method public abstract xgetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType;
.end method

.method public abstract xgetWindowProtection()Li5/m0;
.end method

.method public abstract xgetWorkbookViewId()Li5/l2;
.end method

.method public abstract xgetZoomScale()Li5/l2;
.end method

.method public abstract xgetZoomScaleNormal()Li5/l2;
.end method

.method public abstract xgetZoomScalePageLayoutView()Li5/l2;
.end method

.method public abstract xgetZoomScaleSheetLayoutView()Li5/l2;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetColorId(Li5/l2;)V
.end method

.method public abstract xsetDefaultGridColor(Li5/m0;)V
.end method

.method public abstract xsetRightToLeft(Li5/m0;)V
.end method

.method public abstract xsetShowFormulas(Li5/m0;)V
.end method

.method public abstract xsetShowGridLines(Li5/m0;)V
.end method

.method public abstract xsetShowOutlineSymbols(Li5/m0;)V
.end method

.method public abstract xsetShowRowColHeaders(Li5/m0;)V
.end method

.method public abstract xsetShowRuler(Li5/m0;)V
.end method

.method public abstract xsetShowWhiteSpace(Li5/m0;)V
.end method

.method public abstract xsetShowZeros(Li5/m0;)V
.end method

.method public abstract xsetTabSelected(Li5/m0;)V
.end method

.method public abstract xsetTopLeftCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellRef;)V
.end method

.method public abstract xsetView(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetViewType;)V
.end method

.method public abstract xsetWindowProtection(Li5/m0;)V
.end method

.method public abstract xsetWorkbookViewId(Li5/l2;)V
.end method

.method public abstract xsetZoomScale(Li5/l2;)V
.end method

.method public abstract xsetZoomScaleNormal(Li5/l2;)V
.end method

.method public abstract xsetZoomScalePageLayoutView(Li5/l2;)V
.end method

.method public abstract xsetZoomScaleSheetLayoutView(Li5/l2;)V
.end method
