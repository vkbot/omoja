.class public final synthetic Lorg/apache/poi/hssf/record/pivottable/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/pivottable/k;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/k;->b:Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/k;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/k;->b:Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->l(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->t(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->e(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->u(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->o(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->s(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->b(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->j(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
