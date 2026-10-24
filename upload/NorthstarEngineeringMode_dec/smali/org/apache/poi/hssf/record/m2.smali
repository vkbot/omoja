.class public final synthetic Lorg/apache/poi/hssf/record/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/m2;->a:I

    iput-object p2, p0, Lorg/apache/poi/hssf/record/m2;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/m2;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/m2;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getWSBool1()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/hssf/record/UserSViewBegin;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/UserSViewBegin;->a(Lorg/apache/poi/hssf/record/UserSViewBegin;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lorg/apache/poi/hssf/record/UnknownRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/UnknownRecord;->a(Lorg/apache/poi/hssf/record/UnknownRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/apache/poi/hssf/record/UncalcedRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/UncalcedRecord;->a(Lorg/apache/poi/hssf/record/UncalcedRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/apache/poi/hssf/record/StringRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/StringRecord;->a(Lorg/apache/poi/hssf/record/StringRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/apache/poi/hssf/record/SelectionRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SelectionRecord;->getActiveCellCol()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/apache/poi/hssf/record/SaveRecalcRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SaveRecalcRecord;->getRecalc()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/apache/poi/util/IntMapper;

    invoke-virtual {p0}, Lorg/apache/poi/util/IntMapper;->getElements()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/apache/poi/hssf/record/SCLRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SCLRecord;->getDenominator()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RightMarginRecord;->getMargin()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/apache/poi/hssf/record/RefModeRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RefModeRecord;->getMode()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->a(Lorg/apache/poi/hssf/record/RecalcIdRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/apache/poi/hssf/record/ProtectionRev4Record;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ProtectionRev4Record;->getProtect()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/apache/poi/hssf/record/ProtectRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ProtectRecord;->a(Lorg/apache/poi/hssf/record/ProtectRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->getPrintHeaders()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lorg/apache/poi/hssf/record/PasswordRev4Record;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/PasswordRev4Record;->a(Lorg/apache/poi/hssf/record/PasswordRev4Record;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->b(Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lorg/apache/poi/hssf/record/OldStringRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lorg/apache/poi/hssf/record/OldSheetRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/OldSheetRecord;->a(Lorg/apache/poi/hssf/record/OldSheetRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lorg/apache/poi/hssf/record/OldLabelRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldLabelRecord;->getStringLength()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getFormula()Lorg/apache/poi/ss/formula/Formula;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->b(Lorg/apache/poi/hssf/record/ObjRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/NoteStructureSubRecord;->a(Lorg/apache/poi/hssf/record/NoteStructureSubRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
