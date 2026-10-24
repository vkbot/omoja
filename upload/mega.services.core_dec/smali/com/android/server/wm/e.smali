.class public final synthetic Lcom/android/server/wm/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic b:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/e;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, p0, Lcom/android/server/wm/e;->b:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/e;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/android/server/wm/e;->b:Landroid/view/SurfaceControl;

    check-cast p1, La/a/l;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/q;->c(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;La/a/l;)V

    return-void
.end method
