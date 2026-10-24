.class public final Lq/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ll/e;I)V
    .locals 0

    iput p3, p0, Lq/v;->a:I

    iput-object p1, p0, Lq/v;->c:Ljava/lang/Object;

    iput-object p2, p0, Lq/v;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    iget v0, p0, Lq/v;->a:I

    iget-object v1, p0, Lq/v;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Ll/e;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ll/e;->a(D)D

    move-result-wide v0

    :goto_0
    double-to-float p1, v0

    return p1

    :pswitch_0
    check-cast v1, Ll/e;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ll/e;->a(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
