.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;",
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

    const-string v2, "ctoutershadoweffect7b5dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract addNewPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract addNewSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract addNewScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract addNewSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
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

.method public abstract getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;
.end method

.method public abstract getBlurRad()J
.end method

.method public abstract getDir()I
.end method

.method public abstract getDist()J
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract getKx()I
.end method

.method public abstract getKy()I
.end method

.method public abstract getPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract getRotWithShape()Z
.end method

.method public abstract getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract getScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract getSx()Ljava/lang/Object;
.end method

.method public abstract getSy()Ljava/lang/Object;
.end method

.method public abstract getSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAlgn()Z
.end method

.method public abstract isSetBlurRad()Z
.end method

.method public abstract isSetDir()Z
.end method

.method public abstract isSetDist()Z
.end method

.method public abstract isSetHslClr()Z
.end method

.method public abstract isSetKx()Z
.end method

.method public abstract isSetKy()Z
.end method

.method public abstract isSetPrstClr()Z
.end method

.method public abstract isSetRotWithShape()Z
.end method

.method public abstract isSetSchemeClr()Z
.end method

.method public abstract isSetScrgbClr()Z
.end method

.method public abstract isSetSrgbClr()Z
.end method

.method public abstract isSetSx()Z
.end method

.method public abstract isSetSy()Z
.end method

.method public abstract isSetSysClr()Z
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

.method public abstract setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V
.end method

.method public abstract setBlurRad(J)V
.end method

.method public abstract setDir(I)V
.end method

.method public abstract setDist(J)V
.end method

.method public abstract setHslClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)V
.end method

.method public abstract setKx(I)V
.end method

.method public abstract setKy(I)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setPrstClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)V
.end method

.method public abstract setRotWithShape(Z)V
.end method

.method public abstract setSchemeClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V
.end method

.method public abstract setScrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)V
.end method

.method public abstract setSrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V
.end method

.method public abstract setSx(Ljava/lang/Object;)V
.end method

.method public abstract setSy(Ljava/lang/Object;)V
.end method

.method public abstract setSysClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAlgn()V
.end method

.method public abstract unsetBlurRad()V
.end method

.method public abstract unsetDir()V
.end method

.method public abstract unsetDist()V
.end method

.method public abstract unsetHslClr()V
.end method

.method public abstract unsetKx()V
.end method

.method public abstract unsetKy()V
.end method

.method public abstract unsetPrstClr()V
.end method

.method public abstract unsetRotWithShape()V
.end method

.method public abstract unsetSchemeClr()V
.end method

.method public abstract unsetScrgbClr()V
.end method

.method public abstract unsetSrgbClr()V
.end method

.method public abstract unsetSx()V
.end method

.method public abstract unsetSy()V
.end method

.method public abstract unsetSysClr()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;
.end method

.method public abstract xgetBlurRad()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetDir()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedAngle;
.end method

.method public abstract xgetDist()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetKx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;
.end method

.method public abstract xgetKy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;
.end method

.method public abstract xgetRotWithShape()Li5/m0;
.end method

.method public abstract xgetSx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetSy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;)V
.end method

.method public abstract xsetBlurRad(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetDir(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedAngle;)V
.end method

.method public abstract xsetDist(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetKx(Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;)V
.end method

.method public abstract xsetKy(Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;)V
.end method

.method public abstract xsetRotWithShape(Li5/m0;)V
.end method

.method public abstract xsetSx(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetSy(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method
