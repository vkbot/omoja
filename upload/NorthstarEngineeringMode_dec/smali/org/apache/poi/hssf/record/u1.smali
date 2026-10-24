.class public final synthetic Lorg/apache/poi/hssf/record/u1;
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

    iput p2, p0, Lorg/apache/poi/hssf/record/u1;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/u1;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/u1;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/u1;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/hssf/record/WriteAccessRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WriteAccessRecord;->getUsername()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/hssf/record/WindowProtectRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/WindowProtectRecord;->a(Lorg/apache/poi/hssf/record/WindowProtectRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getWSBool2()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/apache/poi/hssf/record/UserSViewEnd;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/UserSViewEnd;->a(Lorg/apache/poi/hssf/record/UserSViewEnd;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/apache/poi/hssf/record/UseSelFSRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/UseSelFSRecord;->a(Lorg/apache/poi/hssf/record/UseSelFSRecord;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/hssf/record/UnknownRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/UnknownRecord;->b(Lorg/apache/poi/hssf/record/UnknownRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/apache/poi/hssf/record/StyleRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->b(Lorg/apache/poi/hssf/record/StyleRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/hssf/record/StringRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StringRecord;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->a(Lorg/apache/poi/hssf/record/SharedFormulaRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ScenarioProtectRecord;->getProtect()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/hssf/record/RefreshAllRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/RefreshAllRecord;->a(Lorg/apache/poi/hssf/record/RefreshAllRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->getEngineId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/hssf/record/RKRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/RKRecord;->a(Lorg/apache/poi/hssf/record/RKRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/hssf/record/ProtectRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ProtectRecord;->getProtect()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/hssf/record/PrecisionRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrecisionRecord;->getFullPrecision()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->a(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getNumBreaks()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/apache/poi/hssf/record/OldSheetRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/OldSheetRecord;->b(Lorg/apache/poi/hssf/record/OldSheetRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/apache/poi/hssf/record/OldLabelRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldLabelRecord;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/apache/poi/hssf/record/OldCellRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/apache/poi/hssf/record/ObjectProtectRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjectProtectRecord;->getProtect()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->a(Lorg/apache/poi/hssf/record/ObjRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/NumberRecord;->a(Lorg/apache/poi/hssf/record/NumberRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/apache/poi/hssf/record/MulRKRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulRKRecord;->getFirstColumn()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lorg/apache/poi/hssf/record/MulBlankRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MulBlankRecord;->getLastColumn()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lorg/apache/poi/hssf/record/MergeCellsRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->getNumAreas()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LeftMarginRecord;->getMargin()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->a(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->a(Lorg/apache/poi/hssf/record/LabelSSTRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/InterfaceHdrRecord;->a(Lorg/apache/poi/hssf/record/InterfaceHdrRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
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
