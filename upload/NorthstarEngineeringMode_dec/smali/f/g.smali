.class public final synthetic Lf/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf/g;->a:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lf/g;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;

    invoke-static {p1}, Lorg/apache/poi/xslf/usermodel/XSLFDiagram;->b(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSpc()Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetBmk()Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetLn()Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetDirty()Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetLang()Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSym()Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetCs()Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetStrike()Z

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetBaseline()Z

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetHlinkMouseOver()Z

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetSolidFill()Z

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetErr()Z

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->isSetHighlight()Z

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->c(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;->isSetEaLnBrk()Z

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->d(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)Z

    move-result p0

    return p0

    :pswitch_10
    invoke-static {p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->n(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_11
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->b(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_12
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->b(Lorg/apache/commons/compress/archivers/zip/o0;)Z

    move-result p0

    return p0

    :pswitch_13
    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_14
    check-cast p1, Ld/g;

    invoke-virtual {p1}, Ld/g;->i()Z

    move-result p0

    return p0

    :pswitch_15
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p1}, Lf/d;->f(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
