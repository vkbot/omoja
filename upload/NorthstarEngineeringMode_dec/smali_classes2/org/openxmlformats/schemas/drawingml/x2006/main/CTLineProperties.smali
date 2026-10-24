.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;",
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

    const-string v2, "ctlinepropertiesd5e2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewBevel()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;
.end method

.method public abstract addNewCustDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract addNewHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
.end method

.method public abstract addNewMiter()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;
.end method

.method public abstract addNewNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract addNewPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract addNewPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;
.end method

.method public abstract addNewRound()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinRound;
.end method

.method public abstract addNewSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract addNewTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
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

.method public abstract getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment$Enum;
.end method

.method public abstract getBevel()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;
.end method

.method public abstract getCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;
.end method

.method public abstract getCmpd()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;
.end method

.method public abstract getCustDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getGradFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;
.end method

.method public abstract getHeadEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
.end method

.method public abstract getMiter()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;
.end method

.method public abstract getNoFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;
.end method

.method public abstract getPattFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;
.end method

.method public abstract getPrstDash()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;
.end method

.method public abstract getRound()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinRound;
.end method

.method public abstract getSolidFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;
.end method

.method public abstract getTailEnd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;
.end method

.method public abstract getW()I
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAlgn()Z
.end method

.method public abstract isSetBevel()Z
.end method

.method public abstract isSetCap()Z
.end method

.method public abstract isSetCmpd()Z
.end method

.method public abstract isSetCustDash()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGradFill()Z
.end method

.method public abstract isSetHeadEnd()Z
.end method

.method public abstract isSetMiter()Z
.end method

.method public abstract isSetNoFill()Z
.end method

.method public abstract isSetPattFill()Z
.end method

.method public abstract isSetPrstDash()Z
.end method

.method public abstract isSetRound()Z
.end method

.method public abstract isSetSolidFill()Z
.end method

.method public abstract isSetTailEnd()Z
.end method

.method public abstract isSetW()Z
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

.method public abstract setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment$Enum;)V
.end method

.method public abstract setBevel(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinBevel;)V
.end method

.method public abstract setCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap$Enum;)V
.end method

.method public abstract setCmpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine$Enum;)V
.end method

.method public abstract setCustDash(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDashStopList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setGradFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;)V
.end method

.method public abstract setHeadEnd(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;)V
.end method

.method public abstract setMiter(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinMiterProperties;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNoFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;)V
.end method

.method public abstract setPattFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;)V
.end method

.method public abstract setPrstDash(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetLineDashProperties;)V
.end method

.method public abstract setRound(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineJoinRound;)V
.end method

.method public abstract setSolidFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;)V
.end method

.method public abstract setTailEnd(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineEndProperties;)V
.end method

.method public abstract setW(I)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAlgn()V
.end method

.method public abstract unsetBevel()V
.end method

.method public abstract unsetCap()V
.end method

.method public abstract unsetCmpd()V
.end method

.method public abstract unsetCustDash()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGradFill()V
.end method

.method public abstract unsetHeadEnd()V
.end method

.method public abstract unsetMiter()V
.end method

.method public abstract unsetNoFill()V
.end method

.method public abstract unsetPattFill()V
.end method

.method public abstract unsetPrstDash()V
.end method

.method public abstract unsetRound()V
.end method

.method public abstract unsetSolidFill()V
.end method

.method public abstract unsetTailEnd()V
.end method

.method public abstract unsetW()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment;
.end method

.method public abstract xgetCap()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap;
.end method

.method public abstract xgetCmpd()Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;
.end method

.method public abstract xgetW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineWidth;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPenAlignment;)V
.end method

.method public abstract xsetCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineCap;)V
.end method

.method public abstract xsetCmpd(Lorg/openxmlformats/schemas/drawingml/x2006/main/STCompoundLine;)V
.end method

.method public abstract xsetW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineWidth;)V
.end method
