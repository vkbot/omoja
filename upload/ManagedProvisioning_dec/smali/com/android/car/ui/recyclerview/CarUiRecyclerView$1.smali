.class Lcom/android/car/ui/recyclerview/CarUiRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CarUiRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$1;->this$0:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-gtz p2, :cond_0

    if-lez p3, :cond_1

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$1;->this$0:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->access$102(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;Z)Z

    .line 118
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$1;->this$0:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    return-void
.end method
