.class public final synthetic Lorg/apache/poi/hssf/record/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/w0;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/w0;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    check-cast p1, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;-><init>(Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    check-cast p1, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord$PColor;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    check-cast p1, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;-><init>(Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
