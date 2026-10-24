.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;",
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

    const-string v2, "cttcprbase93e6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewCnfStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;
.end method

.method public abstract addNewGridSpan()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewHMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHMerge;
.end method

.method public abstract addNewHeaders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeaders;
.end method

.method public abstract addNewHideMark()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewNoWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract addNewTcBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcBorders;
.end method

.method public abstract addNewTcFitText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewTcMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcMar;
.end method

.method public abstract addNewTcW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract addNewTextDirection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;
.end method

.method public abstract addNewVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;
.end method

.method public abstract addNewVMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVMerge;
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

.method public abstract getCnfStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getGridSpan()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getHMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHMerge;
.end method

.method public abstract getHeaders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeaders;
.end method

.method public abstract getHideMark()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getNoWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract getTcBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcBorders;
.end method

.method public abstract getTcFitText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getTcMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcMar;
.end method

.method public abstract getTcW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getTextDirection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;
.end method

.method public abstract getVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;
.end method

.method public abstract getVMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVMerge;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetCnfStyle()Z
.end method

.method public abstract isSetGridSpan()Z
.end method

.method public abstract isSetHMerge()Z
.end method

.method public abstract isSetHeaders()Z
.end method

.method public abstract isSetHideMark()Z
.end method

.method public abstract isSetNoWrap()Z
.end method

.method public abstract isSetShd()Z
.end method

.method public abstract isSetTcBorders()Z
.end method

.method public abstract isSetTcFitText()Z
.end method

.method public abstract isSetTcMar()Z
.end method

.method public abstract isSetTcW()Z
.end method

.method public abstract isSetTextDirection()Z
.end method

.method public abstract isSetVAlign()Z
.end method

.method public abstract isSetVMerge()Z
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

.method public abstract setCnfStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;)V
.end method

.method public abstract setGridSpan(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setHMerge(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHMerge;)V
.end method

.method public abstract setHeaders(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHeaders;)V
.end method

.method public abstract setHideMark(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNoWrap(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setShd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;)V
.end method

.method public abstract setTcBorders(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcBorders;)V
.end method

.method public abstract setTcFitText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setTcMar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcMar;)V
.end method

.method public abstract setTcW(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract setTextDirection(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;)V
.end method

.method public abstract setVAlign(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;)V
.end method

.method public abstract setVMerge(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVMerge;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetCnfStyle()V
.end method

.method public abstract unsetGridSpan()V
.end method

.method public abstract unsetHMerge()V
.end method

.method public abstract unsetHeaders()V
.end method

.method public abstract unsetHideMark()V
.end method

.method public abstract unsetNoWrap()V
.end method

.method public abstract unsetShd()V
.end method

.method public abstract unsetTcBorders()V
.end method

.method public abstract unsetTcFitText()V
.end method

.method public abstract unsetTcMar()V
.end method

.method public abstract unsetTcW()V
.end method

.method public abstract unsetTextDirection()V
.end method

.method public abstract unsetVAlign()V
.end method

.method public abstract unsetVMerge()V
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
