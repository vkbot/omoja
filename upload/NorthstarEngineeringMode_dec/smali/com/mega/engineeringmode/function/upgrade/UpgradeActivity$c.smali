.class public final Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final synthetic c:Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;->c:Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;->a:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;->a:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$d;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0118

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a0432

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$d;->a:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$d;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$b;

    iget-object v2, v2, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$b;

    iget-boolean v0, v0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$b;->b:Z

    iget-object v1, p2, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$d;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$d;->a:Landroid/widget/TextView;

    new-instance v0, Ld2/d;

    invoke-direct {v0, p0, p1}, Ld2/d;-><init>(Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p3
.end method

.method public final getViewTypeCount()I
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/upgrade/UpgradeActivity$c;->a:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isEnabled(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
