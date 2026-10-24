.class public final synthetic Lcom/android/server/wm/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/g;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/g;->a:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/v;->t(Ljava/lang/Runnable;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
