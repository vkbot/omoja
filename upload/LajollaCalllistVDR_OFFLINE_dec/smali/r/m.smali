.class public final Lr/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:Lm/e;


# direct methods
.method public constructor <init>(Lm/e;)V
    .locals 0

    iput-object p1, p0, Lr/m;->a:Lm/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget-object p0, p0, Lr/m;->a:Lm/e;

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lm/e;->a(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
