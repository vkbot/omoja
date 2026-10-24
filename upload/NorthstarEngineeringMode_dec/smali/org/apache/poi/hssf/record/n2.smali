.class public final synthetic Lorg/apache/poi/hssf/record/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/record/n2;->a:I

    iput-object p2, p0, Lorg/apache/poi/hssf/record/n2;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/n2;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/n2;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/hssf/record/PageBreakRecord;

    check-cast p1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->b(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/PageBreakRecord$Break;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/List;

    check-cast p1, Lorg/apache/poi/hssf/record/SubRecord;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
