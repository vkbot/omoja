.class public abstract Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdapterDataObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .line 1
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 3

    .line 5
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 3

    .line 1
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    .line 1
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 3

    .line 1
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .registers 1

    .line 1
    return-void
.end method
