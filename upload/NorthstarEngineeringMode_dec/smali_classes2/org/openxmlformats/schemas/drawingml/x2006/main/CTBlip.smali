.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;",
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

    const-string v2, "ctblip034ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewAlphaBiLevel()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaBiLevelEffect;
.end method

.method public abstract addNewAlphaCeiling()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;
.end method

.method public abstract addNewAlphaFloor()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaFloorEffect;
.end method

.method public abstract addNewAlphaInv()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaInverseEffect;
.end method

.method public abstract addNewAlphaMod()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;
.end method

.method public abstract addNewAlphaModFix()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;
.end method

.method public abstract addNewAlphaRepl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;
.end method

.method public abstract addNewBiLevel()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBiLevelEffect;
.end method

.method public abstract addNewBlur()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;
.end method

.method public abstract addNewClrChange()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;
.end method

.method public abstract addNewClrRepl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;
.end method

.method public abstract addNewDuotone()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract addNewFillOverlay()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;
.end method

.method public abstract addNewGrayscl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;
.end method

.method public abstract addNewHsl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;
.end method

.method public abstract addNewLum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;
.end method

.method public abstract addNewTint()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTintEffect;
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

.method public abstract getAlphaBiLevelArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaBiLevelEffect;
.end method

.method public abstract getAlphaBiLevelArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaBiLevelEffect;
.end method

.method public abstract getAlphaBiLevelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaBiLevelEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlphaCeilingArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;
.end method

.method public abstract getAlphaCeilingArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;
.end method

.method public abstract getAlphaCeilingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlphaFloorArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaFloorEffect;
.end method

.method public abstract getAlphaFloorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaFloorEffect;
.end method

.method public abstract getAlphaFloorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaFloorEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlphaInvArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaInverseEffect;
.end method

.method public abstract getAlphaInvArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaInverseEffect;
.end method

.method public abstract getAlphaInvList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaInverseEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlphaModArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;
.end method

.method public abstract getAlphaModArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;
.end method

.method public abstract getAlphaModFixArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;
.end method

.method public abstract getAlphaModFixArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;
.end method

.method public abstract getAlphaModFixList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlphaModList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlphaReplArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;
.end method

.method public abstract getAlphaReplArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;
.end method

.method public abstract getAlphaReplList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBiLevelArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBiLevelEffect;
.end method

.method public abstract getBiLevelArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBiLevelEffect;
.end method

.method public abstract getBiLevelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBiLevelEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBlurArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;
.end method

.method public abstract getBlurArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;
.end method

.method public abstract getBlurList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClrChangeArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;
.end method

.method public abstract getClrChangeArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;
.end method

.method public abstract getClrChangeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClrReplArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;
.end method

.method public abstract getClrReplArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;
.end method

.method public abstract getClrReplList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCstate()Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getDuotoneArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;
.end method

.method public abstract getDuotoneArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;
.end method

.method public abstract getDuotoneList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmbed()Ljava/lang/String;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFillOverlayArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;
.end method

.method public abstract getFillOverlayArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;
.end method

.method public abstract getFillOverlayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGraysclArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;
.end method

.method public abstract getGraysclArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;
.end method

.method public abstract getGraysclList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHslArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;
.end method

.method public abstract getHslArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;
.end method

.method public abstract getHslList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLink()Ljava/lang/String;
.end method

.method public abstract getLumArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;
.end method

.method public abstract getLumArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;
.end method

.method public abstract getLumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTintArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTintEffect;
.end method

.method public abstract getTintArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTintEffect;
.end method

.method public abstract getTintList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTintEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewAlphaBiLevel(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaBiLevelEffect;
.end method

.method public abstract insertNewAlphaCeiling(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;
.end method

.method public abstract insertNewAlphaFloor(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaFloorEffect;
.end method

.method public abstract insertNewAlphaInv(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaInverseEffect;
.end method

.method public abstract insertNewAlphaMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;
.end method

.method public abstract insertNewAlphaModFix(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;
.end method

.method public abstract insertNewAlphaRepl(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;
.end method

.method public abstract insertNewBiLevel(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBiLevelEffect;
.end method

.method public abstract insertNewBlur(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;
.end method

.method public abstract insertNewClrChange(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;
.end method

.method public abstract insertNewClrRepl(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;
.end method

.method public abstract insertNewDuotone(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;
.end method

.method public abstract insertNewFillOverlay(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;
.end method

.method public abstract insertNewGrayscl(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;
.end method

.method public abstract insertNewHsl(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;
.end method

.method public abstract insertNewLum(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;
.end method

.method public abstract insertNewTint(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTintEffect;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetCstate()Z
.end method

.method public abstract isSetEmbed()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetLink()Z
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

.method public abstract removeAlphaBiLevel(I)V
.end method

.method public abstract removeAlphaCeiling(I)V
.end method

.method public abstract removeAlphaFloor(I)V
.end method

.method public abstract removeAlphaInv(I)V
.end method

.method public abstract removeAlphaMod(I)V
.end method

.method public abstract removeAlphaModFix(I)V
.end method

.method public abstract removeAlphaRepl(I)V
.end method

.method public abstract removeBiLevel(I)V
.end method

.method public abstract removeBlur(I)V
.end method

.method public abstract removeClrChange(I)V
.end method

.method public abstract removeClrRepl(I)V
.end method

.method public abstract removeDuotone(I)V
.end method

.method public abstract removeFillOverlay(I)V
.end method

.method public abstract removeGrayscl(I)V
.end method

.method public abstract removeHsl(I)V
.end method

.method public abstract removeLum(I)V
.end method

.method public abstract removeTint(I)V
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

.method public abstract setAlphaBiLevelArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaBiLevelEffect;)V
.end method

.method public abstract setAlphaBiLevelArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaBiLevelEffect;)V
.end method

.method public abstract setAlphaCeilingArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;)V
.end method

.method public abstract setAlphaCeilingArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaCeilingEffect;)V
.end method

.method public abstract setAlphaFloorArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaFloorEffect;)V
.end method

.method public abstract setAlphaFloorArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaFloorEffect;)V
.end method

.method public abstract setAlphaInvArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaInverseEffect;)V
.end method

.method public abstract setAlphaInvArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaInverseEffect;)V
.end method

.method public abstract setAlphaModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;)V
.end method

.method public abstract setAlphaModArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateEffect;)V
.end method

.method public abstract setAlphaModFixArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;)V
.end method

.method public abstract setAlphaModFixArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaModulateFixedEffect;)V
.end method

.method public abstract setAlphaReplArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;)V
.end method

.method public abstract setAlphaReplArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAlphaReplaceEffect;)V
.end method

.method public abstract setBiLevelArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTBiLevelEffect;)V
.end method

.method public abstract setBiLevelArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBiLevelEffect;)V
.end method

.method public abstract setBlurArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;)V
.end method

.method public abstract setBlurArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlurEffect;)V
.end method

.method public abstract setClrChangeArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;)V
.end method

.method public abstract setClrChangeArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorChangeEffect;)V
.end method

.method public abstract setClrReplArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;)V
.end method

.method public abstract setClrReplArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorReplaceEffect;)V
.end method

.method public abstract setCstate(Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression$Enum;)V
.end method

.method public abstract setDuotoneArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;)V
.end method

.method public abstract setDuotoneArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTDuotoneEffect;)V
.end method

.method public abstract setEmbed(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFillOverlayArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;)V
.end method

.method public abstract setFillOverlayArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillOverlayEffect;)V
.end method

.method public abstract setGraysclArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;)V
.end method

.method public abstract setGraysclArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleEffect;)V
.end method

.method public abstract setHslArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;)V
.end method

.method public abstract setHslArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHSLEffect;)V
.end method

.method public abstract setLink(Ljava/lang/String;)V
.end method

.method public abstract setLumArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;)V
.end method

.method public abstract setLumArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLuminanceEffect;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setTintArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTintEffect;)V
.end method

.method public abstract setTintArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTintEffect;)V
.end method

.method public abstract sizeOfAlphaBiLevelArray()I
.end method

.method public abstract sizeOfAlphaCeilingArray()I
.end method

.method public abstract sizeOfAlphaFloorArray()I
.end method

.method public abstract sizeOfAlphaInvArray()I
.end method

.method public abstract sizeOfAlphaModArray()I
.end method

.method public abstract sizeOfAlphaModFixArray()I
.end method

.method public abstract sizeOfAlphaReplArray()I
.end method

.method public abstract sizeOfBiLevelArray()I
.end method

.method public abstract sizeOfBlurArray()I
.end method

.method public abstract sizeOfClrChangeArray()I
.end method

.method public abstract sizeOfClrReplArray()I
.end method

.method public abstract sizeOfDuotoneArray()I
.end method

.method public abstract sizeOfFillOverlayArray()I
.end method

.method public abstract sizeOfGraysclArray()I
.end method

.method public abstract sizeOfHslArray()I
.end method

.method public abstract sizeOfLumArray()I
.end method

.method public abstract sizeOfTintArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetCstate()V
.end method

.method public abstract unsetEmbed()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetLink()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetCstate()Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression;
.end method

.method public abstract xgetEmbed()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetLink()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetCstate(Lorg/openxmlformats/schemas/drawingml/x2006/main/STBlipCompression;)V
.end method

.method public abstract xsetEmbed(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetLink(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method
