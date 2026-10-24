.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;",
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

    const-string v2, "ctgradientfillproperties81c1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;
.end method

.method public abstract addNewLin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;
.end method

.method public abstract addNewPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;
.end method

.method public abstract addNewTileRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;
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

.method public abstract getFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;
.end method

.method public abstract getGsLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;
.end method

.method public abstract getLin()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;
.end method

.method public abstract getPath()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;
.end method

.method public abstract getRotWithShape()Z
.end method

.method public abstract getTileRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetFlip()Z
.end method

.method public abstract isSetGsLst()Z
.end method

.method public abstract isSetLin()Z
.end method

.method public abstract isSetPath()Z
.end method

.method public abstract isSetRotWithShape()Z
.end method

.method public abstract isSetTileRect()Z
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

.method public abstract setFlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;)V
.end method

.method public abstract setGsLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStopList;)V
.end method

.method public abstract setLin(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLinearShadeProperties;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPath(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPathShadeProperties;)V
.end method

.method public abstract setRotWithShape(Z)V
.end method

.method public abstract setTileRect(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetFlip()V
.end method

.method public abstract unsetGsLst()V
.end method

.method public abstract unsetLin()V
.end method

.method public abstract unsetPath()V
.end method

.method public abstract unsetRotWithShape()V
.end method

.method public abstract unsetTileRect()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode;
.end method

.method public abstract xgetRotWithShape()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetFlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode;)V
.end method

.method public abstract xsetRotWithShape(Li5/m0;)V
.end method
