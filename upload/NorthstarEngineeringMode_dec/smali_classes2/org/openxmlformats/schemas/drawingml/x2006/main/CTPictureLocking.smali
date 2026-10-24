.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;",
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

    const-string v2, "ctpicturelockinga414type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
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

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getNoAdjustHandles()Z
.end method

.method public abstract getNoChangeArrowheads()Z
.end method

.method public abstract getNoChangeAspect()Z
.end method

.method public abstract getNoChangeShapeType()Z
.end method

.method public abstract getNoCrop()Z
.end method

.method public abstract getNoEditPoints()Z
.end method

.method public abstract getNoGrp()Z
.end method

.method public abstract getNoMove()Z
.end method

.method public abstract getNoResize()Z
.end method

.method public abstract getNoRot()Z
.end method

.method public abstract getNoSelect()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetNoAdjustHandles()Z
.end method

.method public abstract isSetNoChangeArrowheads()Z
.end method

.method public abstract isSetNoChangeAspect()Z
.end method

.method public abstract isSetNoChangeShapeType()Z
.end method

.method public abstract isSetNoCrop()Z
.end method

.method public abstract isSetNoEditPoints()Z
.end method

.method public abstract isSetNoGrp()Z
.end method

.method public abstract isSetNoMove()Z
.end method

.method public abstract isSetNoResize()Z
.end method

.method public abstract isSetNoRot()Z
.end method

.method public abstract isSetNoSelect()Z
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

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNoAdjustHandles(Z)V
.end method

.method public abstract setNoChangeArrowheads(Z)V
.end method

.method public abstract setNoChangeAspect(Z)V
.end method

.method public abstract setNoChangeShapeType(Z)V
.end method

.method public abstract setNoCrop(Z)V
.end method

.method public abstract setNoEditPoints(Z)V
.end method

.method public abstract setNoGrp(Z)V
.end method

.method public abstract setNoMove(Z)V
.end method

.method public abstract setNoResize(Z)V
.end method

.method public abstract setNoRot(Z)V
.end method

.method public abstract setNoSelect(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetNoAdjustHandles()V
.end method

.method public abstract unsetNoChangeArrowheads()V
.end method

.method public abstract unsetNoChangeAspect()V
.end method

.method public abstract unsetNoChangeShapeType()V
.end method

.method public abstract unsetNoCrop()V
.end method

.method public abstract unsetNoEditPoints()V
.end method

.method public abstract unsetNoGrp()V
.end method

.method public abstract unsetNoMove()V
.end method

.method public abstract unsetNoResize()V
.end method

.method public abstract unsetNoRot()V
.end method

.method public abstract unsetNoSelect()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetNoAdjustHandles()Li5/m0;
.end method

.method public abstract xgetNoChangeArrowheads()Li5/m0;
.end method

.method public abstract xgetNoChangeAspect()Li5/m0;
.end method

.method public abstract xgetNoChangeShapeType()Li5/m0;
.end method

.method public abstract xgetNoCrop()Li5/m0;
.end method

.method public abstract xgetNoEditPoints()Li5/m0;
.end method

.method public abstract xgetNoGrp()Li5/m0;
.end method

.method public abstract xgetNoMove()Li5/m0;
.end method

.method public abstract xgetNoResize()Li5/m0;
.end method

.method public abstract xgetNoRot()Li5/m0;
.end method

.method public abstract xgetNoSelect()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetNoAdjustHandles(Li5/m0;)V
.end method

.method public abstract xsetNoChangeArrowheads(Li5/m0;)V
.end method

.method public abstract xsetNoChangeAspect(Li5/m0;)V
.end method

.method public abstract xsetNoChangeShapeType(Li5/m0;)V
.end method

.method public abstract xsetNoCrop(Li5/m0;)V
.end method

.method public abstract xsetNoEditPoints(Li5/m0;)V
.end method

.method public abstract xsetNoGrp(Li5/m0;)V
.end method

.method public abstract xsetNoMove(Li5/m0;)V
.end method

.method public abstract xsetNoResize(Li5/m0;)V
.end method

.method public abstract xsetNoRot(Li5/m0;)V
.end method

.method public abstract xsetNoSelect(Li5/m0;)V
.end method
