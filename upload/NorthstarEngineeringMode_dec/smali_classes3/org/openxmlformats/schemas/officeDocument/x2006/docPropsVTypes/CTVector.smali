.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;",
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

    const-string v2, "ctvectorc3e2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addBool(Z)V
.end method

.method public abstract addBstr(Ljava/lang/String;)V
.end method

.method public abstract addClsid(Ljava/lang/String;)V
.end method

.method public abstract addCy(Ljava/lang/String;)V
.end method

.method public abstract addDate(Ljava/util/Calendar;)V
.end method

.method public abstract addError(Ljava/lang/String;)V
.end method

.method public abstract addFiletime(Ljava/util/Calendar;)V
.end method

.method public abstract addI1(B)V
.end method

.method public abstract addI2(S)V
.end method

.method public abstract addI4(I)V
.end method

.method public abstract addI8(J)V
.end method

.method public abstract addLpstr(Ljava/lang/String;)V
.end method

.method public abstract addLpwstr(Ljava/lang/String;)V
.end method

.method public abstract addNewBool()Li5/m0;
.end method

.method public abstract addNewBstr()Li5/g2;
.end method

.method public abstract addNewClsid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract addNewCy()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract addNewDate()Li5/r0;
.end method

.method public abstract addNewError()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract addNewFiletime()Li5/r0;
.end method

.method public abstract addNewI1()Li5/n0;
.end method

.method public abstract addNewI2()Li5/e2;
.end method

.method public abstract addNewI4()Li5/l1;
.end method

.method public abstract addNewI8()Li5/p1;
.end method

.method public abstract addNewLpstr()Li5/g2;
.end method

.method public abstract addNewLpwstr()Li5/g2;
.end method

.method public abstract addNewR4()Li5/b1;
.end method

.method public abstract addNewR8()Li5/u0;
.end method

.method public abstract addNewUi1()Li5/k2;
.end method

.method public abstract addNewUi2()Li5/n2;
.end method

.method public abstract addNewUi4()Li5/l2;
.end method

.method public abstract addNewUi8()Li5/m2;
.end method

.method public abstract addNewVariant()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract addR4(F)V
.end method

.method public abstract addR8(D)V
.end method

.method public abstract addUi1(S)V
.end method

.method public abstract addUi2(I)V
.end method

.method public abstract addUi4(J)V
.end method

.method public abstract addUi8(Ljava/math/BigInteger;)V
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

.method public abstract getBaseType()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;
.end method

.method public abstract getBoolArray(I)Z
.end method

.method public abstract getBoolArray()[Z
.end method

.method public abstract getBoolList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBstrArray(I)Ljava/lang/String;
.end method

.method public abstract getBstrArray()[Ljava/lang/String;
.end method

.method public abstract getBstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClsidArray(I)Ljava/lang/String;
.end method

.method public abstract getClsidArray()[Ljava/lang/String;
.end method

.method public abstract getClsidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCyArray(I)Ljava/lang/String;
.end method

.method public abstract getCyArray()[Ljava/lang/String;
.end method

.method public abstract getCyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDateArray(I)Ljava/util/Calendar;
.end method

.method public abstract getDateArray()[Ljava/util/Calendar;
.end method

.method public abstract getDateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getErrorArray(I)Ljava/lang/String;
.end method

.method public abstract getErrorArray()[Ljava/lang/String;
.end method

.method public abstract getErrorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFiletimeArray(I)Ljava/util/Calendar;
.end method

.method public abstract getFiletimeArray()[Ljava/util/Calendar;
.end method

.method public abstract getFiletimeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getI1Array(I)B
.end method

.method public abstract getI1Array()[B
.end method

.method public abstract getI1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getI2Array(I)S
.end method

.method public abstract getI2Array()[S
.end method

.method public abstract getI2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getI4Array(I)I
.end method

.method public abstract getI4Array()[I
.end method

.method public abstract getI4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getI8Array(I)J
.end method

.method public abstract getI8Array()[J
.end method

.method public abstract getI8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLpstrArray(I)Ljava/lang/String;
.end method

.method public abstract getLpstrArray()[Ljava/lang/String;
.end method

.method public abstract getLpstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLpwstrArray(I)Ljava/lang/String;
.end method

.method public abstract getLpwstrArray()[Ljava/lang/String;
.end method

.method public abstract getLpwstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getR4Array(I)F
.end method

.method public abstract getR4Array()[F
.end method

.method public abstract getR4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getR8Array(I)D
.end method

.method public abstract getR8Array()[D
.end method

.method public abstract getR8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSize()J
.end method

.method public abstract getUi1Array(I)S
.end method

.method public abstract getUi1Array()[S
.end method

.method public abstract getUi1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUi2Array(I)I
.end method

.method public abstract getUi2Array()[I
.end method

.method public abstract getUi2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUi4Array(I)J
.end method

.method public abstract getUi4Array()[J
.end method

.method public abstract getUi4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUi8Array(I)Ljava/math/BigInteger;
.end method

.method public abstract getUi8Array()[Ljava/math/BigInteger;
.end method

.method public abstract getUi8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVariantArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract getVariantArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract getVariantList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertBool(IZ)V
.end method

.method public abstract insertBstr(ILjava/lang/String;)V
.end method

.method public abstract insertClsid(ILjava/lang/String;)V
.end method

.method public abstract insertCy(ILjava/lang/String;)V
.end method

.method public abstract insertDate(ILjava/util/Calendar;)V
.end method

.method public abstract insertError(ILjava/lang/String;)V
.end method

.method public abstract insertFiletime(ILjava/util/Calendar;)V
.end method

.method public abstract insertI1(IB)V
.end method

.method public abstract insertI2(IS)V
.end method

.method public abstract insertI4(II)V
.end method

.method public abstract insertI8(IJ)V
.end method

.method public abstract insertLpstr(ILjava/lang/String;)V
.end method

.method public abstract insertLpwstr(ILjava/lang/String;)V
.end method

.method public abstract insertNewBool(I)Li5/m0;
.end method

.method public abstract insertNewBstr(I)Li5/g2;
.end method

.method public abstract insertNewClsid(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract insertNewCy(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract insertNewDate(I)Li5/r0;
.end method

.method public abstract insertNewError(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract insertNewFiletime(I)Li5/r0;
.end method

.method public abstract insertNewI1(I)Li5/n0;
.end method

.method public abstract insertNewI2(I)Li5/e2;
.end method

.method public abstract insertNewI4(I)Li5/l1;
.end method

.method public abstract insertNewI8(I)Li5/p1;
.end method

.method public abstract insertNewLpstr(I)Li5/g2;
.end method

.method public abstract insertNewLpwstr(I)Li5/g2;
.end method

.method public abstract insertNewR4(I)Li5/b1;
.end method

.method public abstract insertNewR8(I)Li5/u0;
.end method

.method public abstract insertNewUi1(I)Li5/k2;
.end method

.method public abstract insertNewUi2(I)Li5/n2;
.end method

.method public abstract insertNewUi4(I)Li5/l2;
.end method

.method public abstract insertNewUi8(I)Li5/m2;
.end method

.method public abstract insertNewVariant(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract insertR4(IF)V
.end method

.method public abstract insertR8(ID)V
.end method

.method public abstract insertUi1(IS)V
.end method

.method public abstract insertUi2(II)V
.end method

.method public abstract insertUi4(IJ)V
.end method

.method public abstract insertUi8(ILjava/math/BigInteger;)V
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

.method public abstract removeBool(I)V
.end method

.method public abstract removeBstr(I)V
.end method

.method public abstract removeClsid(I)V
.end method

.method public abstract removeCy(I)V
.end method

.method public abstract removeDate(I)V
.end method

.method public abstract removeError(I)V
.end method

.method public abstract removeFiletime(I)V
.end method

.method public abstract removeI1(I)V
.end method

.method public abstract removeI2(I)V
.end method

.method public abstract removeI4(I)V
.end method

.method public abstract removeI8(I)V
.end method

.method public abstract removeLpstr(I)V
.end method

.method public abstract removeLpwstr(I)V
.end method

.method public abstract removeR4(I)V
.end method

.method public abstract removeR8(I)V
.end method

.method public abstract removeUi1(I)V
.end method

.method public abstract removeUi2(I)V
.end method

.method public abstract removeUi4(I)V
.end method

.method public abstract removeUi8(I)V
.end method

.method public abstract removeVariant(I)V
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

.method public abstract setBaseType(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;)V
.end method

.method public abstract setBoolArray(IZ)V
.end method

.method public abstract setBoolArray([Z)V
.end method

.method public abstract setBstrArray(ILjava/lang/String;)V
.end method

.method public abstract setBstrArray([Ljava/lang/String;)V
.end method

.method public abstract setClsidArray(ILjava/lang/String;)V
.end method

.method public abstract setClsidArray([Ljava/lang/String;)V
.end method

.method public abstract setCyArray(ILjava/lang/String;)V
.end method

.method public abstract setCyArray([Ljava/lang/String;)V
.end method

.method public abstract setDateArray(ILjava/util/Calendar;)V
.end method

.method public abstract setDateArray([Ljava/util/Calendar;)V
.end method

.method public abstract setErrorArray(ILjava/lang/String;)V
.end method

.method public abstract setErrorArray([Ljava/lang/String;)V
.end method

.method public abstract setFiletimeArray(ILjava/util/Calendar;)V
.end method

.method public abstract setFiletimeArray([Ljava/util/Calendar;)V
.end method

.method public abstract setI1Array(IB)V
.end method

.method public abstract setI1Array([B)V
.end method

.method public abstract setI2Array(IS)V
.end method

.method public abstract setI2Array([S)V
.end method

.method public abstract setI4Array(II)V
.end method

.method public abstract setI4Array([I)V
.end method

.method public abstract setI8Array(IJ)V
.end method

.method public abstract setI8Array([J)V
.end method

.method public abstract setLpstrArray(ILjava/lang/String;)V
.end method

.method public abstract setLpstrArray([Ljava/lang/String;)V
.end method

.method public abstract setLpwstrArray(ILjava/lang/String;)V
.end method

.method public abstract setLpwstrArray([Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setR4Array(IF)V
.end method

.method public abstract setR4Array([F)V
.end method

.method public abstract setR8Array(ID)V
.end method

.method public abstract setR8Array([D)V
.end method

.method public abstract setSize(J)V
.end method

.method public abstract setUi1Array(IS)V
.end method

.method public abstract setUi1Array([S)V
.end method

.method public abstract setUi2Array(II)V
.end method

.method public abstract setUi2Array([I)V
.end method

.method public abstract setUi4Array(IJ)V
.end method

.method public abstract setUi4Array([J)V
.end method

.method public abstract setUi8Array(ILjava/math/BigInteger;)V
.end method

.method public abstract setUi8Array([Ljava/math/BigInteger;)V
.end method

.method public abstract setVariantArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;)V
.end method

.method public abstract setVariantArray([Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;)V
.end method

.method public abstract sizeOfBoolArray()I
.end method

.method public abstract sizeOfBstrArray()I
.end method

.method public abstract sizeOfClsidArray()I
.end method

.method public abstract sizeOfCyArray()I
.end method

.method public abstract sizeOfDateArray()I
.end method

.method public abstract sizeOfErrorArray()I
.end method

.method public abstract sizeOfFiletimeArray()I
.end method

.method public abstract sizeOfI1Array()I
.end method

.method public abstract sizeOfI2Array()I
.end method

.method public abstract sizeOfI4Array()I
.end method

.method public abstract sizeOfI8Array()I
.end method

.method public abstract sizeOfLpstrArray()I
.end method

.method public abstract sizeOfLpwstrArray()I
.end method

.method public abstract sizeOfR4Array()I
.end method

.method public abstract sizeOfR8Array()I
.end method

.method public abstract sizeOfUi1Array()I
.end method

.method public abstract sizeOfUi2Array()I
.end method

.method public abstract sizeOfUi4Array()I
.end method

.method public abstract sizeOfUi8Array()I
.end method

.method public abstract sizeOfVariantArray()I
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

.method public abstract xgetBaseType()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;
.end method

.method public abstract xgetBoolArray(I)Li5/m0;
.end method

.method public abstract xgetBoolArray()[Li5/m0;
.end method

.method public abstract xgetBoolList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/m0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetBstrArray(I)Li5/g2;
.end method

.method public abstract xgetBstrArray()[Li5/g2;
.end method

.method public abstract xgetBstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/g2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetClsidArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetClsidArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetClsidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCyArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract xgetCyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract xgetCyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDateArray(I)Li5/r0;
.end method

.method public abstract xgetDateArray()[Li5/r0;
.end method

.method public abstract xgetDateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/r0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetErrorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract xgetErrorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract xgetErrorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetFiletimeArray(I)Li5/r0;
.end method

.method public abstract xgetFiletimeArray()[Li5/r0;
.end method

.method public abstract xgetFiletimeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/r0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetI1Array(I)Li5/n0;
.end method

.method public abstract xgetI1Array()[Li5/n0;
.end method

.method public abstract xgetI1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/n0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetI2Array(I)Li5/e2;
.end method

.method public abstract xgetI2Array()[Li5/e2;
.end method

.method public abstract xgetI2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/e2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetI4Array(I)Li5/l1;
.end method

.method public abstract xgetI4Array()[Li5/l1;
.end method

.method public abstract xgetI4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/l1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetI8Array(I)Li5/p1;
.end method

.method public abstract xgetI8Array()[Li5/p1;
.end method

.method public abstract xgetI8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/p1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetLpstrArray(I)Li5/g2;
.end method

.method public abstract xgetLpstrArray()[Li5/g2;
.end method

.method public abstract xgetLpstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/g2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetLpwstrArray(I)Li5/g2;
.end method

.method public abstract xgetLpwstrArray()[Li5/g2;
.end method

.method public abstract xgetLpwstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/g2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetR4Array(I)Li5/b1;
.end method

.method public abstract xgetR4Array()[Li5/b1;
.end method

.method public abstract xgetR4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/b1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetR8Array(I)Li5/u0;
.end method

.method public abstract xgetR8Array()[Li5/u0;
.end method

.method public abstract xgetR8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/u0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetSize()Li5/l2;
.end method

.method public abstract xgetUi1Array(I)Li5/k2;
.end method

.method public abstract xgetUi1Array()[Li5/k2;
.end method

.method public abstract xgetUi1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/k2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetUi2Array(I)Li5/n2;
.end method

.method public abstract xgetUi2Array()[Li5/n2;
.end method

.method public abstract xgetUi2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/n2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetUi4Array(I)Li5/l2;
.end method

.method public abstract xgetUi4Array()[Li5/l2;
.end method

.method public abstract xgetUi4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/l2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetUi8Array(I)Li5/m2;
.end method

.method public abstract xgetUi8Array()[Li5/m2;
.end method

.method public abstract xgetUi8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/m2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetBaseType(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;)V
.end method

.method public abstract xsetBoolArray(ILi5/m0;)V
.end method

.method public abstract xsetBoolArray([Li5/m0;)V
.end method

.method public abstract xsetBstrArray(ILi5/g2;)V
.end method

.method public abstract xsetBstrArray([Li5/g2;)V
.end method

.method public abstract xsetClsidArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetClsidArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetCyArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;)V
.end method

.method public abstract xsetCyArray([Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;)V
.end method

.method public abstract xsetDateArray(ILi5/r0;)V
.end method

.method public abstract xsetDateArray([Li5/r0;)V
.end method

.method public abstract xsetErrorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;)V
.end method

.method public abstract xsetErrorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;)V
.end method

.method public abstract xsetFiletimeArray(ILi5/r0;)V
.end method

.method public abstract xsetFiletimeArray([Li5/r0;)V
.end method

.method public abstract xsetI1Array(ILi5/n0;)V
.end method

.method public abstract xsetI1Array([Li5/n0;)V
.end method

.method public abstract xsetI2Array(ILi5/e2;)V
.end method

.method public abstract xsetI2Array([Li5/e2;)V
.end method

.method public abstract xsetI4Array(ILi5/l1;)V
.end method

.method public abstract xsetI4Array([Li5/l1;)V
.end method

.method public abstract xsetI8Array(ILi5/p1;)V
.end method

.method public abstract xsetI8Array([Li5/p1;)V
.end method

.method public abstract xsetLpstrArray(ILi5/g2;)V
.end method

.method public abstract xsetLpstrArray([Li5/g2;)V
.end method

.method public abstract xsetLpwstrArray(ILi5/g2;)V
.end method

.method public abstract xsetLpwstrArray([Li5/g2;)V
.end method

.method public abstract xsetR4Array(ILi5/b1;)V
.end method

.method public abstract xsetR4Array([Li5/b1;)V
.end method

.method public abstract xsetR8Array(ILi5/u0;)V
.end method

.method public abstract xsetR8Array([Li5/u0;)V
.end method

.method public abstract xsetSize(Li5/l2;)V
.end method

.method public abstract xsetUi1Array(ILi5/k2;)V
.end method

.method public abstract xsetUi1Array([Li5/k2;)V
.end method

.method public abstract xsetUi2Array(ILi5/n2;)V
.end method

.method public abstract xsetUi2Array([Li5/n2;)V
.end method

.method public abstract xsetUi4Array(ILi5/l2;)V
.end method

.method public abstract xsetUi4Array([Li5/l2;)V
.end method

.method public abstract xsetUi8Array(ILi5/m2;)V
.end method

.method public abstract xsetUi8Array([Li5/m2;)V
.end method
