.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;",
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

    const-string v2, "ctshareditems677atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewB()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
.end method

.method public abstract addNewD()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
.end method

.method public abstract addNewE()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract addNewM()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract addNewN()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract addNewS()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
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

.method public abstract getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
.end method

.method public abstract getBArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
.end method

.method public abstract getBList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContainsBlank()Z
.end method

.method public abstract getContainsDate()Z
.end method

.method public abstract getContainsInteger()Z
.end method

.method public abstract getContainsMixedTypes()Z
.end method

.method public abstract getContainsNonDate()Z
.end method

.method public abstract getContainsNumber()Z
.end method

.method public abstract getContainsSemiMixedTypes()Z
.end method

.method public abstract getContainsString()Z
.end method

.method public abstract getCount()J
.end method

.method public abstract getDArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
.end method

.method public abstract getDArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
.end method

.method public abstract getDList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract getEArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract getEList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongText()Z
.end method

.method public abstract getMArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract getMArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract getMList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxDate()Ljava/util/Calendar;
.end method

.method public abstract getMaxValue()D
.end method

.method public abstract getMinDate()Ljava/util/Calendar;
.end method

.method public abstract getMinValue()D
.end method

.method public abstract getNArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract getNArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract getNList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
.end method

.method public abstract getSArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
.end method

.method public abstract getSList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewB(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
.end method

.method public abstract insertNewD(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
.end method

.method public abstract insertNewE(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract insertNewM(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract insertNewN(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract insertNewS(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetContainsBlank()Z
.end method

.method public abstract isSetContainsDate()Z
.end method

.method public abstract isSetContainsInteger()Z
.end method

.method public abstract isSetContainsMixedTypes()Z
.end method

.method public abstract isSetContainsNonDate()Z
.end method

.method public abstract isSetContainsNumber()Z
.end method

.method public abstract isSetContainsSemiMixedTypes()Z
.end method

.method public abstract isSetContainsString()Z
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetLongText()Z
.end method

.method public abstract isSetMaxDate()Z
.end method

.method public abstract isSetMaxValue()Z
.end method

.method public abstract isSetMinDate()Z
.end method

.method public abstract isSetMinValue()Z
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

.method public abstract removeB(I)V
.end method

.method public abstract removeD(I)V
.end method

.method public abstract removeE(I)V
.end method

.method public abstract removeM(I)V
.end method

.method public abstract removeN(I)V
.end method

.method public abstract removeS(I)V
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

.method public abstract setBArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;)V
.end method

.method public abstract setBArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;)V
.end method

.method public abstract setContainsBlank(Z)V
.end method

.method public abstract setContainsDate(Z)V
.end method

.method public abstract setContainsInteger(Z)V
.end method

.method public abstract setContainsMixedTypes(Z)V
.end method

.method public abstract setContainsNonDate(Z)V
.end method

.method public abstract setContainsNumber(Z)V
.end method

.method public abstract setContainsSemiMixedTypes(Z)V
.end method

.method public abstract setContainsString(Z)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setDArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;)V
.end method

.method public abstract setDArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;)V
.end method

.method public abstract setEArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;)V
.end method

.method public abstract setEArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;)V
.end method

.method public abstract setLongText(Z)V
.end method

.method public abstract setMArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;)V
.end method

.method public abstract setMArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;)V
.end method

.method public abstract setMaxDate(Ljava/util/Calendar;)V
.end method

.method public abstract setMaxValue(D)V
.end method

.method public abstract setMinDate(Ljava/util/Calendar;)V
.end method

.method public abstract setMinValue(D)V
.end method

.method public abstract setNArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;)V
.end method

.method public abstract setNArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setSArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;)V
.end method

.method public abstract setSArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;)V
.end method

.method public abstract sizeOfBArray()I
.end method

.method public abstract sizeOfDArray()I
.end method

.method public abstract sizeOfEArray()I
.end method

.method public abstract sizeOfMArray()I
.end method

.method public abstract sizeOfNArray()I
.end method

.method public abstract sizeOfSArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetContainsBlank()V
.end method

.method public abstract unsetContainsDate()V
.end method

.method public abstract unsetContainsInteger()V
.end method

.method public abstract unsetContainsMixedTypes()V
.end method

.method public abstract unsetContainsNonDate()V
.end method

.method public abstract unsetContainsNumber()V
.end method

.method public abstract unsetContainsSemiMixedTypes()V
.end method

.method public abstract unsetContainsString()V
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetLongText()V
.end method

.method public abstract unsetMaxDate()V
.end method

.method public abstract unsetMaxValue()V
.end method

.method public abstract unsetMinDate()V
.end method

.method public abstract unsetMinValue()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetContainsBlank()Li5/m0;
.end method

.method public abstract xgetContainsDate()Li5/m0;
.end method

.method public abstract xgetContainsInteger()Li5/m0;
.end method

.method public abstract xgetContainsMixedTypes()Li5/m0;
.end method

.method public abstract xgetContainsNonDate()Li5/m0;
.end method

.method public abstract xgetContainsNumber()Li5/m0;
.end method

.method public abstract xgetContainsSemiMixedTypes()Li5/m0;
.end method

.method public abstract xgetContainsString()Li5/m0;
.end method

.method public abstract xgetCount()Li5/l2;
.end method

.method public abstract xgetLongText()Li5/m0;
.end method

.method public abstract xgetMaxDate()Li5/r0;
.end method

.method public abstract xgetMaxValue()Li5/u0;
.end method

.method public abstract xgetMinDate()Li5/r0;
.end method

.method public abstract xgetMinValue()Li5/u0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetContainsBlank(Li5/m0;)V
.end method

.method public abstract xsetContainsDate(Li5/m0;)V
.end method

.method public abstract xsetContainsInteger(Li5/m0;)V
.end method

.method public abstract xsetContainsMixedTypes(Li5/m0;)V
.end method

.method public abstract xsetContainsNonDate(Li5/m0;)V
.end method

.method public abstract xsetContainsNumber(Li5/m0;)V
.end method

.method public abstract xsetContainsSemiMixedTypes(Li5/m0;)V
.end method

.method public abstract xsetContainsString(Li5/m0;)V
.end method

.method public abstract xsetCount(Li5/l2;)V
.end method

.method public abstract xsetLongText(Li5/m0;)V
.end method

.method public abstract xsetMaxDate(Li5/r0;)V
.end method

.method public abstract xsetMaxValue(Li5/u0;)V
.end method

.method public abstract xsetMinDate(Li5/r0;)V
.end method

.method public abstract xsetMinValue(Li5/u0;)V
.end method
