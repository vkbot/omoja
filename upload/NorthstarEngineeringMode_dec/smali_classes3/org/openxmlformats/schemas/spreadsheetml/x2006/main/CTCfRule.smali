.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;",
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

    const-string v2, "ctcfrule3548type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addFormula(Ljava/lang/String;)V
.end method

.method public abstract addNewColorScale()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;
.end method

.method public abstract addNewDataBar()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;
.end method

.method public abstract addNewIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;
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

.method public abstract getAboveAverage()Z
.end method

.method public abstract getBottom()Z
.end method

.method public abstract getColorScale()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;
.end method

.method public abstract getDataBar()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getDxfId()J
.end method

.method public abstract getEqualAverage()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFormulaArray(I)Ljava/lang/String;
.end method

.method public abstract getFormulaArray()[Ljava/lang/String;
.end method

.method public abstract getFormulaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIconSet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;
.end method

.method public abstract getOperator()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;
.end method

.method public abstract getPercent()Z
.end method

.method public abstract getPriority()I
.end method

.method public abstract getRank()J
.end method

.method public abstract getStdDev()I
.end method

.method public abstract getStopIfTrue()Z
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTimePeriod()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;
.end method

.method public abstract insertFormula(ILjava/lang/String;)V
.end method

.method public abstract insertNewFormula(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAboveAverage()Z
.end method

.method public abstract isSetBottom()Z
.end method

.method public abstract isSetColorScale()Z
.end method

.method public abstract isSetDataBar()Z
.end method

.method public abstract isSetDxfId()Z
.end method

.method public abstract isSetEqualAverage()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetIconSet()Z
.end method

.method public abstract isSetOperator()Z
.end method

.method public abstract isSetPercent()Z
.end method

.method public abstract isSetRank()Z
.end method

.method public abstract isSetStdDev()Z
.end method

.method public abstract isSetStopIfTrue()Z
.end method

.method public abstract isSetText()Z
.end method

.method public abstract isSetTimePeriod()Z
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

.method public abstract removeFormula(I)V
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

.method public abstract setAboveAverage(Z)V
.end method

.method public abstract setBottom(Z)V
.end method

.method public abstract setColorScale(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorScale;)V
.end method

.method public abstract setDataBar(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataBar;)V
.end method

.method public abstract setDxfId(J)V
.end method

.method public abstract setEqualAverage(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFormulaArray(ILjava/lang/String;)V
.end method

.method public abstract setFormulaArray([Ljava/lang/String;)V
.end method

.method public abstract setIconSet(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconSet;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setOperator(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator$Enum;)V
.end method

.method public abstract setPercent(Z)V
.end method

.method public abstract setPriority(I)V
.end method

.method public abstract setRank(J)V
.end method

.method public abstract setStdDev(I)V
.end method

.method public abstract setStopIfTrue(Z)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setTimePeriod(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod$Enum;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType$Enum;)V
.end method

.method public abstract sizeOfFormulaArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAboveAverage()V
.end method

.method public abstract unsetBottom()V
.end method

.method public abstract unsetColorScale()V
.end method

.method public abstract unsetDataBar()V
.end method

.method public abstract unsetDxfId()V
.end method

.method public abstract unsetEqualAverage()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetIconSet()V
.end method

.method public abstract unsetOperator()V
.end method

.method public abstract unsetPercent()V
.end method

.method public abstract unsetRank()V
.end method

.method public abstract unsetStdDev()V
.end method

.method public abstract unsetStopIfTrue()V
.end method

.method public abstract unsetText()V
.end method

.method public abstract unsetTimePeriod()V
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

.method public abstract xgetAboveAverage()Li5/m0;
.end method

.method public abstract xgetBottom()Li5/m0;
.end method

.method public abstract xgetDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetEqualAverage()Li5/m0;
.end method

.method public abstract xgetFormulaArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;
.end method

.method public abstract xgetFormulaArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;
.end method

.method public abstract xgetFormulaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetOperator()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;
.end method

.method public abstract xgetPercent()Li5/m0;
.end method

.method public abstract xgetPriority()Li5/l1;
.end method

.method public abstract xgetRank()Li5/l2;
.end method

.method public abstract xgetStdDev()Li5/l1;
.end method

.method public abstract xgetStopIfTrue()Li5/m0;
.end method

.method public abstract xgetText()Li5/g2;
.end method

.method public abstract xgetTimePeriod()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAboveAverage(Li5/m0;)V
.end method

.method public abstract xsetBottom(Li5/m0;)V
.end method

.method public abstract xsetDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetEqualAverage(Li5/m0;)V
.end method

.method public abstract xsetFormulaArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;)V
.end method

.method public abstract xsetFormulaArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormula;)V
.end method

.method public abstract xsetOperator(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STConditionalFormattingOperator;)V
.end method

.method public abstract xsetPercent(Li5/m0;)V
.end method

.method public abstract xsetPriority(Li5/l1;)V
.end method

.method public abstract xsetRank(Li5/l2;)V
.end method

.method public abstract xsetStdDev(Li5/l1;)V
.end method

.method public abstract xsetStopIfTrue(Li5/m0;)V
.end method

.method public abstract xsetText(Li5/g2;)V
.end method

.method public abstract xsetTimePeriod(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTimePeriod;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfType;)V
.end method
