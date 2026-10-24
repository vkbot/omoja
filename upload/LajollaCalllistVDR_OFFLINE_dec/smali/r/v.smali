.class public final Lr/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lm/e;I)V
    .locals 0

    iput p3, p0, Lr/v;->a:I

    iput-object p1, p0, Lr/v;->c:Ljava/lang/Object;

    iput-object p2, p0, Lr/v;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget v0, p0, Lr/v;->a:I

    iget-object p0, p0, Lr/v;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lm/e;

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lm/e;->a(D)D

    move-result-wide p0

    :goto_0
    double-to-float p0, p0

    return p0

    :pswitch_0
    check-cast p0, Lm/e;

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lm/e;->a(D)D

    move-result-wide p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
