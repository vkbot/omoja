.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;",
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

    const-string v2, "ctinline5726type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewCNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;
.end method

.method public abstract addNewDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
.end method

.method public abstract addNewEffectExtent()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTEffectExtent;
.end method

.method public abstract addNewExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract addNewGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;
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

.method public abstract getCNvGraphicFramePr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;
.end method

.method public abstract getDistB()J
.end method

.method public abstract getDistL()J
.end method

.method public abstract getDistR()J
.end method

.method public abstract getDistT()J
.end method

.method public abstract getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEffectExtent()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTEffectExtent;
.end method

.method public abstract getExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetCNvGraphicFramePr()Z
.end method

.method public abstract isSetDistB()Z
.end method

.method public abstract isSetDistL()Z
.end method

.method public abstract isSetDistR()Z
.end method

.method public abstract isSetDistT()Z
.end method

.method public abstract isSetEffectExtent()Z
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

.method public abstract setCNvGraphicFramePr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualGraphicFrameProperties;)V
.end method

.method public abstract setDistB(J)V
.end method

.method public abstract setDistL(J)V
.end method

.method public abstract setDistR(J)V
.end method

.method public abstract setDistT(J)V
.end method

.method public abstract setDocPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;)V
.end method

.method public abstract setEffectExtent(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTEffectExtent;)V
.end method

.method public abstract setExtent(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
.end method

.method public abstract setGraphic(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetCNvGraphicFramePr()V
.end method

.method public abstract unsetDistB()V
.end method

.method public abstract unsetDistL()V
.end method

.method public abstract unsetDistR()V
.end method

.method public abstract unsetDistT()V
.end method

.method public abstract unsetEffectExtent()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetDistB()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetDistL()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetDistR()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract xgetDistT()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetDistB(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetDistL(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetDistR(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method

.method public abstract xsetDistT(Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STWrapDistance;)V
.end method
