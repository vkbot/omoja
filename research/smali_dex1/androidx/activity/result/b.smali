.class public final synthetic Landroidx/activity/result/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic b:Landroidx/activity/result/ActivityResultRegistry;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/activity/result/ActivityResultCallback;

.field public final synthetic e:Landroidx/activity/result/contract/ActivityResultContract;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;Landroidx/activity/result/contract/ActivityResultContract;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/result/b;->b:Landroidx/activity/result/ActivityResultRegistry;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/result/b;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/activity/result/b;->d:Landroidx/activity/result/ActivityResultCallback;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/activity/result/b;->e:Landroidx/activity/result/contract/ActivityResultContract;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 9

    .line 1
    iget-object v2, p0, Landroidx/activity/result/b;->d:Landroidx/activity/result/ActivityResultCallback;

    .line 2
    .line 3
    iget-object v3, p0, Landroidx/activity/result/b;->e:Landroidx/activity/result/contract/ActivityResultContract;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/activity/result/b;->b:Landroidx/activity/result/ActivityResultRegistry;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/activity/result/b;->c:Ljava/lang/String;

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-static/range {v0 .. v5}, Landroidx/activity/result/ActivityResultRegistry;->a(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
