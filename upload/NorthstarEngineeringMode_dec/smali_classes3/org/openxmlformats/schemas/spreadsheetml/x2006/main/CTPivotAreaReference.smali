.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;",
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

    const-string v2, "ctpivotareareferencee5a5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReference;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewX()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;
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

.method public abstract getAvgSubtotal()Z
.end method

.method public abstract getByPosition()Z
.end method

.method public abstract getCount()J
.end method

.method public abstract getCountASubtotal()Z
.end method

.method public abstract getCountSubtotal()Z
.end method

.method public abstract getDefaultSubtotal()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getField()J
.end method

.method public abstract getMaxSubtotal()Z
.end method

.method public abstract getMinSubtotal()Z
.end method

.method public abstract getProductSubtotal()Z
.end method

.method public abstract getRelative()Z
.end method

.method public abstract getSelected()Z
.end method

.method public abstract getStdDevPSubtotal()Z
.end method

.method public abstract getStdDevSubtotal()Z
.end method

.method public abstract getSumSubtotal()Z
.end method

.method public abstract getVarPSubtotal()Z
.end method

.method public abstract getVarSubtotal()Z
.end method

.method public abstract getXArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;
.end method

.method public abstract getXArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;
.end method

.method public abstract getXList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewX(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAvgSubtotal()Z
.end method

.method public abstract isSetByPosition()Z
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetCountASubtotal()Z
.end method

.method public abstract isSetCountSubtotal()Z
.end method

.method public abstract isSetDefaultSubtotal()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetField()Z
.end method

.method public abstract isSetMaxSubtotal()Z
.end method

.method public abstract isSetMinSubtotal()Z
.end method

.method public abstract isSetProductSubtotal()Z
.end method

.method public abstract isSetRelative()Z
.end method

.method public abstract isSetSelected()Z
.end method

.method public abstract isSetStdDevPSubtotal()Z
.end method

.method public abstract isSetStdDevSubtotal()Z
.end method

.method public abstract isSetSumSubtotal()Z
.end method

.method public abstract isSetVarPSubtotal()Z
.end method

.method public abstract isSetVarSubtotal()Z
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

.method public abstract removeX(I)V
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

.method public abstract setAvgSubtotal(Z)V
.end method

.method public abstract setByPosition(Z)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setCountASubtotal(Z)V
.end method

.method public abstract setCountSubtotal(Z)V
.end method

.method public abstract setDefaultSubtotal(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setField(J)V
.end method

.method public abstract setMaxSubtotal(Z)V
.end method

.method public abstract setMinSubtotal(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setProductSubtotal(Z)V
.end method

.method public abstract setRelative(Z)V
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract setStdDevPSubtotal(Z)V
.end method

.method public abstract setStdDevSubtotal(Z)V
.end method

.method public abstract setSumSubtotal(Z)V
.end method

.method public abstract setVarPSubtotal(Z)V
.end method

.method public abstract setVarSubtotal(Z)V
.end method

.method public abstract setXArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;)V
.end method

.method public abstract setXArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndex;)V
.end method

.method public abstract sizeOfXArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAvgSubtotal()V
.end method

.method public abstract unsetByPosition()V
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetCountASubtotal()V
.end method

.method public abstract unsetCountSubtotal()V
.end method

.method public abstract unsetDefaultSubtotal()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetField()V
.end method

.method public abstract unsetMaxSubtotal()V
.end method

.method public abstract unsetMinSubtotal()V
.end method

.method public abstract unsetProductSubtotal()V
.end method

.method public abstract unsetRelative()V
.end method

.method public abstract unsetSelected()V
.end method

.method public abstract unsetStdDevPSubtotal()V
.end method

.method public abstract unsetStdDevSubtotal()V
.end method

.method public abstract unsetSumSubtotal()V
.end method

.method public abstract unsetVarPSubtotal()V
.end method

.method public abstract unsetVarSubtotal()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAvgSubtotal()Li5/m0;
.end method

.method public abstract xgetByPosition()Li5/m0;
.end method

.method public abstract xgetCount()Li5/l2;
.end method

.method public abstract xgetCountASubtotal()Li5/m0;
.end method

.method public abstract xgetCountSubtotal()Li5/m0;
.end method

.method public abstract xgetDefaultSubtotal()Li5/m0;
.end method

.method public abstract xgetField()Li5/l2;
.end method

.method public abstract xgetMaxSubtotal()Li5/m0;
.end method

.method public abstract xgetMinSubtotal()Li5/m0;
.end method

.method public abstract xgetProductSubtotal()Li5/m0;
.end method

.method public abstract xgetRelative()Li5/m0;
.end method

.method public abstract xgetSelected()Li5/m0;
.end method

.method public abstract xgetStdDevPSubtotal()Li5/m0;
.end method

.method public abstract xgetStdDevSubtotal()Li5/m0;
.end method

.method public abstract xgetSumSubtotal()Li5/m0;
.end method

.method public abstract xgetVarPSubtotal()Li5/m0;
.end method

.method public abstract xgetVarSubtotal()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAvgSubtotal(Li5/m0;)V
.end method

.method public abstract xsetByPosition(Li5/m0;)V
.end method

.method public abstract xsetCount(Li5/l2;)V
.end method

.method public abstract xsetCountASubtotal(Li5/m0;)V
.end method

.method public abstract xsetCountSubtotal(Li5/m0;)V
.end method

.method public abstract xsetDefaultSubtotal(Li5/m0;)V
.end method

.method public abstract xsetField(Li5/l2;)V
.end method

.method public abstract xsetMaxSubtotal(Li5/m0;)V
.end method

.method public abstract xsetMinSubtotal(Li5/m0;)V
.end method

.method public abstract xsetProductSubtotal(Li5/m0;)V
.end method

.method public abstract xsetRelative(Li5/m0;)V
.end method

.method public abstract xsetSelected(Li5/m0;)V
.end method

.method public abstract xsetStdDevPSubtotal(Li5/m0;)V
.end method

.method public abstract xsetStdDevSubtotal(Li5/m0;)V
.end method

.method public abstract xsetSumSubtotal(Li5/m0;)V
.end method

.method public abstract xsetVarPSubtotal(Li5/m0;)V
.end method

.method public abstract xsetVarSubtotal(Li5/m0;)V
.end method
