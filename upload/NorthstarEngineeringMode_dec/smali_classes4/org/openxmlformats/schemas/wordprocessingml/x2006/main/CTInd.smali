.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;",
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

    const-string v2, "ctind4b93type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->type:Li5/c0;

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

.method public abstract getEnd()Ljava/lang/Object;
.end method

.method public abstract getEndChars()Ljava/math/BigInteger;
.end method

.method public abstract getFirstLine()Ljava/lang/Object;
.end method

.method public abstract getFirstLineChars()Ljava/math/BigInteger;
.end method

.method public abstract getHanging()Ljava/lang/Object;
.end method

.method public abstract getHangingChars()Ljava/math/BigInteger;
.end method

.method public abstract getLeft()Ljava/lang/Object;
.end method

.method public abstract getLeftChars()Ljava/math/BigInteger;
.end method

.method public abstract getRight()Ljava/lang/Object;
.end method

.method public abstract getRightChars()Ljava/math/BigInteger;
.end method

.method public abstract getStart()Ljava/lang/Object;
.end method

.method public abstract getStartChars()Ljava/math/BigInteger;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetEnd()Z
.end method

.method public abstract isSetEndChars()Z
.end method

.method public abstract isSetFirstLine()Z
.end method

.method public abstract isSetFirstLineChars()Z
.end method

.method public abstract isSetHanging()Z
.end method

.method public abstract isSetHangingChars()Z
.end method

.method public abstract isSetLeft()Z
.end method

.method public abstract isSetLeftChars()Z
.end method

.method public abstract isSetRight()Z
.end method

.method public abstract isSetRightChars()Z
.end method

.method public abstract isSetStart()Z
.end method

.method public abstract isSetStartChars()Z
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

.method public abstract setEnd(Ljava/lang/Object;)V
.end method

.method public abstract setEndChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setFirstLine(Ljava/lang/Object;)V
.end method

.method public abstract setFirstLineChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setHanging(Ljava/lang/Object;)V
.end method

.method public abstract setHangingChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setLeft(Ljava/lang/Object;)V
.end method

.method public abstract setLeftChars(Ljava/math/BigInteger;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setRight(Ljava/lang/Object;)V
.end method

.method public abstract setRightChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setStart(Ljava/lang/Object;)V
.end method

.method public abstract setStartChars(Ljava/math/BigInteger;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetEnd()V
.end method

.method public abstract unsetEndChars()V
.end method

.method public abstract unsetFirstLine()V
.end method

.method public abstract unsetFirstLineChars()V
.end method

.method public abstract unsetHanging()V
.end method

.method public abstract unsetHangingChars()V
.end method

.method public abstract unsetLeft()V
.end method

.method public abstract unsetLeftChars()V
.end method

.method public abstract unsetRight()V
.end method

.method public abstract unsetRightChars()V
.end method

.method public abstract unsetStart()V
.end method

.method public abstract unsetStartChars()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetEnd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetEndChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetFirstLine()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetFirstLineChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetHanging()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetHangingChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetLeftChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetRightChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetStart()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetStartChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetEnd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetEndChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetFirstLine(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetFirstLineChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetHanging(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetHangingChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetLeft(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetLeftChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetRight(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetRightChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetStart(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetStartChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
