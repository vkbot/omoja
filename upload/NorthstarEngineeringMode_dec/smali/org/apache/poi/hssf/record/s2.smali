.class public final synthetic Lorg/apache/poi/hssf/record/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/s2;->a:I

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/s2;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lorg/apache/poi/hssf/record/MergeCellsRecord;->b(I)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->a(I)[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;-><init>(I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
