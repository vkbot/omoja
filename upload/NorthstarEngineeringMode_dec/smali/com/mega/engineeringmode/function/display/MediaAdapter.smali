.class public Lcom/mega/engineeringmode/function/display/MediaAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/display/MediaAdapter$MediaViewHodler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mega/engineeringmode/function/display/MediaAdapter$MediaViewHodler;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln1/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public c:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/MediaAdapter;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/MediaAdapter;->a:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/mega/engineeringmode/function/display/MediaAdapter$MediaViewHodler;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/MediaAdapter;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  type  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/MediaAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln1/e;

    iget-object v1, v1, Ln1/e;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaAdapter"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/MediaAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln1/e;

    iget-object v0, v0, Ln1/e;->r:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/MediaAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln1/e;

    iget-object v0, v0, Ln1/e;->r:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ln2/n;->b(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter$MediaViewHodler;->a:Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f0800b8

    goto :goto_0

    :cond_0
    const v0, 0x7f0800ca

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter$MediaViewHodler;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/MediaAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln1/e;

    iget-object v1, v1, Ln1/e;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ln1/d;

    invoke-direct {v0, p0, p2}, Ln1/d;-><init>(Lcom/mega/engineeringmode/function/display/MediaAdapter;I)V

    iget-object p0, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter$MediaViewHodler;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/MediaAdapter;->b:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    const p2, 0x7f0d0076

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/mega/engineeringmode/function/display/MediaAdapter$MediaViewHodler;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p2, 0x7f0a01cb

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter$MediaViewHodler;->a:Landroid/widget/ImageView;

    const p2, 0x7f0a02d0

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter$MediaViewHodler;->b:Landroid/widget/TextView;

    return-object p1
.end method
