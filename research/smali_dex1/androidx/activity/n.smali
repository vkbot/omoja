.class public final synthetic Landroidx/activity/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic a:Lx8/q;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lx8/q;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/n;->a:Lx8/q;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/n;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/activity/n;->a:Lx8/q;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/n;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;->e(Lx8/q;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
