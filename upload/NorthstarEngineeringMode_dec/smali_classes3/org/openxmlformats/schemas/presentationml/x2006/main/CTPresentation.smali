.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/b<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;",
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

    const-string v2, "ctpresentation56cbtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/c;-><init>(Li5/f0;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->Factory:Lorg/apache/xmlbeans/impl/schema/b;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/c;->a:Li5/c0;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentation;->type:Li5/c0;

    return-void
.end method


# virtual methods
.method public abstract addNewCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract addNewCustShowLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowList;
.end method

.method public abstract addNewDefaultTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract addNewEmbeddedFontLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewHandoutMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHandoutMasterIdList;
.end method

.method public abstract addNewKinsoku()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTKinsoku;
.end method

.method public abstract addNewModifyVerifier()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTModifyVerifier;
.end method

.method public abstract addNewNotesMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;
.end method

.method public abstract addNewNotesSz()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract addNewPhotoAlbum()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPhotoAlbum;
.end method

.method public abstract addNewSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
.end method

.method public abstract addNewSldMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;
.end method

.method public abstract addNewSldSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;
.end method

.method public abstract addNewSmartTags()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSmartTags;
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

.method public abstract getAutoCompressPictures()Z
.end method

.method public abstract getBookmarkIdSeed()J
.end method

.method public abstract getCompatMode()Z
.end method

.method public abstract getConformance()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STConformanceClass$Enum;
.end method

.method public abstract getCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract getCustShowLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowList;
.end method

.method public abstract getDefaultTextStyle()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;
.end method

.method public abstract synthetic getDomNode()Lorg/w3c/dom/Node;
.end method

.method public abstract getEmbedTrueTypeFonts()Z
.end method

.method public abstract getEmbeddedFontLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getFirstSlideNum()I
.end method

.method public abstract getHandoutMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHandoutMasterIdList;
.end method

.method public abstract getKinsoku()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTKinsoku;
.end method

.method public abstract getModifyVerifier()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTModifyVerifier;
.end method

.method public abstract getNotesMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;
.end method

.method public abstract getNotesSz()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract getPhotoAlbum()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPhotoAlbum;
.end method

.method public abstract getRemovePersonalInfoOnSave()Z
.end method

.method public abstract getRtl()Z
.end method

.method public abstract getSaveSubsetFonts()Z
.end method

.method public abstract getServerZoom()Ljava/lang/Object;
.end method

.method public abstract getShowSpecialPlsOnTitleSld()Z
.end method

.method public abstract getSldIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
.end method

.method public abstract getSldMasterIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;
.end method

.method public abstract getSldSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;
.end method

.method public abstract getSmartTags()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSmartTags;
.end method

.method public abstract getStrictFirstAndLastChars()Z
.end method

.method public abstract synthetic isImmutable()Z
.end method

.method public abstract synthetic isNil()Z
.end method

.method public abstract isSetAutoCompressPictures()Z
.end method

.method public abstract isSetBookmarkIdSeed()Z
.end method

.method public abstract isSetCompatMode()Z
.end method

.method public abstract isSetConformance()Z
.end method

.method public abstract isSetCustDataLst()Z
.end method

.method public abstract isSetCustShowLst()Z
.end method

.method public abstract isSetDefaultTextStyle()Z
.end method

.method public abstract isSetEmbedTrueTypeFonts()Z
.end method

.method public abstract isSetEmbeddedFontLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFirstSlideNum()Z
.end method

.method public abstract isSetHandoutMasterIdLst()Z
.end method

.method public abstract isSetKinsoku()Z
.end method

.method public abstract isSetModifyVerifier()Z
.end method

.method public abstract isSetNotesMasterIdLst()Z
.end method

.method public abstract isSetPhotoAlbum()Z
.end method

.method public abstract isSetRemovePersonalInfoOnSave()Z
.end method

.method public abstract isSetRtl()Z
.end method

.method public abstract isSetSaveSubsetFonts()Z
.end method

.method public abstract isSetServerZoom()Z
.end method

.method public abstract isSetShowSpecialPlsOnTitleSld()Z
.end method

.method public abstract isSetSldIdLst()Z
.end method

.method public abstract isSetSldMasterIdLst()Z
.end method

.method public abstract isSetSldSz()Z
.end method

.method public abstract isSetSmartTags()Z
.end method

.method public abstract isSetStrictFirstAndLastChars()Z
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

.method public abstract setAutoCompressPictures(Z)V
.end method

.method public abstract setBookmarkIdSeed(J)V
.end method

.method public abstract setCompatMode(Z)V
.end method

.method public abstract setConformance(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STConformanceClass$Enum;)V
.end method

.method public abstract setCustDataLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;)V
.end method

.method public abstract setCustShowLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomShowList;)V
.end method

.method public abstract setDefaultTextStyle(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextListStyle;)V
.end method

.method public abstract setEmbedTrueTypeFonts(Z)V
.end method

.method public abstract setEmbeddedFontLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFirstSlideNum(I)V
.end method

.method public abstract setHandoutMasterIdLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHandoutMasterIdList;)V
.end method

.method public abstract setKinsoku(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTKinsoku;)V
.end method

.method public abstract setModifyVerifier(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTModifyVerifier;)V
.end method

.method public abstract synthetic setNil()V
.end method

.method public abstract setNotesMasterIdLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesMasterIdList;)V
.end method

.method public abstract setNotesSz(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
.end method

.method public abstract setPhotoAlbum(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPhotoAlbum;)V
.end method

.method public abstract setRemovePersonalInfoOnSave(Z)V
.end method

.method public abstract setRtl(Z)V
.end method

.method public abstract setSaveSubsetFonts(Z)V
.end method

.method public abstract setServerZoom(Ljava/lang/Object;)V
.end method

.method public abstract setShowSpecialPlsOnTitleSld(Z)V
.end method

.method public abstract setSldIdLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;)V
.end method

.method public abstract setSldMasterIdLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdList;)V
.end method

.method public abstract setSldSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSize;)V
.end method

.method public abstract setSmartTags(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSmartTags;)V
.end method

.method public abstract setStrictFirstAndLastChars(Z)V
.end method

.method public abstract synthetic substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract unsetAutoCompressPictures()V
.end method

.method public abstract unsetBookmarkIdSeed()V
.end method

.method public abstract unsetCompatMode()V
.end method

.method public abstract unsetConformance()V
.end method

.method public abstract unsetCustDataLst()V
.end method

.method public abstract unsetCustShowLst()V
.end method

.method public abstract unsetDefaultTextStyle()V
.end method

.method public abstract unsetEmbedTrueTypeFonts()V
.end method

.method public abstract unsetEmbeddedFontLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFirstSlideNum()V
.end method

.method public abstract unsetHandoutMasterIdLst()V
.end method

.method public abstract unsetKinsoku()V
.end method

.method public abstract unsetModifyVerifier()V
.end method

.method public abstract unsetNotesMasterIdLst()V
.end method

.method public abstract unsetPhotoAlbum()V
.end method

.method public abstract unsetRemovePersonalInfoOnSave()V
.end method

.method public abstract unsetRtl()V
.end method

.method public abstract unsetSaveSubsetFonts()V
.end method

.method public abstract unsetServerZoom()V
.end method

.method public abstract unsetShowSpecialPlsOnTitleSld()V
.end method

.method public abstract unsetSldIdLst()V
.end method

.method public abstract unsetSldMasterIdLst()V
.end method

.method public abstract unsetSldSz()V
.end method

.method public abstract unsetSmartTags()V
.end method

.method public abstract unsetStrictFirstAndLastChars()V
.end method

.method public abstract synthetic validate()Z
.end method

.method public abstract synthetic validate(Li5/z1;)Z
.end method

.method public abstract synthetic valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract synthetic valueHashCode()I
.end method

.method public abstract xgetAutoCompressPictures()Li5/m0;
.end method

.method public abstract xgetBookmarkIdSeed()Lorg/openxmlformats/schemas/presentationml/x2006/main/STBookmarkIdSeed;
.end method

.method public abstract xgetCompatMode()Li5/m0;
.end method

.method public abstract xgetConformance()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STConformanceClass;
.end method

.method public abstract xgetEmbedTrueTypeFonts()Li5/m0;
.end method

.method public abstract xgetFirstSlideNum()Li5/l1;
.end method

.method public abstract xgetRemovePersonalInfoOnSave()Li5/m0;
.end method

.method public abstract xgetRtl()Li5/m0;
.end method

.method public abstract xgetSaveSubsetFonts()Li5/m0;
.end method

.method public abstract xgetServerZoom()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetShowSpecialPlsOnTitleSld()Li5/m0;
.end method

.method public abstract xgetStrictFirstAndLastChars()Li5/m0;
.end method

.method public abstract synthetic xmlText()Ljava/lang/String;
.end method

.method public abstract synthetic xmlText(Li5/z1;)Ljava/lang/String;
.end method

.method public abstract xsetAutoCompressPictures(Li5/m0;)V
.end method

.method public abstract xsetBookmarkIdSeed(Lorg/openxmlformats/schemas/presentationml/x2006/main/STBookmarkIdSeed;)V
.end method

.method public abstract xsetCompatMode(Li5/m0;)V
.end method

.method public abstract xsetConformance(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STConformanceClass;)V
.end method

.method public abstract xsetEmbedTrueTypeFonts(Li5/m0;)V
.end method

.method public abstract xsetFirstSlideNum(Li5/l1;)V
.end method

.method public abstract xsetRemovePersonalInfoOnSave(Li5/m0;)V
.end method

.method public abstract xsetRtl(Li5/m0;)V
.end method

.method public abstract xsetSaveSubsetFonts(Li5/m0;)V
.end method

.method public abstract xsetServerZoom(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetShowSpecialPlsOnTitleSld(Li5/m0;)V
.end method

.method public abstract xsetStrictFirstAndLastChars(Li5/m0;)V
.end method
