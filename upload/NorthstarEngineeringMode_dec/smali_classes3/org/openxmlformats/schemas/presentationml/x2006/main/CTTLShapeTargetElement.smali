.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;",
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

    const-string v2, "cttlshapetargetelement2763type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewGraphicEl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;
.end method

.method public abstract addNewOleChartEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleChartTargetElement;
.end method

.method public abstract addNewSubSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;
.end method

.method public abstract addNewTxEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTextTargetElement;
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

.method public abstract getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getGraphicEl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;
.end method

.method public abstract getOleChartEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleChartTargetElement;
.end method

.method public abstract getSpid()J
.end method

.method public abstract getSubSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;
.end method

.method public abstract getTxEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTextTargetElement;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBg()Z
.end method

.method public abstract isSetGraphicEl()Z
.end method

.method public abstract isSetOleChartEl()Z
.end method

.method public abstract isSetSubSp()Z
.end method

.method public abstract isSetTxEl()Z
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

.method public abstract setBg(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setGraphicEl(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOleChartEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleChartTargetElement;)V
.end method

.method public abstract setSpid(J)V
.end method

.method public abstract setSubSp(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;)V
.end method

.method public abstract setTxEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTextTargetElement;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBg()V
.end method

.method public abstract unsetGraphicEl()V
.end method

.method public abstract unsetOleChartEl()V
.end method

.method public abstract unsetSubSp()V
.end method

.method public abstract unsetTxEl()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetSpid()Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetSpid(Lorg/openxmlformats/schemas/drawingml/x2006/main/STDrawingElementId;)V
.end method
