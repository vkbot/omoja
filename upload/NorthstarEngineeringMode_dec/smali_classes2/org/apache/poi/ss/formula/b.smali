.class public final synthetic Lorg/apache/poi/ss/formula/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/ss/formula/b;->a:I

    iput-object p1, p0, Lorg/apache/poi/ss/formula/b;->b:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/b;->a:I

    iget-object p0, p0, Lorg/apache/poi/ss/formula/b;->b:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    check-cast p1, Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->b(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->c(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
