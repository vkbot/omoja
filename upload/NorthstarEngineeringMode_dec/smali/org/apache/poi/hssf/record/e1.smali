.class public final synthetic Lorg/apache/poi/hssf/record/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/FeatRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/FeatRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/e1;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/e1;->b:Lorg/apache/poi/hssf/record/FeatRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/e1;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/e1;->b:Lorg/apache/poi/hssf/record/FeatRecord;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->a(Lorg/apache/poi/hssf/record/FeatRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->b(Lorg/apache/poi/hssf/record/FeatRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
