.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;",
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

    const-string v2, "ctignorederrorc51ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->type:Li5/c0;

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

.method public abstract getCalculatedColumn()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEmptyCellReference()Z
.end method

.method public abstract getEvalError()Z
.end method

.method public abstract getFormula()Z
.end method

.method public abstract getFormulaRange()Z
.end method

.method public abstract getListDataValidation()Z
.end method

.method public abstract getNumberStoredAsText()Z
.end method

.method public abstract getSqref()Ljava/util/List;
.end method

.method public abstract getTwoDigitTextYear()Z
.end method

.method public abstract getUnlockedFormula()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetCalculatedColumn()Z
.end method

.method public abstract isSetEmptyCellReference()Z
.end method

.method public abstract isSetEvalError()Z
.end method

.method public abstract isSetFormula()Z
.end method

.method public abstract isSetFormulaRange()Z
.end method

.method public abstract isSetListDataValidation()Z
.end method

.method public abstract isSetNumberStoredAsText()Z
.end method

.method public abstract isSetTwoDigitTextYear()Z
.end method

.method public abstract isSetUnlockedFormula()Z
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

.method public abstract setCalculatedColumn(Z)V
.end method

.method public abstract setEmptyCellReference(Z)V
.end method

.method public abstract setEvalError(Z)V
.end method

.method public abstract setFormula(Z)V
.end method

.method public abstract setFormulaRange(Z)V
.end method

.method public abstract setListDataValidation(Z)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNumberStoredAsText(Z)V
.end method

.method public abstract setSqref(Ljava/util/List;)V
.end method

.method public abstract setTwoDigitTextYear(Z)V
.end method

.method public abstract setUnlockedFormula(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetCalculatedColumn()V
.end method

.method public abstract unsetEmptyCellReference()V
.end method

.method public abstract unsetEvalError()V
.end method

.method public abstract unsetFormula()V
.end method

.method public abstract unsetFormulaRange()V
.end method

.method public abstract unsetListDataValidation()V
.end method

.method public abstract unsetNumberStoredAsText()V
.end method

.method public abstract unsetTwoDigitTextYear()V
.end method

.method public abstract unsetUnlockedFormula()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetCalculatedColumn()Li5/m0;
.end method

.method public abstract xgetEmptyCellReference()Li5/m0;
.end method

.method public abstract xgetEvalError()Li5/m0;
.end method

.method public abstract xgetFormula()Li5/m0;
.end method

.method public abstract xgetFormulaRange()Li5/m0;
.end method

.method public abstract xgetListDataValidation()Li5/m0;
.end method

.method public abstract xgetNumberStoredAsText()Li5/m0;
.end method

.method public abstract xgetSqref()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;
.end method

.method public abstract xgetTwoDigitTextYear()Li5/m0;
.end method

.method public abstract xgetUnlockedFormula()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetCalculatedColumn(Li5/m0;)V
.end method

.method public abstract xsetEmptyCellReference(Li5/m0;)V
.end method

.method public abstract xsetEvalError(Li5/m0;)V
.end method

.method public abstract xsetFormula(Li5/m0;)V
.end method

.method public abstract xsetFormulaRange(Li5/m0;)V
.end method

.method public abstract xsetListDataValidation(Li5/m0;)V
.end method

.method public abstract xsetNumberStoredAsText(Li5/m0;)V
.end method

.method public abstract xsetSqref(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;)V
.end method

.method public abstract xsetTwoDigitTextYear(Li5/m0;)V
.end method

.method public abstract xsetUnlockedFormula(Li5/m0;)V
.end method
