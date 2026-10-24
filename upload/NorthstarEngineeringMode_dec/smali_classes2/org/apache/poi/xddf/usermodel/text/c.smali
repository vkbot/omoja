.class public final synthetic Lorg/apache/poi/xddf/usermodel/text/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/xddf/usermodel/text/c;->a:I

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/c;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/xddf/usermodel/text/c;->a:I

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/c;->b:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSym(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSpc(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setErr(Z)V

    return-void

    :pswitch_2
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setEffectLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectList;)V

    return-void

    :pswitch_3
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setHlinkMouseOver(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setBaseline(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setSz(I)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setNormalizeH(Z)V

    return-void

    :pswitch_7
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setCap(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextCapsType$Enum;)V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setNoProof(Z)V

    return-void

    :pswitch_9
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setU(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;)V

    return-void

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setKumimoji(Z)V

    return-void

    :pswitch_b
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V

    return-void

    :pswitch_c
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setDirty(Z)V

    return-void

    :pswitch_d
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setEffectDag(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectContainer;)V

    return-void

    :pswitch_e
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setB(Z)V

    return-void

    :pswitch_f
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLn(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V

    return-void

    :pswitch_10
    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setBmk(Ljava/lang/String;)V

    return-void

    :pswitch_11
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setStrike(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextStrikeType$Enum;)V

    return-void

    :pswitch_12
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setHlinkClick(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHyperlink;)V

    return-void

    :pswitch_13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setI(Z)V

    return-void

    :pswitch_14
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setKern(I)V

    return-void

    :pswitch_15
    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setAltLang(Ljava/lang/String;)V

    return-void

    :pswitch_16
    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setLang(Ljava/lang/String;)V

    return-void

    :pswitch_17
    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;->setHighlight(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
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
