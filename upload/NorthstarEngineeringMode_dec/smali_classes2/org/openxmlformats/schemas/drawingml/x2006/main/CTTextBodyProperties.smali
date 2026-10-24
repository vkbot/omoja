.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;",
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

    const-string v2, "cttextbodyproperties87ddtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextBodyProperties;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewFlatTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFlatText;
.end method

.method public abstract addNewNoAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;
.end method

.method public abstract addNewNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
.end method

.method public abstract addNewPrstTxWarp()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetTextShape;
.end method

.method public abstract addNewScene3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;
.end method

.method public abstract addNewSp3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;
.end method

.method public abstract addNewSpAutoFit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;
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

.method public abstract getAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;
.end method

.method public abstract getAnchorCtr()Z
.end method

.method public abstract getBIns()Ljava/lang/Object;
.end method

.method public abstract getCompatLnSpc()Z
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFlatTx()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFlatText;
.end method

.method public abstract getForceAA()Z
.end method

.method public abstract getFromWordArt()Z
.end method

.method public abstract getHorzOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;
.end method

.method public abstract getLIns()Ljava/lang/Object;
.end method

.method public abstract getNoAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;
.end method

.method public abstract getNormAutofit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
.end method

.method public abstract getNumCol()I
.end method

.method public abstract getPrstTxWarp()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetTextShape;
.end method

.method public abstract getRIns()Ljava/lang/Object;
.end method

.method public abstract getRot()I
.end method

.method public abstract getRtlCol()Z
.end method

.method public abstract getScene3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;
.end method

.method public abstract getSp3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;
.end method

.method public abstract getSpAutoFit()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;
.end method

.method public abstract getSpcCol()I
.end method

.method public abstract getSpcFirstLastPara()Z
.end method

.method public abstract getTIns()Ljava/lang/Object;
.end method

.method public abstract getUpright()Z
.end method

.method public abstract getVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
.end method

.method public abstract getVertOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;
.end method

.method public abstract getWrap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAnchor()Z
.end method

.method public abstract isSetAnchorCtr()Z
.end method

.method public abstract isSetBIns()Z
.end method

.method public abstract isSetCompatLnSpc()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFlatTx()Z
.end method

.method public abstract isSetForceAA()Z
.end method

.method public abstract isSetFromWordArt()Z
.end method

.method public abstract isSetHorzOverflow()Z
.end method

.method public abstract isSetLIns()Z
.end method

.method public abstract isSetNoAutofit()Z
.end method

.method public abstract isSetNormAutofit()Z
.end method

.method public abstract isSetNumCol()Z
.end method

.method public abstract isSetPrstTxWarp()Z
.end method

.method public abstract isSetRIns()Z
.end method

.method public abstract isSetRot()Z
.end method

.method public abstract isSetRtlCol()Z
.end method

.method public abstract isSetScene3D()Z
.end method

.method public abstract isSetSp3D()Z
.end method

.method public abstract isSetSpAutoFit()Z
.end method

.method public abstract isSetSpcCol()Z
.end method

.method public abstract isSetSpcFirstLastPara()Z
.end method

.method public abstract isSetTIns()Z
.end method

.method public abstract isSetUpright()Z
.end method

.method public abstract isSetVert()Z
.end method

.method public abstract isSetVertOverflow()Z
.end method

.method public abstract isSetWrap()Z
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

.method public abstract setAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType$Enum;)V
.end method

.method public abstract setAnchorCtr(Z)V
.end method

.method public abstract setBIns(Ljava/lang/Object;)V
.end method

.method public abstract setCompatLnSpc(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFlatTx(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFlatText;)V
.end method

.method public abstract setForceAA(Z)V
.end method

.method public abstract setFromWordArt(Z)V
.end method

.method public abstract setHorzOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType$Enum;)V
.end method

.method public abstract setLIns(Ljava/lang/Object;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNoAutofit(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNoAutofit;)V
.end method

.method public abstract setNormAutofit(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;)V
.end method

.method public abstract setNumCol(I)V
.end method

.method public abstract setPrstTxWarp(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetTextShape;)V
.end method

.method public abstract setRIns(Ljava/lang/Object;)V
.end method

.method public abstract setRot(I)V
.end method

.method public abstract setRtlCol(Z)V
.end method

.method public abstract setScene3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;)V
.end method

.method public abstract setSp3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;)V
.end method

.method public abstract setSpAutoFit(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextShapeAutofit;)V
.end method

.method public abstract setSpcCol(I)V
.end method

.method public abstract setSpcFirstLastPara(Z)V
.end method

.method public abstract setTIns(Ljava/lang/Object;)V
.end method

.method public abstract setUpright(Z)V
.end method

.method public abstract setVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;)V
.end method

.method public abstract setVertOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType$Enum;)V
.end method

.method public abstract setWrap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType$Enum;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAnchor()V
.end method

.method public abstract unsetAnchorCtr()V
.end method

.method public abstract unsetBIns()V
.end method

.method public abstract unsetCompatLnSpc()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFlatTx()V
.end method

.method public abstract unsetForceAA()V
.end method

.method public abstract unsetFromWordArt()V
.end method

.method public abstract unsetHorzOverflow()V
.end method

.method public abstract unsetLIns()V
.end method

.method public abstract unsetNoAutofit()V
.end method

.method public abstract unsetNormAutofit()V
.end method

.method public abstract unsetNumCol()V
.end method

.method public abstract unsetPrstTxWarp()V
.end method

.method public abstract unsetRIns()V
.end method

.method public abstract unsetRot()V
.end method

.method public abstract unsetRtlCol()V
.end method

.method public abstract unsetScene3D()V
.end method

.method public abstract unsetSp3D()V
.end method

.method public abstract unsetSpAutoFit()V
.end method

.method public abstract unsetSpcCol()V
.end method

.method public abstract unsetSpcFirstLastPara()V
.end method

.method public abstract unsetTIns()V
.end method

.method public abstract unsetUpright()V
.end method

.method public abstract unsetVert()V
.end method

.method public abstract unsetVertOverflow()V
.end method

.method public abstract unsetWrap()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAnchor()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;
.end method

.method public abstract xgetAnchorCtr()Li5/m0;
.end method

.method public abstract xgetBIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetCompatLnSpc()Li5/m0;
.end method

.method public abstract xgetForceAA()Li5/m0;
.end method

.method public abstract xgetFromWordArt()Li5/m0;
.end method

.method public abstract xgetHorzOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType;
.end method

.method public abstract xgetLIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetNumCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextColumnCount;
.end method

.method public abstract xgetRIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetRot()Lorg/openxmlformats/schemas/drawingml/x2006/main/STAngle;
.end method

.method public abstract xgetRtlCol()Li5/m0;
.end method

.method public abstract xgetSpcCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;
.end method

.method public abstract xgetSpcFirstLastPara()Li5/m0;
.end method

.method public abstract xgetTIns()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;
.end method

.method public abstract xgetUpright()Li5/m0;
.end method

.method public abstract xgetVert()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;
.end method

.method public abstract xgetVertOverflow()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType;
.end method

.method public abstract xgetWrap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAnchor(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextAnchoringType;)V
.end method

.method public abstract xsetAnchorCtr(Li5/m0;)V
.end method

.method public abstract xsetBIns(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetCompatLnSpc(Li5/m0;)V
.end method

.method public abstract xsetForceAA(Li5/m0;)V
.end method

.method public abstract xsetFromWordArt(Li5/m0;)V
.end method

.method public abstract xsetHorzOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextHorzOverflowType;)V
.end method

.method public abstract xsetLIns(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetNumCol(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextColumnCount;)V
.end method

.method public abstract xsetRIns(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetRot(Lorg/openxmlformats/schemas/drawingml/x2006/main/STAngle;)V
.end method

.method public abstract xsetRtlCol(Li5/m0;)V
.end method

.method public abstract xsetSpcCol(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate32;)V
.end method

.method public abstract xsetSpcFirstLastPara(Li5/m0;)V
.end method

.method public abstract xsetTIns(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCoordinate32;)V
.end method

.method public abstract xsetUpright(Li5/m0;)V
.end method

.method public abstract xsetVert(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;)V
.end method

.method public abstract xsetVertOverflow(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVertOverflowType;)V
.end method

.method public abstract xsetWrap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextWrappingType;)V
.end method
