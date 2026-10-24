.class public final synthetic Lorg/apache/poi/hssf/record/pivottable/j;
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

    iput p2, p0, Lorg/apache/poi/hssf/record/pivottable/j;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/j;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/j;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/j;->b:Lorg/apache/poi/common/usermodel/GenericRecord;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->a(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->b(Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
