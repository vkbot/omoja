.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrOriginal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrOriginal;",
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

    const-string v2, "ctrproriginal302dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrOriginal;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPrOriginal;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewBCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract addNewCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;
.end method

.method public abstract addNewCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDstrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewEastAsianLayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;
.end method

.method public abstract addNewEffect()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;
.end method

.method public abstract addNewEm()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;
.end method

.method public abstract addNewEmboss()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewFitText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;
.end method

.method public abstract addNewHighlight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;
.end method

.method public abstract addNewI()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewICs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewImprint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewKern()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
.end method

.method public abstract addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewOMath()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewOutline()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewPosition()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;
.end method

.method public abstract addNewRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
.end method

.method public abstract addNewRStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewRtl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewShadow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract addNewSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSnapToGrid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract addNewSpecVanish()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewStrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract addNewU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;
.end method

.method public abstract addNewVanish()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;
.end method

.method public abstract addNewW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;
.end method

.method public abstract addNewWebHidden()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
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

.method public abstract getBArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBCsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBCsArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBCsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBdrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract getBdrArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract getBdrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCapsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCapsArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCapsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getColorArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;
.end method

.method public abstract getColorArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;
.end method

.method public abstract getColorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCsArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getCsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getDstrikeArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDstrikeArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDstrikeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEastAsianLayoutArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;
.end method

.method public abstract getEastAsianLayoutArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;
.end method

.method public abstract getEastAsianLayoutList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEffectArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;
.end method

.method public abstract getEffectArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;
.end method

.method public abstract getEffectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;
.end method

.method public abstract getEmArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;
.end method

.method public abstract getEmList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmbossArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getEmbossArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getEmbossList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFitTextArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;
.end method

.method public abstract getFitTextArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;
.end method

.method public abstract getFitTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHighlightArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;
.end method

.method public abstract getHighlightArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;
.end method

.method public abstract getHighlightList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getIArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getICsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getICsArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getICsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImprintArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getImprintArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getImprintList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKernArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getKernArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getKernList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLangArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
.end method

.method public abstract getLangArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
.end method

.method public abstract getLangList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoProofArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getNoProofArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getNoProofList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOMathArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getOMathArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getOMathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutlineArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getOutlineArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getOutlineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPositionArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;
.end method

.method public abstract getPositionArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;
.end method

.method public abstract getPositionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRFontsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
.end method

.method public abstract getRFontsArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
.end method

.method public abstract getRFontsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRStyleArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getRStyleArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getRStyleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRtlArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getRtlArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getRtlList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShadowArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getShadowArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getShadowList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShdArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract getShdArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract getShdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmallCapsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSmallCapsArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSmallCapsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSnapToGridArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSnapToGridArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSnapToGridList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpacingArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract getSpacingArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract getSpacingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpecVanishArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSpecVanishArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getSpecVanishList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStrikeArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getStrikeArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getStrikeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSzArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getSzArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getSzCsArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getSzCsArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getSzCsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSzList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;
.end method

.method public abstract getUArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;
.end method

.method public abstract getUList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVanishArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getVanishArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getVanishList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVertAlignArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;
.end method

.method public abstract getVertAlignArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;
.end method

.method public abstract getVertAlignList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;
.end method

.method public abstract getWArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;
.end method

.method public abstract getWList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWebHiddenArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getWebHiddenArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getWebHiddenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewB(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewBCs(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewBdr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;
.end method

.method public abstract insertNewCaps(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewColor(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;
.end method

.method public abstract insertNewCs(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewDstrike(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewEastAsianLayout(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;
.end method

.method public abstract insertNewEffect(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;
.end method

.method public abstract insertNewEm(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;
.end method

.method public abstract insertNewEmboss(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewFitText(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;
.end method

.method public abstract insertNewHighlight(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;
.end method

.method public abstract insertNewI(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewICs(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewImprint(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewKern(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract insertNewLang(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
.end method

.method public abstract insertNewNoProof(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewOMath(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewOutline(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewPosition(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;
.end method

.method public abstract insertNewRFonts(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
.end method

.method public abstract insertNewRStyle(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract insertNewRtl(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewShadow(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewShd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract insertNewSmallCaps(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewSnapToGrid(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewSpacing(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract insertNewSpecVanish(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewStrike(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewSz(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract insertNewSzCs(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract insertNewU(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;
.end method

.method public abstract insertNewVanish(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract insertNewVertAlign(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;
.end method

.method public abstract insertNewW(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;
.end method

.method public abstract insertNewWebHidden(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
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

.method public abstract removeB(I)V
.end method

.method public abstract removeBCs(I)V
.end method

.method public abstract removeBdr(I)V
.end method

.method public abstract removeCaps(I)V
.end method

.method public abstract removeColor(I)V
.end method

.method public abstract removeCs(I)V
.end method

.method public abstract removeDstrike(I)V
.end method

.method public abstract removeEastAsianLayout(I)V
.end method

.method public abstract removeEffect(I)V
.end method

.method public abstract removeEm(I)V
.end method

.method public abstract removeEmboss(I)V
.end method

.method public abstract removeFitText(I)V
.end method

.method public abstract removeHighlight(I)V
.end method

.method public abstract removeI(I)V
.end method

.method public abstract removeICs(I)V
.end method

.method public abstract removeImprint(I)V
.end method

.method public abstract removeKern(I)V
.end method

.method public abstract removeLang(I)V
.end method

.method public abstract removeNoProof(I)V
.end method

.method public abstract removeOMath(I)V
.end method

.method public abstract removeOutline(I)V
.end method

.method public abstract removePosition(I)V
.end method

.method public abstract removeRFonts(I)V
.end method

.method public abstract removeRStyle(I)V
.end method

.method public abstract removeRtl(I)V
.end method

.method public abstract removeShadow(I)V
.end method

.method public abstract removeShd(I)V
.end method

.method public abstract removeSmallCaps(I)V
.end method

.method public abstract removeSnapToGrid(I)V
.end method

.method public abstract removeSpacing(I)V
.end method

.method public abstract removeSpecVanish(I)V
.end method

.method public abstract removeStrike(I)V
.end method

.method public abstract removeSz(I)V
.end method

.method public abstract removeSzCs(I)V
.end method

.method public abstract removeU(I)V
.end method

.method public abstract removeVanish(I)V
.end method

.method public abstract removeVertAlign(I)V
.end method

.method public abstract removeW(I)V
.end method

.method public abstract removeWebHidden(I)V
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

.method public abstract setBArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBCsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBCsArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBdrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)V
.end method

.method public abstract setBdrArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;)V
.end method

.method public abstract setCapsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCapsArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setColorArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;)V
.end method

.method public abstract setColorArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;)V
.end method

.method public abstract setCsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setCsArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDstrikeArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDstrikeArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setEastAsianLayoutArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;)V
.end method

.method public abstract setEastAsianLayoutArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEastAsianLayout;)V
.end method

.method public abstract setEffectArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;)V
.end method

.method public abstract setEffectArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextEffect;)V
.end method

.method public abstract setEmArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;)V
.end method

.method public abstract setEmArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;)V
.end method

.method public abstract setEmbossArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setEmbossArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setFitTextArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;)V
.end method

.method public abstract setFitTextArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFitText;)V
.end method

.method public abstract setHighlightArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;)V
.end method

.method public abstract setHighlightArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;)V
.end method

.method public abstract setIArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setIArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setICsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setICsArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setImprintArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setImprintArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setKernArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setKernArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setLangArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;)V
.end method

.method public abstract setLangArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNoProofArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setNoProofArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setOMathArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setOMathArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setOutlineArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setOutlineArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setPositionArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;)V
.end method

.method public abstract setPositionArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;)V
.end method

.method public abstract setRFontsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)V
.end method

.method public abstract setRFontsArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;)V
.end method

.method public abstract setRStyleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setRStyleArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setRtlArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setRtlArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setShadowArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setShadowArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setShdArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;)V
.end method

.method public abstract setShdArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;)V
.end method

.method public abstract setSmallCapsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSmallCapsArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSnapToGridArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSnapToGridArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSpacingArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;)V
.end method

.method public abstract setSpacingArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;)V
.end method

.method public abstract setSpecVanishArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSpecVanishArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setStrikeArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setStrikeArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setSzArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setSzArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setSzCsArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setSzCsArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;)V
.end method

.method public abstract setUArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;)V
.end method

.method public abstract setUArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;)V
.end method

.method public abstract setVanishArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setVanishArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setVertAlignArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;)V
.end method

.method public abstract setVertAlignArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;)V
.end method

.method public abstract setWArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;)V
.end method

.method public abstract setWArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextScale;)V
.end method

.method public abstract setWebHiddenArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setWebHiddenArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract sizeOfBArray()I
.end method

.method public abstract sizeOfBCsArray()I
.end method

.method public abstract sizeOfBdrArray()I
.end method

.method public abstract sizeOfCapsArray()I
.end method

.method public abstract sizeOfColorArray()I
.end method

.method public abstract sizeOfCsArray()I
.end method

.method public abstract sizeOfDstrikeArray()I
.end method

.method public abstract sizeOfEastAsianLayoutArray()I
.end method

.method public abstract sizeOfEffectArray()I
.end method

.method public abstract sizeOfEmArray()I
.end method

.method public abstract sizeOfEmbossArray()I
.end method

.method public abstract sizeOfFitTextArray()I
.end method

.method public abstract sizeOfHighlightArray()I
.end method

.method public abstract sizeOfIArray()I
.end method

.method public abstract sizeOfICsArray()I
.end method

.method public abstract sizeOfImprintArray()I
.end method

.method public abstract sizeOfKernArray()I
.end method

.method public abstract sizeOfLangArray()I
.end method

.method public abstract sizeOfNoProofArray()I
.end method

.method public abstract sizeOfOMathArray()I
.end method

.method public abstract sizeOfOutlineArray()I
.end method

.method public abstract sizeOfPositionArray()I
.end method

.method public abstract sizeOfRFontsArray()I
.end method

.method public abstract sizeOfRStyleArray()I
.end method

.method public abstract sizeOfRtlArray()I
.end method

.method public abstract sizeOfShadowArray()I
.end method

.method public abstract sizeOfShdArray()I
.end method

.method public abstract sizeOfSmallCapsArray()I
.end method

.method public abstract sizeOfSnapToGridArray()I
.end method

.method public abstract sizeOfSpacingArray()I
.end method

.method public abstract sizeOfSpecVanishArray()I
.end method

.method public abstract sizeOfStrikeArray()I
.end method

.method public abstract sizeOfSzArray()I
.end method

.method public abstract sizeOfSzCsArray()I
.end method

.method public abstract sizeOfUArray()I
.end method

.method public abstract sizeOfVanishArray()I
.end method

.method public abstract sizeOfVertAlignArray()I
.end method

.method public abstract sizeOfWArray()I
.end method

.method public abstract sizeOfWebHiddenArray()I
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method
