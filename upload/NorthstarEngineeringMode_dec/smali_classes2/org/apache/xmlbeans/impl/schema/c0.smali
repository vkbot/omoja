.class public final synthetic Lorg/apache/xmlbeans/impl/schema/c0;
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

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/c0;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/c0;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getCalendarValue()Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Li5/i0;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/q1;->h1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljavax/xml/namespace/QName;

    invoke-static {p1}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lm5/o0$a;

    invoke-static {p1}, Lm5/o0;->M(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lm5/o0$a;

    invoke-static {p1}, Lm5/o0;->K(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    move-object p1, p0

    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->t()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    check-cast p0, Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_6
    check-cast p1, Lm5/o0$a;

    invoke-static {p1}, Lm5/o0;->x(Lm5/o0$a;)Lorg/w3c/dom/Element;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lm5/o0$a;

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object p0

    invoke-virtual {p0}, Lm5/z0;->J()Lm5/h;

    move-result-object p0

    invoke-virtual {p0}, Lm5/h;->g()V

    invoke-virtual {p0}, Lm5/h;->t()Lm5/o0$a;

    move-result-object p1

    invoke-virtual {p0}, Lm5/h;->h0()V

    check-cast p1, Lorg/w3c/dom/DocumentFragment;

    return-object p1

    :pswitch_8
    check-cast p1, Lm5/o0$a;

    invoke-static {p1}, Lm5/o0;->N(Lm5/o0$a;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lorg/apache/xmlbeans/impl/schema/d0$a;

    iget p0, p1, Lorg/apache/xmlbeans/impl/schema/d0$a;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
