.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;",
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

    const-string v2, "cttileinfoproperties2featype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTileInfoProperties;->type:Li5/c0;

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

.method public abstract getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;
.end method

.method public abstract getSx()Ljava/lang/Object;
.end method

.method public abstract getSy()Ljava/lang/Object;
.end method

.method public abstract getTx()Ljava/lang/Object;
.end method

.method public abstract getTy()Ljava/lang/Object;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAlgn()Z
.end method

.method public abstract isSetFlip()Z
.end method

.method public abstract isSetSx()Z
.end method

.method public abstract isSetSy()Z
.end method

.method public abstract isSetTx()Z
.end method

.method public abstract isSetTy()Z
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

.method public abstract setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V
.end method

.method public abstract setFlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode$Enum;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setSx(Ljava/lang/Object;)V
.end method

.method public abstract setSy(Ljava/lang/Object;)V
.end method

.method public abstract setTx(Ljava/lang/Object;)V
.end method

.method public abstract setTy(Ljava/lang/Object;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAlgn()V
.end method

.method public abstract unsetFlip()V
.end method

.method public abstract unsetSx()V
.end method

.method public abstract unsetSy()V
.end method

.method public abstract unsetTx()V
.end method

.method public abstract unsetTy()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;
.end method

.method public abstract xgetFlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode;
.end method

.method public abstract xgetSx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetSy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;
.end method

.method public abstract xgetTy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;)V
.end method

.method public abstract xsetFlip(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTileFlipMode;)V
.end method

.method public abstract xsetSx(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetSy(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetTx(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)V
.end method

.method public abstract xsetTy(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate;)V
.end method
