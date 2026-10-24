.class public final synthetic Lorg/apache/poi/hssf/record/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/common/usermodel/GenericRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/common/usermodel/GenericRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/q1;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/q1;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/q1;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/q1;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/hssf/record/WindowProtectRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowProtectRecord;->getProtect()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/VCenterRecord;->getVCenter()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/hssf/record/UserSViewBegin;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/UserSViewBegin;->getGuid()[B

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/apache/poi/hssf/record/UnknownRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/UnknownRecord;->getSid()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TopMarginRecord;->getMargin()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/hssf/record/TableRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/TableRecord;->c(Lorg/apache/poi/hssf/record/TableRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/apache/poi/hssf/record/TabIdRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/TabIdRecord;->a(Lorg/apache/poi/hssf/record/TabIdRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->b(Lorg/apache/poi/hssf/record/SharedFormulaRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/hssf/record/SCLRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SCLRecord;->getNumerator()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/hssf/record/RefreshAllRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RefreshAllRecord;->getRefreshAll()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/hssf/record/RKRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RKRecord;->getRKNumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->a(Lorg/apache/poi/hssf/record/ProtectionRev4Record;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;->getPrintGridlines()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/hssf/record/PasswordRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PasswordRecord;->getPassword()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getTopRow()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/apache/poi/hssf/record/PaletteRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/PaletteRecord;->a(Lorg/apache/poi/hssf/record/PaletteRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->c(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->a(Lorg/apache/poi/hssf/record/PageBreakRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/apache/poi/hssf/record/OldLabelRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/OldLabelRecord;->a(Lorg/apache/poi/hssf/record/OldLabelRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getOptions()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->a(Lorg/apache/poi/hssf/record/NameCommentRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/apache/poi/hssf/record/MulRKRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getLastColumn()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->a(Lorg/apache/poi/hssf/record/MergeCellsRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/apache/poi/hssf/record/MMSRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getAddMenuCount()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/apache/poi/hssf/record/IterationRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/IterationRecord;->a(Lorg/apache/poi/hssf/record/IterationRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/apache/poi/hssf/record/HideObjRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HideObjRecord;->getHideObj()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
