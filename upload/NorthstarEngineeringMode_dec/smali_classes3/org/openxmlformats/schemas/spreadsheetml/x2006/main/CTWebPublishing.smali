.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishing;",
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

    const-string v2, "ctwebpublishing4646type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishing;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPublishing;->type:Li5/c0;

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

.method public abstract getAllowPng()Z
.end method

.method public abstract getCharacterSet()Ljava/lang/String;
.end method

.method public abstract getCodePage()J
.end method

.method public abstract getCss()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getDpi()J
.end method

.method public abstract getLongFileNames()Z
.end method

.method public abstract getTargetScreenSize()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTargetScreenSize$Enum;
.end method

.method public abstract getThicket()Z
.end method

.method public abstract getVml()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAllowPng()Z
.end method

.method public abstract isSetCharacterSet()Z
.end method

.method public abstract isSetCodePage()Z
.end method

.method public abstract isSetCss()Z
.end method

.method public abstract isSetDpi()Z
.end method

.method public abstract isSetLongFileNames()Z
.end method

.method public abstract isSetTargetScreenSize()Z
.end method

.method public abstract isSetThicket()Z
.end method

.method public abstract isSetVml()Z
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

.method public abstract setAllowPng(Z)V
.end method

.method public abstract setCharacterSet(Ljava/lang/String;)V
.end method

.method public abstract setCodePage(J)V
.end method

.method public abstract setCss(Z)V
.end method

.method public abstract setDpi(J)V
.end method

.method public abstract setLongFileNames(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setTargetScreenSize(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTargetScreenSize$Enum;)V
.end method

.method public abstract setThicket(Z)V
.end method

.method public abstract setVml(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAllowPng()V
.end method

.method public abstract unsetCharacterSet()V
.end method

.method public abstract unsetCodePage()V
.end method

.method public abstract unsetCss()V
.end method

.method public abstract unsetDpi()V
.end method

.method public abstract unsetLongFileNames()V
.end method

.method public abstract unsetTargetScreenSize()V
.end method

.method public abstract unsetThicket()V
.end method

.method public abstract unsetVml()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAllowPng()Li5/m0;
.end method

.method public abstract xgetCharacterSet()Li5/g2;
.end method

.method public abstract xgetCodePage()Li5/l2;
.end method

.method public abstract xgetCss()Li5/m0;
.end method

.method public abstract xgetDpi()Li5/l2;
.end method

.method public abstract xgetLongFileNames()Li5/m0;
.end method

.method public abstract xgetTargetScreenSize()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTargetScreenSize;
.end method

.method public abstract xgetThicket()Li5/m0;
.end method

.method public abstract xgetVml()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAllowPng(Li5/m0;)V
.end method

.method public abstract xsetCharacterSet(Li5/g2;)V
.end method

.method public abstract xsetCodePage(Li5/l2;)V
.end method

.method public abstract xsetCss(Li5/m0;)V
.end method

.method public abstract xsetDpi(Li5/l2;)V
.end method

.method public abstract xsetLongFileNames(Li5/m0;)V
.end method

.method public abstract xsetTargetScreenSize(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTargetScreenSize;)V
.end method

.method public abstract xsetThicket(Li5/m0;)V
.end method

.method public abstract xsetVml(Li5/m0;)V
.end method
