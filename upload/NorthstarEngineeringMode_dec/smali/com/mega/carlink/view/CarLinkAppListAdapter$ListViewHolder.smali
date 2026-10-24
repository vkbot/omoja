.class public final Lcom/mega/carlink/view/CarLinkAppListAdapter$ListViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carlink/view/CarLinkAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p0, 0x7f0a01e8

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "itemView.findViewById<Vi\u2026oup>(R.id.item_root_view)"

    invoke-static {p0, v0}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    const p0, 0x7f0a01e6

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "itemView.findViewById<ImageView>(R.id.item_icon)"

    invoke-static {p0, v0}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/ImageView;

    const p0, 0x7f0a01ea

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "itemView.findViewById<TextView>(R.id.item_text)"

    invoke-static {p0, v0}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    const p0, 0x7f0a019f

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string p1, "itemView.findViewById<ImageView>(R.id.gear_icon)"

    invoke-static {p0, p1}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/ImageView;

    return-void
.end method
