.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;",
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

    const-string v2, "ctsectpr1123type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPr;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBidi()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewCols()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;
.end method

.method public abstract addNewDocGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;
.end method

.method public abstract addNewEndnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEdnProps;
.end method

.method public abstract addNewFooterReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract addNewFootnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnProps;
.end method

.method public abstract addNewFormProt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewHeaderReference()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract addNewLnNumType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLineNumber;
.end method

.method public abstract addNewNoEndnote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPaperSrc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPaperSource;
.end method

.method public abstract addNewPgBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;
.end method

.method public abstract addNewPgMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;
.end method

.method public abstract addNewPgNumType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageNumber;
.end method

.method public abstract addNewPgSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageSz;
.end method

.method public abstract addNewPrinterSettings()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract addNewRtlGutter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSectPrChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPrChange;
.end method

.method public abstract addNewTextDirection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;
.end method

.method public abstract addNewTitlePg()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectType;
.end method

.method public abstract addNewVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;
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

.method public abstract getBidi()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCols()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;
.end method

.method public abstract getDocGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEndnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEdnProps;
.end method

.method public abstract getFooterReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract getFooterReferenceArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract getFooterReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFootnotePr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnProps;
.end method

.method public abstract getFormProt()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getHeaderReferenceArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract getHeaderReferenceArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract getHeaderReferenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLnNumType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLineNumber;
.end method

.method public abstract getNoEndnote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getPaperSrc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPaperSource;
.end method

.method public abstract getPgBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;
.end method

.method public abstract getPgMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;
.end method

.method public abstract getPgNumType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageNumber;
.end method

.method public abstract getPgSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageSz;
.end method

.method public abstract getPrinterSettings()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getRsidDel()[B
.end method

.method public abstract getRsidR()[B
.end method

.method public abstract getRsidRPr()[B
.end method

.method public abstract getRsidSect()[B
.end method

.method public abstract getRtlGutter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSectPrChange()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPrChange;
.end method

.method public abstract getTextDirection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;
.end method

.method public abstract getTitlePg()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectType;
.end method

.method public abstract getVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;
.end method

.method public abstract insertNewFooterReference(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract insertNewHeaderReference(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBidi()Z
.end method

.method public abstract isSetCols()Z
.end method

.method public abstract isSetDocGrid()Z
.end method

.method public abstract isSetEndnotePr()Z
.end method

.method public abstract isSetFootnotePr()Z
.end method

.method public abstract isSetFormProt()Z
.end method

.method public abstract isSetLnNumType()Z
.end method

.method public abstract isSetNoEndnote()Z
.end method

.method public abstract isSetPaperSrc()Z
.end method

.method public abstract isSetPgBorders()Z
.end method

.method public abstract isSetPgMar()Z
.end method

.method public abstract isSetPgNumType()Z
.end method

.method public abstract isSetPgSz()Z
.end method

.method public abstract isSetPrinterSettings()Z
.end method

.method public abstract isSetRsidDel()Z
.end method

.method public abstract isSetRsidR()Z
.end method

.method public abstract isSetRsidRPr()Z
.end method

.method public abstract isSetRsidSect()Z
.end method

.method public abstract isSetRtlGutter()Z
.end method

.method public abstract isSetSectPrChange()Z
.end method

.method public abstract isSetTextDirection()Z
.end method

.method public abstract isSetTitlePg()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetVAlign()Z
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

.method public abstract removeFooterReference(I)V
.end method

.method public abstract removeHeaderReference(I)V
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

.method public abstract setBidi(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCols(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColumns;)V
.end method

.method public abstract setDocGrid(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocGrid;)V
.end method

.method public abstract setEndnotePr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEdnProps;)V
.end method

.method public abstract setFooterReferenceArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;)V
.end method

.method public abstract setFooterReferenceArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;)V
.end method

.method public abstract setFootnotePr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnProps;)V
.end method

.method public abstract setFormProt(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setHeaderReferenceArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;)V
.end method

.method public abstract setHeaderReferenceArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHdrFtrRef;)V
.end method

.method public abstract setLnNumType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLineNumber;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNoEndnote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPaperSrc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPaperSource;)V
.end method

.method public abstract setPgBorders(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageBorders;)V
.end method

.method public abstract setPgMar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageMar;)V
.end method

.method public abstract setPgNumType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageNumber;)V
.end method

.method public abstract setPgSz(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPageSz;)V
.end method

.method public abstract setPrinterSettings(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setRsidDel([B)V
.end method

.method public abstract setRsidR([B)V
.end method

.method public abstract setRsidRPr([B)V
.end method

.method public abstract setRsidSect([B)V
.end method

.method public abstract setRtlGutter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSectPrChange(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectPrChange;)V
.end method

.method public abstract setTextDirection(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;)V
.end method

.method public abstract setTitlePg(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSectType;)V
.end method

.method public abstract setVAlign(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;)V
.end method

.method public abstract sizeOfFooterReferenceArray()I
.end method

.method public abstract sizeOfHeaderReferenceArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBidi()V
.end method

.method public abstract unsetCols()V
.end method

.method public abstract unsetDocGrid()V
.end method

.method public abstract unsetEndnotePr()V
.end method

.method public abstract unsetFootnotePr()V
.end method

.method public abstract unsetFormProt()V
.end method

.method public abstract unsetLnNumType()V
.end method

.method public abstract unsetNoEndnote()V
.end method

.method public abstract unsetPaperSrc()V
.end method

.method public abstract unsetPgBorders()V
.end method

.method public abstract unsetPgMar()V
.end method

.method public abstract unsetPgNumType()V
.end method

.method public abstract unsetPgSz()V
.end method

.method public abstract unsetPrinterSettings()V
.end method

.method public abstract unsetRsidDel()V
.end method

.method public abstract unsetRsidR()V
.end method

.method public abstract unsetRsidRPr()V
.end method

.method public abstract unsetRsidSect()V
.end method

.method public abstract unsetRtlGutter()V
.end method

.method public abstract unsetSectPrChange()V
.end method

.method public abstract unsetTextDirection()V
.end method

.method public abstract unsetTitlePg()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetVAlign()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetRsidDel()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract xgetRsidSect()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetRsidDel(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidR(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidRPr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method

.method public abstract xsetRsidSect(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLongHexNumber;)V
.end method
