.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;",
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

    const-string v2, "ctpagesetup534dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetup;->type:Li5/c0;

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

.method public abstract getBlackAndWhite()Z
.end method

.method public abstract getCellComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments$Enum;
.end method

.method public abstract getCopies()J
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getDraft()Z
.end method

.method public abstract getErrors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPrintError$Enum;
.end method

.method public abstract getFirstPageNumber()J
.end method

.method public abstract getFitToHeight()J
.end method

.method public abstract getFitToWidth()J
.end method

.method public abstract getHorizontalDpi()J
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getOrientation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;
.end method

.method public abstract getPageOrder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;
.end method

.method public abstract getPaperHeight()Ljava/lang/String;
.end method

.method public abstract getPaperSize()J
.end method

.method public abstract getPaperWidth()Ljava/lang/String;
.end method

.method public abstract getScale()J
.end method

.method public abstract getUseFirstPageNumber()Z
.end method

.method public abstract getUsePrinterDefaults()Z
.end method

.method public abstract getVerticalDpi()J
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBlackAndWhite()Z
.end method

.method public abstract isSetCellComments()Z
.end method

.method public abstract isSetCopies()Z
.end method

.method public abstract isSetDraft()Z
.end method

.method public abstract isSetErrors()Z
.end method

.method public abstract isSetFirstPageNumber()Z
.end method

.method public abstract isSetFitToHeight()Z
.end method

.method public abstract isSetFitToWidth()Z
.end method

.method public abstract isSetHorizontalDpi()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetOrientation()Z
.end method

.method public abstract isSetPageOrder()Z
.end method

.method public abstract isSetPaperHeight()Z
.end method

.method public abstract isSetPaperSize()Z
.end method

.method public abstract isSetPaperWidth()Z
.end method

.method public abstract isSetScale()Z
.end method

.method public abstract isSetUseFirstPageNumber()Z
.end method

.method public abstract isSetUsePrinterDefaults()Z
.end method

.method public abstract isSetVerticalDpi()Z
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

.method public abstract setBlackAndWhite(Z)V
.end method

.method public abstract setCellComments(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments$Enum;)V
.end method

.method public abstract setCopies(J)V
.end method

.method public abstract setDraft(Z)V
.end method

.method public abstract setErrors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPrintError$Enum;)V
.end method

.method public abstract setFirstPageNumber(J)V
.end method

.method public abstract setFitToHeight(J)V
.end method

.method public abstract setFitToWidth(J)V
.end method

.method public abstract setHorizontalDpi(J)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOrientation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation$Enum;)V
.end method

.method public abstract setPageOrder(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder$Enum;)V
.end method

.method public abstract setPaperHeight(Ljava/lang/String;)V
.end method

.method public abstract setPaperSize(J)V
.end method

.method public abstract setPaperWidth(Ljava/lang/String;)V
.end method

.method public abstract setScale(J)V
.end method

.method public abstract setUseFirstPageNumber(Z)V
.end method

.method public abstract setUsePrinterDefaults(Z)V
.end method

.method public abstract setVerticalDpi(J)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBlackAndWhite()V
.end method

.method public abstract unsetCellComments()V
.end method

.method public abstract unsetCopies()V
.end method

.method public abstract unsetDraft()V
.end method

.method public abstract unsetErrors()V
.end method

.method public abstract unsetFirstPageNumber()V
.end method

.method public abstract unsetFitToHeight()V
.end method

.method public abstract unsetFitToWidth()V
.end method

.method public abstract unsetHorizontalDpi()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetOrientation()V
.end method

.method public abstract unsetPageOrder()V
.end method

.method public abstract unsetPaperHeight()V
.end method

.method public abstract unsetPaperSize()V
.end method

.method public abstract unsetPaperWidth()V
.end method

.method public abstract unsetScale()V
.end method

.method public abstract unsetUseFirstPageNumber()V
.end method

.method public abstract unsetUsePrinterDefaults()V
.end method

.method public abstract unsetVerticalDpi()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetBlackAndWhite()Li5/m0;
.end method

.method public abstract xgetCellComments()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments;
.end method

.method public abstract xgetCopies()Li5/l2;
.end method

.method public abstract xgetDraft()Li5/m0;
.end method

.method public abstract xgetErrors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPrintError;
.end method

.method public abstract xgetFirstPageNumber()Li5/l2;
.end method

.method public abstract xgetFitToHeight()Li5/l2;
.end method

.method public abstract xgetFitToWidth()Li5/l2;
.end method

.method public abstract xgetHorizontalDpi()Li5/l2;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetOrientation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation;
.end method

.method public abstract xgetPageOrder()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder;
.end method

.method public abstract xgetPaperHeight()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STPositiveUniversalMeasure;
.end method

.method public abstract xgetPaperSize()Li5/l2;
.end method

.method public abstract xgetPaperWidth()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STPositiveUniversalMeasure;
.end method

.method public abstract xgetScale()Li5/l2;
.end method

.method public abstract xgetUseFirstPageNumber()Li5/m0;
.end method

.method public abstract xgetUsePrinterDefaults()Li5/m0;
.end method

.method public abstract xgetVerticalDpi()Li5/l2;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetBlackAndWhite(Li5/m0;)V
.end method

.method public abstract xsetCellComments(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellComments;)V
.end method

.method public abstract xsetCopies(Li5/l2;)V
.end method

.method public abstract xsetDraft(Li5/m0;)V
.end method

.method public abstract xsetErrors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPrintError;)V
.end method

.method public abstract xsetFirstPageNumber(Li5/l2;)V
.end method

.method public abstract xsetFitToHeight(Li5/l2;)V
.end method

.method public abstract xsetFitToWidth(Li5/l2;)V
.end method

.method public abstract xsetHorizontalDpi(Li5/l2;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetOrientation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STOrientation;)V
.end method

.method public abstract xsetPageOrder(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPageOrder;)V
.end method

.method public abstract xsetPaperHeight(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STPositiveUniversalMeasure;)V
.end method

.method public abstract xsetPaperSize(Li5/l2;)V
.end method

.method public abstract xsetPaperWidth(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STPositiveUniversalMeasure;)V
.end method

.method public abstract xsetScale(Li5/l2;)V
.end method

.method public abstract xsetUseFirstPageNumber(Li5/m0;)V
.end method

.method public abstract xsetUsePrinterDefaults(Li5/m0;)V
.end method

.method public abstract xsetVerticalDpi(Li5/l2;)V
.end method
