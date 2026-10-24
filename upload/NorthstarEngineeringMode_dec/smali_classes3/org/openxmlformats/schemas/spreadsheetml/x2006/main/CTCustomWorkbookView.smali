.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomWorkbookView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomWorkbookView;",
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

    const-string v2, "ctcustomworkbookview31d9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomWorkbookView;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomWorkbookView;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
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

.method public abstract getActiveSheetId()J
.end method

.method public abstract getAutoUpdate()Z
.end method

.method public abstract getChangesSavedWin()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getIncludeHiddenRowCol()Z
.end method

.method public abstract getIncludePrintSettings()Z
.end method

.method public abstract getMaximized()Z
.end method

.method public abstract getMergeInterval()J
.end method

.method public abstract getMinimized()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOnlySync()Z
.end method

.method public abstract getPersonalView()Z
.end method

.method public abstract getShowComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;
.end method

.method public abstract getShowFormulaBar()Z
.end method

.method public abstract getShowHorizontalScroll()Z
.end method

.method public abstract getShowObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects$Enum;
.end method

.method public abstract getShowSheetTabs()Z
.end method

.method public abstract getShowStatusbar()Z
.end method

.method public abstract getShowVerticalScroll()Z
.end method

.method public abstract getTabRatio()J
.end method

.method public abstract getWindowHeight()J
.end method

.method public abstract getWindowWidth()J
.end method

.method public abstract getXWindow()I
.end method

.method public abstract getYWindow()I
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAutoUpdate()Z
.end method

.method public abstract isSetChangesSavedWin()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetIncludeHiddenRowCol()Z
.end method

.method public abstract isSetIncludePrintSettings()Z
.end method

.method public abstract isSetMaximized()Z
.end method

.method public abstract isSetMergeInterval()Z
.end method

.method public abstract isSetMinimized()Z
.end method

.method public abstract isSetOnlySync()Z
.end method

.method public abstract isSetPersonalView()Z
.end method

.method public abstract isSetShowComments()Z
.end method

.method public abstract isSetShowFormulaBar()Z
.end method

.method public abstract isSetShowHorizontalScroll()Z
.end method

.method public abstract isSetShowObjects()Z
.end method

.method public abstract isSetShowSheetTabs()Z
.end method

.method public abstract isSetShowStatusbar()Z
.end method

.method public abstract isSetShowVerticalScroll()Z
.end method

.method public abstract isSetTabRatio()Z
.end method

.method public abstract isSetXWindow()Z
.end method

.method public abstract isSetYWindow()Z
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

.method public abstract setActiveSheetId(J)V
.end method

.method public abstract setAutoUpdate(Z)V
.end method

.method public abstract setChangesSavedWin(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setGuid(Ljava/lang/String;)V
.end method

.method public abstract setIncludeHiddenRowCol(Z)V
.end method

.method public abstract setIncludePrintSettings(Z)V
.end method

.method public abstract setMaximized(Z)V
.end method

.method public abstract setMergeInterval(J)V
.end method

.method public abstract setMinimized(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOnlySync(Z)V
.end method

.method public abstract setPersonalView(Z)V
.end method

.method public abstract setShowComments(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments$Enum;)V
.end method

.method public abstract setShowFormulaBar(Z)V
.end method

.method public abstract setShowHorizontalScroll(Z)V
.end method

.method public abstract setShowObjects(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects$Enum;)V
.end method

.method public abstract setShowSheetTabs(Z)V
.end method

.method public abstract setShowStatusbar(Z)V
.end method

.method public abstract setShowVerticalScroll(Z)V
.end method

.method public abstract setTabRatio(J)V
.end method

.method public abstract setWindowHeight(J)V
.end method

.method public abstract setWindowWidth(J)V
.end method

.method public abstract setXWindow(I)V
.end method

.method public abstract setYWindow(I)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAutoUpdate()V
.end method

.method public abstract unsetChangesSavedWin()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetIncludeHiddenRowCol()V
.end method

.method public abstract unsetIncludePrintSettings()V
.end method

.method public abstract unsetMaximized()V
.end method

.method public abstract unsetMergeInterval()V
.end method

.method public abstract unsetMinimized()V
.end method

.method public abstract unsetOnlySync()V
.end method

.method public abstract unsetPersonalView()V
.end method

.method public abstract unsetShowComments()V
.end method

.method public abstract unsetShowFormulaBar()V
.end method

.method public abstract unsetShowHorizontalScroll()V
.end method

.method public abstract unsetShowObjects()V
.end method

.method public abstract unsetShowSheetTabs()V
.end method

.method public abstract unsetShowStatusbar()V
.end method

.method public abstract unsetShowVerticalScroll()V
.end method

.method public abstract unsetTabRatio()V
.end method

.method public abstract unsetXWindow()V
.end method

.method public abstract unsetYWindow()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetActiveSheetId()Li5/l2;
.end method

.method public abstract xgetAutoUpdate()Li5/m0;
.end method

.method public abstract xgetChangesSavedWin()Li5/m0;
.end method

.method public abstract xgetGuid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetIncludeHiddenRowCol()Li5/m0;
.end method

.method public abstract xgetIncludePrintSettings()Li5/m0;
.end method

.method public abstract xgetMaximized()Li5/m0;
.end method

.method public abstract xgetMergeInterval()Li5/l2;
.end method

.method public abstract xgetMinimized()Li5/m0;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOnlySync()Li5/m0;
.end method

.method public abstract xgetPersonalView()Li5/m0;
.end method

.method public abstract xgetShowComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments;
.end method

.method public abstract xgetShowFormulaBar()Li5/m0;
.end method

.method public abstract xgetShowHorizontalScroll()Li5/m0;
.end method

.method public abstract xgetShowObjects()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects;
.end method

.method public abstract xgetShowSheetTabs()Li5/m0;
.end method

.method public abstract xgetShowStatusbar()Li5/m0;
.end method

.method public abstract xgetShowVerticalScroll()Li5/m0;
.end method

.method public abstract xgetTabRatio()Li5/l2;
.end method

.method public abstract xgetWindowHeight()Li5/l2;
.end method

.method public abstract xgetWindowWidth()Li5/l2;
.end method

.method public abstract xgetXWindow()Li5/l1;
.end method

.method public abstract xgetYWindow()Li5/l1;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetActiveSheetId(Li5/l2;)V
.end method

.method public abstract xsetAutoUpdate(Li5/m0;)V
.end method

.method public abstract xsetChangesSavedWin(Li5/m0;)V
.end method

.method public abstract xsetGuid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetIncludeHiddenRowCol(Li5/m0;)V
.end method

.method public abstract xsetIncludePrintSettings(Li5/m0;)V
.end method

.method public abstract xsetMaximized(Li5/m0;)V
.end method

.method public abstract xsetMergeInterval(Li5/l2;)V
.end method

.method public abstract xsetMinimized(Li5/m0;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOnlySync(Li5/m0;)V
.end method

.method public abstract xsetPersonalView(Li5/m0;)V
.end method

.method public abstract xsetShowComments(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STComments;)V
.end method

.method public abstract xsetShowFormulaBar(Li5/m0;)V
.end method

.method public abstract xsetShowHorizontalScroll(Li5/m0;)V
.end method

.method public abstract xsetShowObjects(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STObjects;)V
.end method

.method public abstract xsetShowSheetTabs(Li5/m0;)V
.end method

.method public abstract xsetShowStatusbar(Li5/m0;)V
.end method

.method public abstract xsetShowVerticalScroll(Li5/m0;)V
.end method

.method public abstract xsetTabRatio(Li5/l2;)V
.end method

.method public abstract xsetWindowHeight(Li5/l2;)V
.end method

.method public abstract xsetWindowWidth(Li5/l2;)V
.end method

.method public abstract xsetXWindow(Li5/l1;)V
.end method

.method public abstract xsetYWindow(Li5/l1;)V
.end method
