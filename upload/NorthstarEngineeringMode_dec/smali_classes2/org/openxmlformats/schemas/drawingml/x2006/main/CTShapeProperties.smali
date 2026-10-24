.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;",
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

    const-string v2, "ctshapeproperties30e5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract addNewCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;
.end method

.method public abstract addNewEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;
.end method

.method public abstract addNewEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract addNewGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract addNewLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
.end method

.method public abstract addNewScene3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;
.end method

.method public abstract addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract addNewSp3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;
.end method

.method public abstract addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
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

.method public abstract getBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
.end method

.method public abstract getBwMode()Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;
.end method

.method public abstract getCustGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEffectDag()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;
.end method

.method public abstract getEffectLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract getGrpFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;
.end method

.method public abstract getLn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.end method

.method public abstract getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract getPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
.end method

.method public abstract getScene3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;
.end method

.method public abstract getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getSp3D()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;
.end method

.method public abstract getXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetBlipFill()Z
.end method

.method public abstract isSetBwMode()Z
.end method

.method public abstract isSetCustGeom()Z
.end method

.method public abstract isSetEffectDag()Z
.end method

.method public abstract isSetEffectLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGradFill()Z
.end method

.method public abstract isSetGrpFill()Z
.end method

.method public abstract isSetLn()Z
.end method

.method public abstract isSetNoFill()Z
.end method

.method public abstract isSetPattFill()Z
.end method

.method public abstract isSetPrstGeom()Z
.end method

.method public abstract isSetScene3D()Z
.end method

.method public abstract isSetSolidFill()Z
.end method

.method public abstract isSetSp3D()Z
.end method

.method public abstract isSetXfrm()Z
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

.method public abstract setBlipFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;)V
.end method

.method public abstract setBwMode(Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode$Enum;)V
.end method

.method public abstract setCustGeom(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTCustomGeometry2D;)V
.end method

.method public abstract setEffectDag(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V
.end method

.method public abstract setEffectLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
.end method

.method public abstract setGrpFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;)V
.end method

.method public abstract setLn(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
.end method

.method public abstract setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
.end method

.method public abstract setPrstGeom(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;)V
.end method

.method public abstract setScene3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScene3D;)V
.end method

.method public abstract setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
.end method

.method public abstract setSp3D(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShape3D;)V
.end method

.method public abstract setXfrm(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetBlipFill()V
.end method

.method public abstract unsetBwMode()V
.end method

.method public abstract unsetCustGeom()V
.end method

.method public abstract unsetEffectDag()V
.end method

.method public abstract unsetEffectLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGradFill()V
.end method

.method public abstract unsetGrpFill()V
.end method

.method public abstract unsetLn()V
.end method

.method public abstract unsetNoFill()V
.end method

.method public abstract unsetPattFill()V
.end method

.method public abstract unsetPrstGeom()V
.end method

.method public abstract unsetScene3D()V
.end method

.method public abstract unsetSolidFill()V
.end method

.method public abstract unsetSp3D()V
.end method

.method public abstract unsetXfrm()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetBwMode()Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetBwMode(Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlackWhiteMode;)V
.end method
