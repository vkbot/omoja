.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;",
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

    const-string v2, "cttbllooka235type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblLook;->type:Li5/c0;

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

.method public abstract getFirstColumn()Ljava/lang/Object;
.end method

.method public abstract getFirstRow()Ljava/lang/Object;
.end method

.method public abstract getLastColumn()Ljava/lang/Object;
.end method

.method public abstract getLastRow()Ljava/lang/Object;
.end method

.method public abstract getNoHBand()Ljava/lang/Object;
.end method

.method public abstract getNoVBand()Ljava/lang/Object;
.end method

.method public abstract getVal()[B
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetFirstColumn()Z
.end method

.method public abstract isSetFirstRow()Z
.end method

.method public abstract isSetLastColumn()Z
.end method

.method public abstract isSetLastRow()Z
.end method

.method public abstract isSetNoHBand()Z
.end method

.method public abstract isSetNoVBand()Z
.end method

.method public abstract isSetVal()Z
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

.method public abstract setFirstColumn(Ljava/lang/Object;)V
.end method

.method public abstract setFirstRow(Ljava/lang/Object;)V
.end method

.method public abstract setLastColumn(Ljava/lang/Object;)V
.end method

.method public abstract setLastRow(Ljava/lang/Object;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNoHBand(Ljava/lang/Object;)V
.end method

.method public abstract setNoVBand(Ljava/lang/Object;)V
.end method

.method public abstract setVal([B)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetFirstColumn()V
.end method

.method public abstract unsetFirstRow()V
.end method

.method public abstract unsetLastColumn()V
.end method

.method public abstract unsetLastRow()V
.end method

.method public abstract unsetNoHBand()V
.end method

.method public abstract unsetNoVBand()V
.end method

.method public abstract unsetVal()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetFirstColumn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetFirstRow()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetLastColumn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetLastRow()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetNoHBand()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetNoVBand()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShortHexNumber;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetFirstColumn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetFirstRow(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetLastColumn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetLastRow(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetNoHBand(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetNoVBand(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STShortHexNumber;)V
.end method
