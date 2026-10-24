.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;",
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

    const-string v2, "ctbookviewf677type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->type:Li5/c0;

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

.method public abstract getActiveTab()J
.end method

.method public abstract getAutoFilterDateGrouping()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFirstSheet()J
.end method

.method public abstract getMinimized()Z
.end method

.method public abstract getShowHorizontalScroll()Z
.end method

.method public abstract getShowSheetTabs()Z
.end method

.method public abstract getShowVerticalScroll()Z
.end method

.method public abstract getTabRatio()J
.end method

.method public abstract getVisibility()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVisibility$Enum;
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

.method public abstract isSetActiveTab()Z
.end method

.method public abstract isSetAutoFilterDateGrouping()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFirstSheet()Z
.end method

.method public abstract isSetMinimized()Z
.end method

.method public abstract isSetShowHorizontalScroll()Z
.end method

.method public abstract isSetShowSheetTabs()Z
.end method

.method public abstract isSetShowVerticalScroll()Z
.end method

.method public abstract isSetTabRatio()Z
.end method

.method public abstract isSetVisibility()Z
.end method

.method public abstract isSetWindowHeight()Z
.end method

.method public abstract isSetWindowWidth()Z
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

.method public abstract setActiveTab(J)V
.end method

.method public abstract setAutoFilterDateGrouping(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFirstSheet(J)V
.end method

.method public abstract setMinimized(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setShowHorizontalScroll(Z)V
.end method

.method public abstract setShowSheetTabs(Z)V
.end method

.method public abstract setShowVerticalScroll(Z)V
.end method

.method public abstract setTabRatio(J)V
.end method

.method public abstract setVisibility(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVisibility$Enum;)V
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

.method public abstract unsetActiveTab()V
.end method

.method public abstract unsetAutoFilterDateGrouping()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFirstSheet()V
.end method

.method public abstract unsetMinimized()V
.end method

.method public abstract unsetShowHorizontalScroll()V
.end method

.method public abstract unsetShowSheetTabs()V
.end method

.method public abstract unsetShowVerticalScroll()V
.end method

.method public abstract unsetTabRatio()V
.end method

.method public abstract unsetVisibility()V
.end method

.method public abstract unsetWindowHeight()V
.end method

.method public abstract unsetWindowWidth()V
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

.method public abstract xgetActiveTab()Li5/l2;
.end method

.method public abstract xgetAutoFilterDateGrouping()Li5/m0;
.end method

.method public abstract xgetFirstSheet()Li5/l2;
.end method

.method public abstract xgetMinimized()Li5/m0;
.end method

.method public abstract xgetShowHorizontalScroll()Li5/m0;
.end method

.method public abstract xgetShowSheetTabs()Li5/m0;
.end method

.method public abstract xgetShowVerticalScroll()Li5/m0;
.end method

.method public abstract xgetTabRatio()Li5/l2;
.end method

.method public abstract xgetVisibility()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVisibility;
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

.method public abstract xsetActiveTab(Li5/l2;)V
.end method

.method public abstract xsetAutoFilterDateGrouping(Li5/m0;)V
.end method

.method public abstract xsetFirstSheet(Li5/l2;)V
.end method

.method public abstract xsetMinimized(Li5/m0;)V
.end method

.method public abstract xsetShowHorizontalScroll(Li5/m0;)V
.end method

.method public abstract xsetShowSheetTabs(Li5/m0;)V
.end method

.method public abstract xsetShowVerticalScroll(Li5/m0;)V
.end method

.method public abstract xsetTabRatio(Li5/l2;)V
.end method

.method public abstract xsetVisibility(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVisibility;)V
.end method

.method public abstract xsetWindowHeight(Li5/l2;)V
.end method

.method public abstract xsetWindowWidth(Li5/l2;)V
.end method

.method public abstract xsetXWindow(Li5/l1;)V
.end method

.method public abstract xsetYWindow(Li5/l1;)V
.end method
