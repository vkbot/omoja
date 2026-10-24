.class public final Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;->a:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;->a:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->k:Ljava/util/ArrayList;

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
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$b;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;->a:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onBindViewHolder did "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf2/b;

    iget-object v1, v1, Lf2/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf2/b;

    iget-object v1, v1, Lf2/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf2/b;

    iget-object v1, v1, Lf2/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmcProductionActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$b;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf2/b;

    iget-object v1, v1, Lf2/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf2/b;

    iget-object v0, v0, Lf2/b;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf2/b;

    iget-object p0, p0, Lf2/b;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
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

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;->a:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    const p2, 0x7f0d005d

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$b;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p2, 0x7f0a01e5

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$b;->a:Landroid/widget/TextView;

    const p2, 0x7f0a01e7

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$b;->b:Landroid/widget/TextView;

    const p2, 0x7f0a01ec

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p1, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$b;->c:Landroid/widget/TextView;

    return-object p1
.end method
