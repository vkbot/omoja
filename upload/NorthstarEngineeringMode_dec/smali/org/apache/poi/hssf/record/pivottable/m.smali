.class public final synthetic Lorg/apache/poi/hssf/record/pivottable/m;
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

    iput p2, p0, Lorg/apache/poi/hssf/record/pivottable/m;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/m;->b:Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/m;->a:I

    iget-object p0, p0, Lorg/apache/poi/hssf/record/pivottable/m;->b:Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->k(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->d(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->a(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->c(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->v(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->m(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->h(Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
