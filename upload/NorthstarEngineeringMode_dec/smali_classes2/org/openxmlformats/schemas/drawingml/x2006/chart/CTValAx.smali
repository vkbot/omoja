.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;",
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

    const-string v2, "ctvalaxd06etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTValAx;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract addNewAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;
.end method

.method public abstract addNewCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract addNewCrossBetween()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;
.end method

.method public abstract addNewCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;
.end method

.method public abstract addNewCrossesAt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract addNewDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewDispUnits()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispUnits;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewMajorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract addNewMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
.end method

.method public abstract addNewMajorUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;
.end method

.method public abstract addNewMinorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract addNewMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
.end method

.method public abstract addNewMinorUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;
.end method

.method public abstract addNewNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;
.end method

.method public abstract addNewScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
.end method

.method public abstract addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract addNewTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;
.end method

.method public abstract addNewTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
.end method

.method public abstract addNewTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
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

.method public abstract getAxId()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract getAxPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;
.end method

.method public abstract getCrossAx()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;
.end method

.method public abstract getCrossBetween()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;
.end method

.method public abstract getCrosses()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;
.end method

.method public abstract getCrossesAt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;
.end method

.method public abstract getDelete()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getDispUnits()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispUnits;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getMajorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract getMajorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
.end method

.method public abstract getMajorUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;
.end method

.method public abstract getMinorGridlines()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;
.end method

.method public abstract getMinorTickMark()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;
.end method

.method public abstract getMinorUnit()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;
.end method

.method public abstract getNumFmt()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;
.end method

.method public abstract getScaling()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;
.end method

.method public abstract getSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.end method

.method public abstract getTickLblPos()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;
.end method

.method public abstract getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
.end method

.method public abstract getTxPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetCrossBetween()Z
.end method

.method public abstract isSetCrosses()Z
.end method

.method public abstract isSetCrossesAt()Z
.end method

.method public abstract isSetDelete()Z
.end method

.method public abstract isSetDispUnits()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetMajorGridlines()Z
.end method

.method public abstract isSetMajorTickMark()Z
.end method

.method public abstract isSetMajorUnit()Z
.end method

.method public abstract isSetMinorGridlines()Z
.end method

.method public abstract isSetMinorTickMark()Z
.end method

.method public abstract isSetMinorUnit()Z
.end method

.method public abstract isSetNumFmt()Z
.end method

.method public abstract isSetSpPr()Z
.end method

.method public abstract isSetTickLblPos()Z
.end method

.method public abstract isSetTitle()Z
.end method

.method public abstract isSetTxPr()Z
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

.method public abstract setAxId(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V
.end method

.method public abstract setAxPos(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxPos;)V
.end method

.method public abstract setCrossAx(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTUnsignedInt;)V
.end method

.method public abstract setCrossBetween(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrossBetween;)V
.end method

.method public abstract setCrosses(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTCrosses;)V
.end method

.method public abstract setCrossesAt(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDouble;)V
.end method

.method public abstract setDelete(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setDispUnits(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispUnits;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setMajorGridlines(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
.end method

.method public abstract setMajorTickMark(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;)V
.end method

.method public abstract setMajorUnit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;)V
.end method

.method public abstract setMinorGridlines(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChartLines;)V
.end method

.method public abstract setMinorTickMark(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickMark;)V
.end method

.method public abstract setMinorUnit(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTAxisUnit;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNumFmt(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTNumFmt;)V
.end method

.method public abstract setScaling(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTScaling;)V
.end method

.method public abstract setSpPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V
.end method

.method public abstract setTickLblPos(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTickLblPos;)V
.end method

.method public abstract setTitle(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;)V
.end method

.method public abstract setTxPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBody;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetCrossBetween()V
.end method

.method public abstract unsetCrosses()V
.end method

.method public abstract unsetCrossesAt()V
.end method

.method public abstract unsetDelete()V
.end method

.method public abstract unsetDispUnits()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetMajorGridlines()V
.end method

.method public abstract unsetMajorTickMark()V
.end method

.method public abstract unsetMajorUnit()V
.end method

.method public abstract unsetMinorGridlines()V
.end method

.method public abstract unsetMinorTickMark()V
.end method

.method public abstract unsetMinorUnit()V
.end method

.method public abstract unsetNumFmt()V
.end method

.method public abstract unsetSpPr()V
.end method

.method public abstract unsetTickLblPos()V
.end method

.method public abstract unsetTitle()V
.end method

.method public abstract unsetTxPr()V
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
