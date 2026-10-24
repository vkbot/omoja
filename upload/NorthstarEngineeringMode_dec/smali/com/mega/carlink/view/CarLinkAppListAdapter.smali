.class public final Lcom/mega/carlink/view/CarLinkAppListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/carlink/view/CarLinkAppListAdapter$ListViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mega/carlink/view/CarLinkAppListAdapter$ListViewHolder;",
        ">;"
    }
.end annotation


# virtual methods
.method public final getItemCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/mega/carlink/view/CarLinkAppListAdapter$ListViewHolder;

    const-string p0, "holder"

    invoke-static {p1, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string/jumbo p0, "parent"

    invoke-static {p1, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d0057

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "from(parent.context)\n   \u2026on_layout, parent, false)"

    invoke-static {p0, p1}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/mega/carlink/view/CarLinkAppListAdapter$ListViewHolder;

    invoke-direct {p1, p0}, Lcom/mega/carlink/view/CarLinkAppListAdapter$ListViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
