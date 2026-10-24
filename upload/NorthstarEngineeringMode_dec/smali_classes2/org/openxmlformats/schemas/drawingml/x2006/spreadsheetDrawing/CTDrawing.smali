.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;",
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

    const-string v2, "ctdrawing2748type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewAbsoluteAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;
.end method

.method public abstract addNewOneCellAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;
.end method

.method public abstract addNewTwoCellAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
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

.method public abstract getAbsoluteAnchorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;
.end method

.method public abstract getAbsoluteAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;
.end method

.method public abstract getAbsoluteAnchorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getOneCellAnchorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;
.end method

.method public abstract getOneCellAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;
.end method

.method public abstract getOneCellAnchorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTwoCellAnchorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
.end method

.method public abstract getTwoCellAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
.end method

.method public abstract getTwoCellAnchorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewAbsoluteAnchor(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;
.end method

.method public abstract insertNewOneCellAnchor(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;
.end method

.method public abstract insertNewTwoCellAnchor(I)Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
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

.method public abstract removeAbsoluteAnchor(I)V
.end method

.method public abstract removeOneCellAnchor(I)V
.end method

.method public abstract removeTwoCellAnchor(I)V
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

.method public abstract setAbsoluteAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;)V
.end method

.method public abstract setAbsoluteAnchorArray([Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTAbsoluteAnchor;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOneCellAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;)V
.end method

.method public abstract setOneCellAnchorArray([Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTOneCellAnchor;)V
.end method

.method public abstract setTwoCellAnchorArray(ILorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;)V
.end method

.method public abstract setTwoCellAnchorArray([Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTTwoCellAnchor;)V
.end method

.method public abstract sizeOfAbsoluteAnchorArray()I
.end method

.method public abstract sizeOfOneCellAnchorArray()I
.end method

.method public abstract sizeOfTwoCellAnchorArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
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
