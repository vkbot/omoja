.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFramePr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFramePr;",
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

    const-string v2, "ctframepr12a3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFramePr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFramePr;->type:Li5/c0;

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

.method public abstract getAnchorLock()Ljava/lang/Object;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getDropCap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDropCap$Enum;
.end method

.method public abstract getH()Ljava/lang/Object;
.end method

.method public abstract getHAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor$Enum;
.end method

.method public abstract getHRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHeightRule$Enum;
.end method

.method public abstract getHSpace()Ljava/lang/Object;
.end method

.method public abstract getLines()Ljava/math/BigInteger;
.end method

.method public abstract getVAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor$Enum;
.end method

.method public abstract getVSpace()Ljava/lang/Object;
.end method

.method public abstract getW()Ljava/lang/Object;
.end method

.method public abstract getWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;
.end method

.method public abstract getX()Ljava/lang/Object;
.end method

.method public abstract getXAlign()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign$Enum;
.end method

.method public abstract getY()Ljava/lang/Object;
.end method

.method public abstract getYAlign()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAnchorLock()Z
.end method

.method public abstract isSetDropCap()Z
.end method

.method public abstract isSetH()Z
.end method

.method public abstract isSetHAnchor()Z
.end method

.method public abstract isSetHRule()Z
.end method

.method public abstract isSetHSpace()Z
.end method

.method public abstract isSetLines()Z
.end method

.method public abstract isSetVAnchor()Z
.end method

.method public abstract isSetVSpace()Z
.end method

.method public abstract isSetW()Z
.end method

.method public abstract isSetWrap()Z
.end method

.method public abstract isSetX()Z
.end method

.method public abstract isSetXAlign()Z
.end method

.method public abstract isSetY()Z
.end method

.method public abstract isSetYAlign()Z
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

.method public abstract setAnchorLock(Ljava/lang/Object;)V
.end method

.method public abstract setDropCap(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDropCap$Enum;)V
.end method

.method public abstract setH(Ljava/lang/Object;)V
.end method

.method public abstract setHAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor$Enum;)V
.end method

.method public abstract setHRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHeightRule$Enum;)V
.end method

.method public abstract setHSpace(Ljava/lang/Object;)V
.end method

.method public abstract setLines(Ljava/math/BigInteger;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setVAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor$Enum;)V
.end method

.method public abstract setVSpace(Ljava/lang/Object;)V
.end method

.method public abstract setW(Ljava/lang/Object;)V
.end method

.method public abstract setWrap(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap$Enum;)V
.end method

.method public abstract setX(Ljava/lang/Object;)V
.end method

.method public abstract setXAlign(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign$Enum;)V
.end method

.method public abstract setY(Ljava/lang/Object;)V
.end method

.method public abstract setYAlign(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAnchorLock()V
.end method

.method public abstract unsetDropCap()V
.end method

.method public abstract unsetH()V
.end method

.method public abstract unsetHAnchor()V
.end method

.method public abstract unsetHRule()V
.end method

.method public abstract unsetHSpace()V
.end method

.method public abstract unsetLines()V
.end method

.method public abstract unsetVAnchor()V
.end method

.method public abstract unsetVSpace()V
.end method

.method public abstract unsetW()V
.end method

.method public abstract unsetWrap()V
.end method

.method public abstract unsetX()V
.end method

.method public abstract unsetXAlign()V
.end method

.method public abstract unsetY()V
.end method

.method public abstract unsetYAlign()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAnchorLock()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetDropCap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDropCap;
.end method

.method public abstract xgetH()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetHAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor;
.end method

.method public abstract xgetHRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHeightRule;
.end method

.method public abstract xgetHSpace()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetLines()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetVAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor;
.end method

.method public abstract xgetVSpace()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetW()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;
.end method

.method public abstract xgetX()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetXAlign()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign;
.end method

.method public abstract xgetY()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetYAlign()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAnchorLock(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetDropCap(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDropCap;)V
.end method

.method public abstract xsetH(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetHAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor;)V
.end method

.method public abstract xsetHRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHeightRule;)V
.end method

.method public abstract xsetHSpace(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetLines(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetVAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor;)V
.end method

.method public abstract xsetVSpace(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetW(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetWrap(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWrap;)V
.end method

.method public abstract xsetX(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetXAlign(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign;)V
.end method

.method public abstract xsetY(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetYAlign(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;)V
.end method
