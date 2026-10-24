.class public final synthetic Lorg/apache/poi/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/util/a;->a:I

    iput p1, p0, Lorg/apache/poi/util/a;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/apache/poi/util/a;->a:I

    iget p0, p0, Lorg/apache/poi/util/a;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lm5/o0$a;

    const/4 v0, 0x0

    if-gez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lm5/o0$a;->k()Lm5/h;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lm5/h;->u0()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p0, -0x1

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v0

    goto :goto_1

    :cond_1
    move p0, v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lm5/h;->h0()V

    check-cast v0, Lorg/w3c/dom/Node;

    :goto_2
    return-object v0

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lorg/apache/poi/util/BitFieldFactory;->a(ILjava/lang/Integer;)Lorg/apache/poi/util/BitField;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
