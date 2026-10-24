.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;",
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

    const-string v2, "ctpivotarea26cetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewReferences()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReferences;
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

.method public abstract getAxis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;
.end method

.method public abstract getCacheIndex()Z
.end method

.method public abstract getCollapsedLevelsAreSubtotals()Z
.end method

.method public abstract getDataOnly()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getField()I
.end method

.method public abstract getFieldPosition()J
.end method

.method public abstract getGrandCol()Z
.end method

.method public abstract getGrandRow()Z
.end method

.method public abstract getLabelOnly()Z
.end method

.method public abstract getOffset()Ljava/lang/String;
.end method

.method public abstract getOutline()Z
.end method

.method public abstract getReferences()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReferences;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAxis()Z
.end method

.method public abstract isSetCacheIndex()Z
.end method

.method public abstract isSetCollapsedLevelsAreSubtotals()Z
.end method

.method public abstract isSetDataOnly()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetField()Z
.end method

.method public abstract isSetFieldPosition()Z
.end method

.method public abstract isSetGrandCol()Z
.end method

.method public abstract isSetGrandRow()Z
.end method

.method public abstract isSetLabelOnly()Z
.end method

.method public abstract isSetOffset()Z
.end method

.method public abstract isSetOutline()Z
.end method

.method public abstract isSetReferences()Z
.end method

.method public abstract isSetType()Z
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

.method public abstract setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V
.end method

.method public abstract setCacheIndex(Z)V
.end method

.method public abstract setCollapsedLevelsAreSubtotals(Z)V
.end method

.method public abstract setDataOnly(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setField(I)V
.end method

.method public abstract setFieldPosition(J)V
.end method

.method public abstract setGrandCol(Z)V
.end method

.method public abstract setGrandRow(Z)V
.end method

.method public abstract setLabelOnly(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOffset(Ljava/lang/String;)V
.end method

.method public abstract setOutline(Z)V
.end method

.method public abstract setReferences(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotAreaReferences;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType$Enum;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAxis()V
.end method

.method public abstract unsetCacheIndex()V
.end method

.method public abstract unsetCollapsedLevelsAreSubtotals()V
.end method

.method public abstract unsetDataOnly()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetField()V
.end method

.method public abstract unsetFieldPosition()V
.end method

.method public abstract unsetGrandCol()V
.end method

.method public abstract unsetGrandRow()V
.end method

.method public abstract unsetLabelOnly()V
.end method

.method public abstract unsetOffset()V
.end method

.method public abstract unsetOutline()V
.end method

.method public abstract unsetReferences()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAxis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;
.end method

.method public abstract xgetCacheIndex()Li5/m0;
.end method

.method public abstract xgetCollapsedLevelsAreSubtotals()Li5/m0;
.end method

.method public abstract xgetDataOnly()Li5/m0;
.end method

.method public abstract xgetField()Li5/l1;
.end method

.method public abstract xgetFieldPosition()Li5/l2;
.end method

.method public abstract xgetGrandCol()Li5/m0;
.end method

.method public abstract xgetGrandRow()Li5/m0;
.end method

.method public abstract xgetLabelOnly()Li5/m0;
.end method

.method public abstract xgetOffset()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetOutline()Li5/m0;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;)V
.end method

.method public abstract xsetCacheIndex(Li5/m0;)V
.end method

.method public abstract xsetCollapsedLevelsAreSubtotals(Li5/m0;)V
.end method

.method public abstract xsetDataOnly(Li5/m0;)V
.end method

.method public abstract xsetField(Li5/l1;)V
.end method

.method public abstract xsetFieldPosition(Li5/l2;)V
.end method

.method public abstract xsetGrandCol(Li5/m0;)V
.end method

.method public abstract xsetGrandRow(Li5/m0;)V
.end method

.method public abstract xsetLabelOnly(Li5/m0;)V
.end method

.method public abstract xsetOffset(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetOutline(Li5/m0;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPivotAreaType;)V
.end method
