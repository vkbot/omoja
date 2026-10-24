.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;",
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

    const-string v2, "ctchartspacef9b4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartSpace;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;
.end method

.method public abstract addNewClrMapOvr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.end method

.method public abstract addNewDate1904()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewExternalData()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExternalData;
.end method

.method public abstract addNewLang()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTextLanguageID;
.end method

.method public abstract addNewPivotSource()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPivotSource;
.end method

.method public abstract addNewPrintSettings()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;
.end method

.method public abstract addNewProtection()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTProtection;
.end method

.method public abstract addNewRoundedCorners()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract addNewStyle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStyle;
.end method

.method public abstract addNewTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract addNewUserShapes()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRelId;
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

.method public abstract getChart()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;
.end method

.method public abstract getClrMapOvr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.end method

.method public abstract getDate1904()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getExternalData()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExternalData;
.end method

.method public abstract getLang()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTextLanguageID;
.end method

.method public abstract getPivotSource()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPivotSource;
.end method

.method public abstract getPrintSettings()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;
.end method

.method public abstract getProtection()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTProtection;
.end method

.method public abstract getRoundedCorners()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract getStyle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStyle;
.end method

.method public abstract getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract getUserShapes()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRelId;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetClrMapOvr()Z
.end method

.method public abstract isSetDate1904()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetExternalData()Z
.end method

.method public abstract isSetLang()Z
.end method

.method public abstract isSetPivotSource()Z
.end method

.method public abstract isSetPrintSettings()Z
.end method

.method public abstract isSetProtection()Z
.end method

.method public abstract isSetRoundedCorners()Z
.end method

.method public abstract isSetSpPr()Z
.end method

.method public abstract isSetStyle()Z
.end method

.method public abstract isSetTxPr()Z
.end method

.method public abstract isSetUserShapes()Z
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

.method public abstract setChart(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;)V
.end method

.method public abstract setClrMapOvr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;)V
.end method

.method public abstract setDate1904(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setExternalData(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExternalData;)V
.end method

.method public abstract setLang(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTextLanguageID;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPivotSource(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPivotSource;)V
.end method

.method public abstract setPrintSettings(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPrintSettings;)V
.end method

.method public abstract setProtection(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTProtection;)V
.end method

.method public abstract setRoundedCorners(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
.end method

.method public abstract setStyle(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTStyle;)V
.end method

.method public abstract setTxPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V
.end method

.method public abstract setUserShapes(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTRelId;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetClrMapOvr()V
.end method

.method public abstract unsetDate1904()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetExternalData()V
.end method

.method public abstract unsetLang()V
.end method

.method public abstract unsetPivotSource()V
.end method

.method public abstract unsetPrintSettings()V
.end method

.method public abstract unsetProtection()V
.end method

.method public abstract unsetRoundedCorners()V
.end method

.method public abstract unsetSpPr()V
.end method

.method public abstract unsetStyle()V
.end method

.method public abstract unsetTxPr()V
.end method

.method public abstract unsetUserShapes()V
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
