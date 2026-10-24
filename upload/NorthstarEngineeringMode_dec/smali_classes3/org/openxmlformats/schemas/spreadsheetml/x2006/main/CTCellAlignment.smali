.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;",
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

    const-string v2, "ctcellalignmentb580type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->type:Li5/c0;

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

.method public abstract getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;
.end method

.method public abstract getIndent()J
.end method

.method public abstract getJustifyLastLine()Z
.end method

.method public abstract getReadingOrder()J
.end method

.method public abstract getRelativeIndent()I
.end method

.method public abstract getShrinkToFit()Z
.end method

.method public abstract getTextRotation()Ljava/math/BigInteger;
.end method

.method public abstract getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;
.end method

.method public abstract getWrapText()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetHorizontal()Z
.end method

.method public abstract isSetIndent()Z
.end method

.method public abstract isSetJustifyLastLine()Z
.end method

.method public abstract isSetReadingOrder()Z
.end method

.method public abstract isSetRelativeIndent()Z
.end method

.method public abstract isSetShrinkToFit()Z
.end method

.method public abstract isSetTextRotation()Z
.end method

.method public abstract isSetVertical()Z
.end method

.method public abstract isSetWrapText()Z
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

.method public abstract setHorizontal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;)V
.end method

.method public abstract setIndent(J)V
.end method

.method public abstract setJustifyLastLine(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setReadingOrder(J)V
.end method

.method public abstract setRelativeIndent(I)V
.end method

.method public abstract setShrinkToFit(Z)V
.end method

.method public abstract setTextRotation(Ljava/math/BigInteger;)V
.end method

.method public abstract setVertical(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;)V
.end method

.method public abstract setWrapText(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetHorizontal()V
.end method

.method public abstract unsetIndent()V
.end method

.method public abstract unsetJustifyLastLine()V
.end method

.method public abstract unsetReadingOrder()V
.end method

.method public abstract unsetRelativeIndent()V
.end method

.method public abstract unsetShrinkToFit()V
.end method

.method public abstract unsetTextRotation()V
.end method

.method public abstract unsetVertical()V
.end method

.method public abstract unsetWrapText()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment;
.end method

.method public abstract xgetIndent()Li5/l2;
.end method

.method public abstract xgetJustifyLastLine()Li5/m0;
.end method

.method public abstract xgetReadingOrder()Li5/l2;
.end method

.method public abstract xgetRelativeIndent()Li5/l1;
.end method

.method public abstract xgetShrinkToFit()Li5/m0;
.end method

.method public abstract xgetTextRotation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextRotation;
.end method

.method public abstract xgetVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment;
.end method

.method public abstract xgetWrapText()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetHorizontal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment;)V
.end method

.method public abstract xsetIndent(Li5/l2;)V
.end method

.method public abstract xsetJustifyLastLine(Li5/m0;)V
.end method

.method public abstract xsetReadingOrder(Li5/l2;)V
.end method

.method public abstract xsetRelativeIndent(Li5/l1;)V
.end method

.method public abstract xsetShrinkToFit(Li5/m0;)V
.end method

.method public abstract xsetTextRotation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextRotation;)V
.end method

.method public abstract xsetVertical(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment;)V
.end method

.method public abstract xsetWrapText(Li5/m0;)V
.end method
