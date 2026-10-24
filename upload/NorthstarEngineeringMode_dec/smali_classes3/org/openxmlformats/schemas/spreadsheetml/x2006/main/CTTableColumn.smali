.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;",
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

    const-string v2, "cttablecolumn08a3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableColumn;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewCalculatedColumnFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewTotalsRowFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;
.end method

.method public abstract addNewXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;
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

.method public abstract getCalculatedColumnFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;
.end method

.method public abstract getDataCellStyle()Ljava/lang/String;
.end method

.method public abstract getDataDxfId()J
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getHeaderRowCellStyle()Ljava/lang/String;
.end method

.method public abstract getHeaderRowDxfId()J
.end method

.method public abstract getId()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getQueryTableFieldId()J
.end method

.method public abstract getTotalsRowCellStyle()Ljava/lang/String;
.end method

.method public abstract getTotalsRowDxfId()J
.end method

.method public abstract getTotalsRowFormula()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;
.end method

.method public abstract getTotalsRowFunction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTotalsRowFunction$Enum;
.end method

.method public abstract getTotalsRowLabel()Ljava/lang/String;
.end method

.method public abstract getUniqueName()Ljava/lang/String;
.end method

.method public abstract getXmlColumnPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetCalculatedColumnFormula()Z
.end method

.method public abstract isSetDataCellStyle()Z
.end method

.method public abstract isSetDataDxfId()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHeaderRowCellStyle()Z
.end method

.method public abstract isSetHeaderRowDxfId()Z
.end method

.method public abstract isSetQueryTableFieldId()Z
.end method

.method public abstract isSetTotalsRowCellStyle()Z
.end method

.method public abstract isSetTotalsRowDxfId()Z
.end method

.method public abstract isSetTotalsRowFormula()Z
.end method

.method public abstract isSetTotalsRowFunction()Z
.end method

.method public abstract isSetTotalsRowLabel()Z
.end method

.method public abstract isSetUniqueName()Z
.end method

.method public abstract isSetXmlColumnPr()Z
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

.method public abstract setCalculatedColumnFormula(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;)V
.end method

.method public abstract setDataCellStyle(Ljava/lang/String;)V
.end method

.method public abstract setDataDxfId(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setHeaderRowCellStyle(Ljava/lang/String;)V
.end method

.method public abstract setHeaderRowDxfId(J)V
.end method

.method public abstract setId(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setQueryTableFieldId(J)V
.end method

.method public abstract setTotalsRowCellStyle(Ljava/lang/String;)V
.end method

.method public abstract setTotalsRowDxfId(J)V
.end method

.method public abstract setTotalsRowFormula(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableFormula;)V
.end method

.method public abstract setTotalsRowFunction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTotalsRowFunction$Enum;)V
.end method

.method public abstract setTotalsRowLabel(Ljava/lang/String;)V
.end method

.method public abstract setUniqueName(Ljava/lang/String;)V
.end method

.method public abstract setXmlColumnPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlColumnPr;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetCalculatedColumnFormula()V
.end method

.method public abstract unsetDataCellStyle()V
.end method

.method public abstract unsetDataDxfId()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHeaderRowCellStyle()V
.end method

.method public abstract unsetHeaderRowDxfId()V
.end method

.method public abstract unsetQueryTableFieldId()V
.end method

.method public abstract unsetTotalsRowCellStyle()V
.end method

.method public abstract unsetTotalsRowDxfId()V
.end method

.method public abstract unsetTotalsRowFormula()V
.end method

.method public abstract unsetTotalsRowFunction()V
.end method

.method public abstract unsetTotalsRowLabel()V
.end method

.method public abstract unsetUniqueName()V
.end method

.method public abstract unsetXmlColumnPr()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetDataCellStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDataDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetHeaderRowCellStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetHeaderRowDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetId()Li5/l2;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetQueryTableFieldId()Li5/l2;
.end method

.method public abstract xgetTotalsRowCellStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetTotalsRowDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetTotalsRowFunction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTotalsRowFunction;
.end method

.method public abstract xgetTotalsRowLabel()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetUniqueName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetDataCellStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDataDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetHeaderRowCellStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetHeaderRowDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetId(Li5/l2;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetQueryTableFieldId(Li5/l2;)V
.end method

.method public abstract xsetTotalsRowCellStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetTotalsRowDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetTotalsRowFunction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTotalsRowFunction;)V
.end method

.method public abstract xsetTotalsRowLabel(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetUniqueName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
