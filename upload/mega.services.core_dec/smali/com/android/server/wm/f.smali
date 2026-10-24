.class public final synthetic Lcom/android/server/wm/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/f;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/f;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, La/a/l;

    invoke-static {p0, p1}, Lcom/android/server/wm/q;->d(Landroid/app/ActivityManager$RunningTaskInfo;La/a/l;)V

    return-void
.end method
