.class public final synthetic Lorg/apache/poi/extractor/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/extractor/e;->a:I

    iput-object p1, p0, Lorg/apache/poi/extractor/e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/extractor/e;->a:I

    iget-object p0, p0, Lorg/apache/poi/extractor/e;->b:Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lorg/apache/poi/ss/usermodel/WorkbookProvider;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    check-cast p1, Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    check-cast p1, Lorg/apache/poi/extractor/ExtractorProvider;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
