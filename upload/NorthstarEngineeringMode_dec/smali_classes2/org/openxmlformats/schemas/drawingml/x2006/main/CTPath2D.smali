.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;",
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

    const-string v2, "ctpath2d73d2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewArcTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;
.end method

.method public abstract addNewClose()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;
.end method

.method public abstract addNewCubicBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
.end method

.method public abstract addNewLnTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;
.end method

.method public abstract addNewMoveTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;
.end method

.method public abstract addNewQuadBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
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

.method public abstract getArcToArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;
.end method

.method public abstract getArcToArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;
.end method

.method public abstract getArcToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCloseArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;
.end method

.method public abstract getCloseArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;
.end method

.method public abstract getCloseList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCubicBezToArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
.end method

.method public abstract getCubicBezToArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
.end method

.method public abstract getCubicBezToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtrusionOk()Z
.end method

.method public abstract getFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;
.end method

.method public abstract getH()J
.end method

.method public abstract getLnToArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;
.end method

.method public abstract getLnToArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;
.end method

.method public abstract getLnToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMoveToArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;
.end method

.method public abstract getMoveToArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;
.end method

.method public abstract getMoveToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQuadBezToArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
.end method

.method public abstract getQuadBezToArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
.end method

.method public abstract getQuadBezToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStroke()Z
.end method

.method public abstract getW()J
.end method

.method public abstract insertNewArcTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;
.end method

.method public abstract insertNewClose(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;
.end method

.method public abstract insertNewCubicBezTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
.end method

.method public abstract insertNewLnTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;
.end method

.method public abstract insertNewMoveTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;
.end method

.method public abstract insertNewQuadBezTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetExtrusionOk()Z
.end method

.method public abstract isSetFill()Z
.end method

.method public abstract isSetH()Z
.end method

.method public abstract isSetStroke()Z
.end method

.method public abstract isSetW()Z
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

.method public abstract removeArcTo(I)V
.end method

.method public abstract removeClose(I)V
.end method

.method public abstract removeCubicBezTo(I)V
.end method

.method public abstract removeLnTo(I)V
.end method

.method public abstract removeMoveTo(I)V
.end method

.method public abstract removeQuadBezTo(I)V
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

.method public abstract setArcToArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;)V
.end method

.method public abstract setArcToArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;)V
.end method

.method public abstract setCloseArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;)V
.end method

.method public abstract setCloseArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;)V
.end method

.method public abstract setCubicBezToArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;)V
.end method

.method public abstract setCubicBezToArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;)V
.end method

.method public abstract setExtrusionOk(Z)V
.end method

.method public abstract setFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;)V
.end method

.method public abstract setH(J)V
.end method

.method public abstract setLnToArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;)V
.end method

.method public abstract setLnToArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;)V
.end method

.method public abstract setMoveToArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;)V
.end method

.method public abstract setMoveToArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setQuadBezToArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;)V
.end method

.method public abstract setQuadBezToArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;)V
.end method

.method public abstract setStroke(Z)V
.end method

.method public abstract setW(J)V
.end method

.method public abstract sizeOfArcToArray()I
.end method

.method public abstract sizeOfCloseArray()I
.end method

.method public abstract sizeOfCubicBezToArray()I
.end method

.method public abstract sizeOfLnToArray()I
.end method

.method public abstract sizeOfMoveToArray()I
.end method

.method public abstract sizeOfQuadBezToArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetExtrusionOk()V
.end method

.method public abstract unsetFill()V
.end method

.method public abstract unsetH()V
.end method

.method public abstract unsetStroke()V
.end method

.method public abstract unsetW()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetExtrusionOk()Li5/m0;
.end method

.method public abstract xgetFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;
.end method

.method public abstract xgetH()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetStroke()Li5/m0;
.end method

.method public abstract xgetW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetExtrusionOk(Li5/m0;)V
.end method

.method public abstract xsetFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;)V
.end method

.method public abstract xsetH(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetStroke(Li5/m0;)V
.end method

.method public abstract xsetW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method
