.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/i2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;
    }
.end annotation


# static fields
.field public static final BOTTOM_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b0<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final INT_BOTTOM_MARGIN:I = 0x6

.field public static final INT_INSIDE_MARGIN:I = 0x7

.field public static final INT_LINE:I = 0x4

.field public static final INT_MARGIN:I = 0x1

.field public static final INT_OUTSIDE_MARGIN:I = 0x8

.field public static final INT_PAGE:I = 0x2

.field public static final INT_PARAGRAPH:I = 0x3

.field public static final INT_TOP_MARGIN:I = 0x5

.field public static final LINE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final OUTSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final PAGE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final PARAGRAPH:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final TOP_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

.field public static final type:Li5/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/b0;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "strelfromv56dctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->Factory:Lorg/apache/xmlbeans/impl/schema/b0;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->type:Li5/c0;

    const-string v0, "margin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "page"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->PAGE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "paragraph"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->PARAGRAPH:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "line"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->LINE:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "topMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->TOP_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "bottomMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->BOTTOM_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "insideMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->INSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    const-string v0, "outsideMargin"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV;->OUTSIDE_MARGIN:Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/STRelFromV$Enum;

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

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEnumValue()Li5/h0;
.end method

.method public abstract synthetic getStringValue()Ljava/lang/String;
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

.method public abstract setEnumValue(Li5/h0;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract synthetic setStringValue(Ljava/lang/String;)V
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
