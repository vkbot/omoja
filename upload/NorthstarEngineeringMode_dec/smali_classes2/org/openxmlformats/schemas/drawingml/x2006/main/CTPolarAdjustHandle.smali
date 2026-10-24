.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;",
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

    const-string v2, "ctpolaradjusthandled0a6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPolarAdjustHandle;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
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

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getGdRefAng()Ljava/lang/String;
.end method

.method public abstract getGdRefR()Ljava/lang/String;
.end method

.method public abstract getMaxAng()Ljava/lang/Object;
.end method

.method public abstract getMaxR()Ljava/lang/Object;
.end method

.method public abstract getMinAng()Ljava/lang/Object;
.end method

.method public abstract getMinR()Ljava/lang/Object;
.end method

.method public abstract getPos()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetGdRefAng()Z
.end method

.method public abstract isSetGdRefR()Z
.end method

.method public abstract isSetMaxAng()Z
.end method

.method public abstract isSetMaxR()Z
.end method

.method public abstract isSetMinAng()Z
.end method

.method public abstract isSetMinR()Z
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

.method public abstract setGdRefAng(Ljava/lang/String;)V
.end method

.method public abstract setGdRefR(Ljava/lang/String;)V
.end method

.method public abstract setMaxAng(Ljava/lang/Object;)V
.end method

.method public abstract setMaxR(Ljava/lang/Object;)V
.end method

.method public abstract setMinAng(Ljava/lang/Object;)V
.end method

.method public abstract setMinR(Ljava/lang/Object;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPos(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAdjPoint2D;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetGdRefAng()V
.end method

.method public abstract unsetGdRefR()V
.end method

.method public abstract unsetMaxAng()V
.end method

.method public abstract unsetMaxR()V
.end method

.method public abstract unsetMinAng()V
.end method

.method public abstract unsetMinR()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetGdRefAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;
.end method

.method public abstract xgetGdRefR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;
.end method

.method public abstract xgetMaxAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;
.end method

.method public abstract xgetMaxR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;
.end method

.method public abstract xgetMinAng()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;
.end method

.method public abstract xgetMinR()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetGdRefAng(Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;)V
.end method

.method public abstract xsetGdRefR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STGeomGuideName;)V
.end method

.method public abstract xsetMaxAng(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;)V
.end method

.method public abstract xsetMaxR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;)V
.end method

.method public abstract xsetMinAng(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjAngle;)V
.end method

.method public abstract xsetMinR(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAdjCoordinate;)V
.end method
