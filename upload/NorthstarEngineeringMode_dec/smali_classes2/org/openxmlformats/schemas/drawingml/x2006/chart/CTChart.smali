.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;",
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

    const-string v2, "ctchartc108type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTChart;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewAutoTitleDeleted()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewBackWall()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;
.end method

.method public abstract addNewDispBlanksAs()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispBlanksAs;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract addNewFloor()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;
.end method

.method public abstract addNewLegend()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;
.end method

.method public abstract addNewPivotFmts()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPivotFmts;
.end method

.method public abstract addNewPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;
.end method

.method public abstract addNewPlotVisOnly()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewShowDLblsOverMax()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract addNewSideWall()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;
.end method

.method public abstract addNewTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
.end method

.method public abstract addNewView3D()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;
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

.method public abstract getAutoTitleDeleted()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getBackWall()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;
.end method

.method public abstract getDispBlanksAs()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispBlanksAs;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;
.end method

.method public abstract getFloor()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;
.end method

.method public abstract getLegend()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;
.end method

.method public abstract getPivotFmts()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPivotFmts;
.end method

.method public abstract getPlotArea()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;
.end method

.method public abstract getPlotVisOnly()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getShowDLblsOverMax()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;
.end method

.method public abstract getSideWall()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;
.end method

.method public abstract getTitle()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;
.end method

.method public abstract getView3D()Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAutoTitleDeleted()Z
.end method

.method public abstract isSetBackWall()Z
.end method

.method public abstract isSetDispBlanksAs()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFloor()Z
.end method

.method public abstract isSetLegend()Z
.end method

.method public abstract isSetPivotFmts()Z
.end method

.method public abstract isSetPlotVisOnly()Z
.end method

.method public abstract isSetShowDLblsOverMax()Z
.end method

.method public abstract isSetSideWall()Z
.end method

.method public abstract isSetTitle()Z
.end method

.method public abstract isSetView3D()Z
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

.method public abstract setAutoTitleDeleted(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setBackWall(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;)V
.end method

.method public abstract setDispBlanksAs(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTDispBlanksAs;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTExtensionList;)V
.end method

.method public abstract setFloor(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;)V
.end method

.method public abstract setLegend(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTLegend;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPivotFmts(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPivotFmts;)V
.end method

.method public abstract setPlotArea(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTPlotArea;)V
.end method

.method public abstract setPlotVisOnly(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setShowDLblsOverMax(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTBoolean;)V
.end method

.method public abstract setSideWall(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTSurface;)V
.end method

.method public abstract setTitle(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTTitle;)V
.end method

.method public abstract setView3D(Lorg/openxmlformats/schemas/drawingml/x2006/chart/CTView3D;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAutoTitleDeleted()V
.end method

.method public abstract unsetBackWall()V
.end method

.method public abstract unsetDispBlanksAs()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFloor()V
.end method

.method public abstract unsetLegend()V
.end method

.method public abstract unsetPivotFmts()V
.end method

.method public abstract unsetPlotVisOnly()V
.end method

.method public abstract unsetShowDLblsOverMax()V
.end method

.method public abstract unsetSideWall()V
.end method

.method public abstract unsetTitle()V
.end method

.method public abstract unsetView3D()V
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
