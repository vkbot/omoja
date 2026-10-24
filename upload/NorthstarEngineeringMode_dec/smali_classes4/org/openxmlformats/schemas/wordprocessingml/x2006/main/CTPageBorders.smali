.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;",
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

    const-string v2, "ctpagebordersa4datype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBottomPageBorder;
.end method

.method public abstract addNewLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;
.end method

.method public abstract addNewRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;
.end method

.method public abstract addNewTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTopPageBorder;
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

.method public abstract getBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBottomPageBorder;
.end method

.method public abstract getDisplay()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;
.end method

.method public abstract getOffsetFrom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderOffset$Enum;
.end method

.method public abstract getRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;
.end method

.method public abstract getTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTopPageBorder;
.end method

.method public abstract getZOrder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderZOrder$Enum;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBottom()Z
.end method

.method public abstract isSetDisplay()Z
.end method

.method public abstract isSetLeft()Z
.end method

.method public abstract isSetOffsetFrom()Z
.end method

.method public abstract isSetRight()Z
.end method

.method public abstract isSetTop()Z
.end method

.method public abstract isSetZOrder()Z
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

.method public abstract setBottom(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBottomPageBorder;)V
.end method

.method public abstract setDisplay(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay$Enum;)V
.end method

.method public abstract setLeft(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOffsetFrom(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderOffset$Enum;)V
.end method

.method public abstract setRight(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorder;)V
.end method

.method public abstract setTop(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTopPageBorder;)V
.end method

.method public abstract setZOrder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderZOrder$Enum;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBottom()V
.end method

.method public abstract unsetDisplay()V
.end method

.method public abstract unsetLeft()V
.end method

.method public abstract unsetOffsetFrom()V
.end method

.method public abstract unsetRight()V
.end method

.method public abstract unsetTop()V
.end method

.method public abstract unsetZOrder()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetDisplay()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay;
.end method

.method public abstract xgetOffsetFrom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderOffset;
.end method

.method public abstract xgetZOrder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderZOrder;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetDisplay(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderDisplay;)V
.end method

.method public abstract xsetOffsetFrom(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderOffset;)V
.end method

.method public abstract xsetZOrder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STPageBorderZOrder;)V
.end method
