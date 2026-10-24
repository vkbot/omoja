.class Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;->this$0:Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;

    iput-object p2, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;->this$0:Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;

    invoke-static {v0}, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;->access$000(Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;)Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;->this$0:Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;

    invoke-static {v0}, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;->access$000(Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;)Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;

    move-result-object v0

    iget-object p0, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p0

    invoke-interface {v0, p1, p0}, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;->onItemLongClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;->this$0:Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;

    invoke-static {v0}, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;->access$000(Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;)Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;->this$0:Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;

    invoke-static {v0}, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;->access$000(Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;)Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;

    move-result-object v0

    iget-object p0, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p0

    invoke-interface {v0, p1, p0}, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
