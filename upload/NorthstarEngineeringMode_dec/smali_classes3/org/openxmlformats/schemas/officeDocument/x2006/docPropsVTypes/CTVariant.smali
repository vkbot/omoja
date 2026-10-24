.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;",
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

    const-string v2, "ctvariantedcatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewArray()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTArray;
.end method

.method public abstract addNewEmpty()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTEmpty;
.end method

.method public abstract addNewNull()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTNull;
.end method

.method public abstract addNewVariant()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract addNewVector()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;
.end method

.method public abstract addNewVstream()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVstream;
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

.method public abstract getArray()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTArray;
.end method

.method public abstract getBlob()[B
.end method

.method public abstract getBool()Z
.end method

.method public abstract getBstr()Ljava/lang/String;
.end method

.method public abstract getClsid()Ljava/lang/String;
.end method

.method public abstract getCy()Ljava/lang/String;
.end method

.method public abstract getDate()Ljava/util/Calendar;
.end method

.method public abstract getDecimal()Ljava/math/BigDecimal;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEmpty()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTEmpty;
.end method

.method public abstract getError()Ljava/lang/String;
.end method

.method public abstract getFiletime()Ljava/util/Calendar;
.end method

.method public abstract getI1()B
.end method

.method public abstract getI2()S
.end method

.method public abstract getI4()I
.end method

.method public abstract getI8()J
.end method

.method public abstract getInt()I
.end method

.method public abstract getLpstr()Ljava/lang/String;
.end method

.method public abstract getLpwstr()Ljava/lang/String;
.end method

.method public abstract getNull()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTNull;
.end method

.method public abstract getOblob()[B
.end method

.method public abstract getOstorage()[B
.end method

.method public abstract getOstream()[B
.end method

.method public abstract getR4()F
.end method

.method public abstract getR8()D
.end method

.method public abstract getStorage()[B
.end method

.method public abstract getStream()[B
.end method

.method public abstract getUi1()S
.end method

.method public abstract getUi2()I
.end method

.method public abstract getUi4()J
.end method

.method public abstract getUi8()Ljava/math/BigInteger;
.end method

.method public abstract getUint()J
.end method

.method public abstract getVariant()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract getVector()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;
.end method

.method public abstract getVstream()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVstream;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetArray()Z
.end method

.method public abstract isSetBlob()Z
.end method

.method public abstract isSetBool()Z
.end method

.method public abstract isSetBstr()Z
.end method

.method public abstract isSetClsid()Z
.end method

.method public abstract isSetCy()Z
.end method

.method public abstract isSetDate()Z
.end method

.method public abstract isSetDecimal()Z
.end method

.method public abstract isSetEmpty()Z
.end method

.method public abstract isSetError()Z
.end method

.method public abstract isSetFiletime()Z
.end method

.method public abstract isSetI1()Z
.end method

.method public abstract isSetI2()Z
.end method

.method public abstract isSetI4()Z
.end method

.method public abstract isSetI8()Z
.end method

.method public abstract isSetInt()Z
.end method

.method public abstract isSetLpstr()Z
.end method

.method public abstract isSetLpwstr()Z
.end method

.method public abstract isSetNull()Z
.end method

.method public abstract isSetOblob()Z
.end method

.method public abstract isSetOstorage()Z
.end method

.method public abstract isSetOstream()Z
.end method

.method public abstract isSetR4()Z
.end method

.method public abstract isSetR8()Z
.end method

.method public abstract isSetStorage()Z
.end method

.method public abstract isSetStream()Z
.end method

.method public abstract isSetUi1()Z
.end method

.method public abstract isSetUi2()Z
.end method

.method public abstract isSetUi4()Z
.end method

.method public abstract isSetUi8()Z
.end method

.method public abstract isSetUint()Z
.end method

.method public abstract isSetVariant()Z
.end method

.method public abstract isSetVector()Z
.end method

.method public abstract isSetVstream()Z
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

.method public abstract setArray(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTArray;)V
.end method

.method public abstract setBlob([B)V
.end method

.method public abstract setBool(Z)V
.end method

.method public abstract setBstr(Ljava/lang/String;)V
.end method

.method public abstract setClsid(Ljava/lang/String;)V
.end method

.method public abstract setCy(Ljava/lang/String;)V
.end method

.method public abstract setDate(Ljava/util/Calendar;)V
.end method

.method public abstract setDecimal(Ljava/math/BigDecimal;)V
.end method

.method public abstract setEmpty(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTEmpty;)V
.end method

.method public abstract setError(Ljava/lang/String;)V
.end method

.method public abstract setFiletime(Ljava/util/Calendar;)V
.end method

.method public abstract setI1(B)V
.end method

.method public abstract setI2(S)V
.end method

.method public abstract setI4(I)V
.end method

.method public abstract setI8(J)V
.end method

.method public abstract setInt(I)V
.end method

.method public abstract setLpstr(Ljava/lang/String;)V
.end method

.method public abstract setLpwstr(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNull(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTNull;)V
.end method

.method public abstract setOblob([B)V
.end method

.method public abstract setOstorage([B)V
.end method

.method public abstract setOstream([B)V
.end method

.method public abstract setR4(F)V
.end method

.method public abstract setR8(D)V
.end method

.method public abstract setStorage([B)V
.end method

.method public abstract setStream([B)V
.end method

.method public abstract setUi1(S)V
.end method

.method public abstract setUi2(I)V
.end method

.method public abstract setUi4(J)V
.end method

.method public abstract setUi8(Ljava/math/BigInteger;)V
.end method

.method public abstract setUint(J)V
.end method

.method public abstract setVariant(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;)V
.end method

.method public abstract setVector(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;)V
.end method

.method public abstract setVstream(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVstream;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetArray()V
.end method

.method public abstract unsetBlob()V
.end method

.method public abstract unsetBool()V
.end method

.method public abstract unsetBstr()V
.end method

.method public abstract unsetClsid()V
.end method

.method public abstract unsetCy()V
.end method

.method public abstract unsetDate()V
.end method

.method public abstract unsetDecimal()V
.end method

.method public abstract unsetEmpty()V
.end method

.method public abstract unsetError()V
.end method

.method public abstract unsetFiletime()V
.end method

.method public abstract unsetI1()V
.end method

.method public abstract unsetI2()V
.end method

.method public abstract unsetI4()V
.end method

.method public abstract unsetI8()V
.end method

.method public abstract unsetInt()V
.end method

.method public abstract unsetLpstr()V
.end method

.method public abstract unsetLpwstr()V
.end method

.method public abstract unsetNull()V
.end method

.method public abstract unsetOblob()V
.end method

.method public abstract unsetOstorage()V
.end method

.method public abstract unsetOstream()V
.end method

.method public abstract unsetR4()V
.end method

.method public abstract unsetR8()V
.end method

.method public abstract unsetStorage()V
.end method

.method public abstract unsetStream()V
.end method

.method public abstract unsetUi1()V
.end method

.method public abstract unsetUi2()V
.end method

.method public abstract unsetUi4()V
.end method

.method public abstract unsetUi8()V
.end method

.method public abstract unsetUint()V
.end method

.method public abstract unsetVariant()V
.end method

.method public abstract unsetVector()V
.end method

.method public abstract unsetVstream()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetBlob()Li5/k0;
.end method

.method public abstract xgetBool()Li5/m0;
.end method

.method public abstract xgetBstr()Li5/g2;
.end method

.method public abstract xgetClsid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetCy()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract xgetDate()Li5/r0;
.end method

.method public abstract xgetDecimal()Li5/s0;
.end method

.method public abstract xgetError()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract xgetFiletime()Li5/r0;
.end method

.method public abstract xgetI1()Li5/n0;
.end method

.method public abstract xgetI2()Li5/e2;
.end method

.method public abstract xgetI4()Li5/l1;
.end method

.method public abstract xgetI8()Li5/p1;
.end method

.method public abstract xgetInt()Li5/l1;
.end method

.method public abstract xgetLpstr()Li5/g2;
.end method

.method public abstract xgetLpwstr()Li5/g2;
.end method

.method public abstract xgetOblob()Li5/k0;
.end method

.method public abstract xgetOstorage()Li5/k0;
.end method

.method public abstract xgetOstream()Li5/k0;
.end method

.method public abstract xgetR4()Li5/b1;
.end method

.method public abstract xgetR8()Li5/u0;
.end method

.method public abstract xgetStorage()Li5/k0;
.end method

.method public abstract xgetStream()Li5/k0;
.end method

.method public abstract xgetUi1()Li5/k2;
.end method

.method public abstract xgetUi2()Li5/n2;
.end method

.method public abstract xgetUi4()Li5/l2;
.end method

.method public abstract xgetUi8()Li5/m2;
.end method

.method public abstract xgetUint()Li5/l2;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetBlob(Li5/k0;)V
.end method

.method public abstract xsetBool(Li5/m0;)V
.end method

.method public abstract xsetBstr(Li5/g2;)V
.end method

.method public abstract xsetClsid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetCy(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;)V
.end method

.method public abstract xsetDate(Li5/r0;)V
.end method

.method public abstract xsetDecimal(Li5/s0;)V
.end method

.method public abstract xsetError(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;)V
.end method

.method public abstract xsetFiletime(Li5/r0;)V
.end method

.method public abstract xsetI1(Li5/n0;)V
.end method

.method public abstract xsetI2(Li5/e2;)V
.end method

.method public abstract xsetI4(Li5/l1;)V
.end method

.method public abstract xsetI8(Li5/p1;)V
.end method

.method public abstract xsetInt(Li5/l1;)V
.end method

.method public abstract xsetLpstr(Li5/g2;)V
.end method

.method public abstract xsetLpwstr(Li5/g2;)V
.end method

.method public abstract xsetOblob(Li5/k0;)V
.end method

.method public abstract xsetOstorage(Li5/k0;)V
.end method

.method public abstract xsetOstream(Li5/k0;)V
.end method

.method public abstract xsetR4(Li5/b1;)V
.end method

.method public abstract xsetR8(Li5/u0;)V
.end method

.method public abstract xsetStorage(Li5/k0;)V
.end method

.method public abstract xsetStream(Li5/k0;)V
.end method

.method public abstract xsetUi1(Li5/k2;)V
.end method

.method public abstract xsetUi2(Li5/n2;)V
.end method

.method public abstract xsetUi4(Li5/l2;)V
.end method

.method public abstract xsetUi8(Li5/m2;)V
.end method

.method public abstract xsetUint(Li5/l2;)V
.end method
