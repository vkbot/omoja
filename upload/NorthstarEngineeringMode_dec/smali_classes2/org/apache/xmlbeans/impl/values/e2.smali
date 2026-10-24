.class public final synthetic Lorg/apache/xmlbeans/impl/values/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/e2;->a:I

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/e2;->a:I

    check-cast p1, Li5/g0;

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, Li5/g0;->getDoubleValue()D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    invoke-interface {p1}, Li5/g0;->getDoubleValue()D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
