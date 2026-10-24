.class public final synthetic Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$tgFrrT_Mv-y-9gKy3ppJRQHGozM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/common/TouchTargetEnforcer;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$tgFrrT_Mv-y-9gKy3ppJRQHGozM;->f$0:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

    iput-object p2, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$tgFrrT_Mv-y-9gKy3ppJRQHGozM;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$tgFrrT_Mv-y-9gKy3ppJRQHGozM;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$tgFrrT_Mv-y-9gKy3ppJRQHGozM;->f$0:Lcom/android/managedprovisioning/common/TouchTargetEnforcer;

    iget-object v1, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$tgFrrT_Mv-y-9gKy3ppJRQHGozM;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/managedprovisioning/common/-$$Lambda$TouchTargetEnforcer$tgFrrT_Mv-y-9gKy3ppJRQHGozM;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/android/managedprovisioning/common/TouchTargetEnforcer;->lambda$enforce$1$TouchTargetEnforcer(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
