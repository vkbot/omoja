.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPPr;",
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

    const-string v2, "cttblppra134type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblPPr;->type:Li5/c0;

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

.method public abstract getBottomFromText()Ljava/lang/Object;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getHorzAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor$Enum;
.end method

.method public abstract getLeftFromText()Ljava/lang/Object;
.end method

.method public abstract getRightFromText()Ljava/lang/Object;
.end method

.method public abstract getTblpX()Ljava/lang/Object;
.end method

.method public abstract getTblpXSpec()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign$Enum;
.end method

.method public abstract getTblpY()Ljava/lang/Object;
.end method

.method public abstract getTblpYSpec()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;
.end method

.method public abstract getTopFromText()Ljava/lang/Object;
.end method

.method public abstract getVertAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor$Enum;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBottomFromText()Z
.end method

.method public abstract isSetHorzAnchor()Z
.end method

.method public abstract isSetLeftFromText()Z
.end method

.method public abstract isSetRightFromText()Z
.end method

.method public abstract isSetTblpX()Z
.end method

.method public abstract isSetTblpXSpec()Z
.end method

.method public abstract isSetTblpY()Z
.end method

.method public abstract isSetTblpYSpec()Z
.end method

.method public abstract isSetTopFromText()Z
.end method

.method public abstract isSetVertAnchor()Z
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

.method public abstract setBottomFromText(Ljava/lang/Object;)V
.end method

.method public abstract setHorzAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor$Enum;)V
.end method

.method public abstract setLeftFromText(Ljava/lang/Object;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setRightFromText(Ljava/lang/Object;)V
.end method

.method public abstract setTblpX(Ljava/lang/Object;)V
.end method

.method public abstract setTblpXSpec(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign$Enum;)V
.end method

.method public abstract setTblpY(Ljava/lang/Object;)V
.end method

.method public abstract setTblpYSpec(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign$Enum;)V
.end method

.method public abstract setTopFromText(Ljava/lang/Object;)V
.end method

.method public abstract setVertAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor$Enum;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBottomFromText()V
.end method

.method public abstract unsetHorzAnchor()V
.end method

.method public abstract unsetLeftFromText()V
.end method

.method public abstract unsetRightFromText()V
.end method

.method public abstract unsetTblpX()V
.end method

.method public abstract unsetTblpXSpec()V
.end method

.method public abstract unsetTblpY()V
.end method

.method public abstract unsetTblpYSpec()V
.end method

.method public abstract unsetTopFromText()V
.end method

.method public abstract unsetVertAnchor()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetBottomFromText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetHorzAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor;
.end method

.method public abstract xgetLeftFromText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetRightFromText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetTblpX()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetTblpXSpec()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign;
.end method

.method public abstract xgetTblpY()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetTblpYSpec()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;
.end method

.method public abstract xgetTopFromText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetVertAnchor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetBottomFromText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetHorzAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHAnchor;)V
.end method

.method public abstract xsetLeftFromText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetRightFromText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetTblpX(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetTblpXSpec(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXAlign;)V
.end method

.method public abstract xsetTblpY(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetTblpYSpec(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STYAlign;)V
.end method

.method public abstract xsetTopFromText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetVertAnchor(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVAnchor;)V
.end method
