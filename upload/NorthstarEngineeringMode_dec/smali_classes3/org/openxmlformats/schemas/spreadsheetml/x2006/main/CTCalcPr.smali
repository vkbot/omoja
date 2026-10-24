.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;",
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

    const-string v2, "ctcalcprd480type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->type:Li5/c0;

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

.method public abstract getCalcCompleted()Z
.end method

.method public abstract getCalcId()J
.end method

.method public abstract getCalcMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;
.end method

.method public abstract getCalcOnSave()Z
.end method

.method public abstract getConcurrentCalc()Z
.end method

.method public abstract getConcurrentManualCount()J
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getForceFullCalc()Z
.end method

.method public abstract getFullCalcOnLoad()Z
.end method

.method public abstract getFullPrecision()Z
.end method

.method public abstract getIterate()Z
.end method

.method public abstract getIterateCount()J
.end method

.method public abstract getIterateDelta()D
.end method

.method public abstract getRefMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetCalcCompleted()Z
.end method

.method public abstract isSetCalcId()Z
.end method

.method public abstract isSetCalcMode()Z
.end method

.method public abstract isSetCalcOnSave()Z
.end method

.method public abstract isSetConcurrentCalc()Z
.end method

.method public abstract isSetConcurrentManualCount()Z
.end method

.method public abstract isSetForceFullCalc()Z
.end method

.method public abstract isSetFullCalcOnLoad()Z
.end method

.method public abstract isSetFullPrecision()Z
.end method

.method public abstract isSetIterate()Z
.end method

.method public abstract isSetIterateCount()Z
.end method

.method public abstract isSetIterateDelta()Z
.end method

.method public abstract isSetRefMode()Z
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

.method public abstract setCalcCompleted(Z)V
.end method

.method public abstract setCalcId(J)V
.end method

.method public abstract setCalcMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;)V
.end method

.method public abstract setCalcOnSave(Z)V
.end method

.method public abstract setConcurrentCalc(Z)V
.end method

.method public abstract setConcurrentManualCount(J)V
.end method

.method public abstract setForceFullCalc(Z)V
.end method

.method public abstract setFullCalcOnLoad(Z)V
.end method

.method public abstract setFullPrecision(Z)V
.end method

.method public abstract setIterate(Z)V
.end method

.method public abstract setIterateCount(J)V
.end method

.method public abstract setIterateDelta(D)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setRefMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetCalcCompleted()V
.end method

.method public abstract unsetCalcId()V
.end method

.method public abstract unsetCalcMode()V
.end method

.method public abstract unsetCalcOnSave()V
.end method

.method public abstract unsetConcurrentCalc()V
.end method

.method public abstract unsetConcurrentManualCount()V
.end method

.method public abstract unsetForceFullCalc()V
.end method

.method public abstract unsetFullCalcOnLoad()V
.end method

.method public abstract unsetFullPrecision()V
.end method

.method public abstract unsetIterate()V
.end method

.method public abstract unsetIterateCount()V
.end method

.method public abstract unsetIterateDelta()V
.end method

.method public abstract unsetRefMode()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetCalcCompleted()Li5/m0;
.end method

.method public abstract xgetCalcId()Li5/l2;
.end method

.method public abstract xgetCalcMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;
.end method

.method public abstract xgetCalcOnSave()Li5/m0;
.end method

.method public abstract xgetConcurrentCalc()Li5/m0;
.end method

.method public abstract xgetConcurrentManualCount()Li5/l2;
.end method

.method public abstract xgetForceFullCalc()Li5/m0;
.end method

.method public abstract xgetFullCalcOnLoad()Li5/m0;
.end method

.method public abstract xgetFullPrecision()Li5/m0;
.end method

.method public abstract xgetIterate()Li5/m0;
.end method

.method public abstract xgetIterateCount()Li5/l2;
.end method

.method public abstract xgetIterateDelta()Li5/u0;
.end method

.method public abstract xgetRefMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetCalcCompleted(Li5/m0;)V
.end method

.method public abstract xsetCalcId(Li5/l2;)V
.end method

.method public abstract xsetCalcMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;)V
.end method

.method public abstract xsetCalcOnSave(Li5/m0;)V
.end method

.method public abstract xsetConcurrentCalc(Li5/m0;)V
.end method

.method public abstract xsetConcurrentManualCount(Li5/l2;)V
.end method

.method public abstract xsetForceFullCalc(Li5/m0;)V
.end method

.method public abstract xsetFullCalcOnLoad(Li5/m0;)V
.end method

.method public abstract xsetFullPrecision(Li5/m0;)V
.end method

.method public abstract xsetIterate(Li5/m0;)V
.end method

.method public abstract xsetIterateCount(Li5/l2;)V
.end method

.method public abstract xsetIterateDelta(Li5/u0;)V
.end method

.method public abstract xsetRefMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;)V
.end method
