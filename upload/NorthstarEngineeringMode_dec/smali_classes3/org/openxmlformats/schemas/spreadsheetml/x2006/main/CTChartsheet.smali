.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;",
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

    const-string v2, "ctchartsheetf68atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheet;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewCustomSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomChartsheetViews;
.end method

.method public abstract addNewDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;
.end method

.method public abstract addNewDrawingHF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawingHF;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
.end method

.method public abstract addNewLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
.end method

.method public abstract addNewLegacyDrawingHF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
.end method

.method public abstract addNewPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
.end method

.method public abstract addNewPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCsPageSetup;
.end method

.method public abstract addNewPicture()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetBackgroundPicture;
.end method

.method public abstract addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetPr;
.end method

.method public abstract addNewSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetProtection;
.end method

.method public abstract addNewSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetViews;
.end method

.method public abstract addNewWebPublishItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishItems;
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

.method public abstract getCustomSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomChartsheetViews;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;
.end method

.method public abstract getDrawingHF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawingHF;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
.end method

.method public abstract getLegacyDrawing()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
.end method

.method public abstract getLegacyDrawingHF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;
.end method

.method public abstract getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
.end method

.method public abstract getPageSetup()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCsPageSetup;
.end method

.method public abstract getPicture()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetBackgroundPicture;
.end method

.method public abstract getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetPr;
.end method

.method public abstract getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetProtection;
.end method

.method public abstract getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetViews;
.end method

.method public abstract getWebPublishItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishItems;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetCustomSheetViews()Z
.end method

.method public abstract isSetDrawingHF()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHeaderFooter()Z
.end method

.method public abstract isSetLegacyDrawing()Z
.end method

.method public abstract isSetLegacyDrawingHF()Z
.end method

.method public abstract isSetPageMargins()Z
.end method

.method public abstract isSetPageSetup()Z
.end method

.method public abstract isSetPicture()Z
.end method

.method public abstract isSetSheetPr()Z
.end method

.method public abstract isSetSheetProtection()Z
.end method

.method public abstract isSetWebPublishItems()Z
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

.method public abstract setCustomSheetViews(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomChartsheetViews;)V
.end method

.method public abstract setDrawing(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawing;)V
.end method

.method public abstract setDrawingHF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawingHF;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setHeaderFooter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V
.end method

.method public abstract setLegacyDrawing(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;)V
.end method

.method public abstract setLegacyDrawingHF(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLegacyDrawing;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPageMargins(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;)V
.end method

.method public abstract setPageSetup(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCsPageSetup;)V
.end method

.method public abstract setPicture(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetBackgroundPicture;)V
.end method

.method public abstract setSheetPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetPr;)V
.end method

.method public abstract setSheetProtection(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetProtection;)V
.end method

.method public abstract setSheetViews(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetViews;)V
.end method

.method public abstract setWebPublishItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishItems;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetCustomSheetViews()V
.end method

.method public abstract unsetDrawingHF()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHeaderFooter()V
.end method

.method public abstract unsetLegacyDrawing()V
.end method

.method public abstract unsetLegacyDrawingHF()V
.end method

.method public abstract unsetPageMargins()V
.end method

.method public abstract unsetPageSetup()V
.end method

.method public abstract unsetPicture()V
.end method

.method public abstract unsetSheetPr()V
.end method

.method public abstract unsetSheetProtection()V
.end method

.method public abstract unsetWebPublishItems()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method
