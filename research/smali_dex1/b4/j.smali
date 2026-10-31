.class public abstract Lb4/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Landroid/os/Handler;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    sget-object v0, Lb3/a;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 2
    .line 3
    sget-object v0, Lb3/a;->a:Landroid/view/animation/LinearInterpolator;

    .line 4
    .line 5
    sget-object v0, Lb3/a;->d:Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    .line 6
    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lb4/c;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v3}, Lb4/c;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lb4/j;->b:Landroid/os/Handler;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method
