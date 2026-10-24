.class public final synthetic Lorg/apache/poi/hssf/record/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/v0;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/v0;->b:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/v0;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/v0;->b:Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getIndentionOptions()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignment()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getCellOptions()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillForeground()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlDiagLineStyle()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getTopBorderPaletteIdx()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getPaletteOptions()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderRight()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getReadingOrder()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
