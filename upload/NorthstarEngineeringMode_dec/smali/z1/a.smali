.class public final Lz1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic x:Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/a;->x:Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;

    iput p2, p0, Lz1/a;->c:I

    iput-object p3, p0, Lz1/a;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lz1/a;->r:Ljava/lang/String;

    iget-object v1, p0, Lz1/a;->x:Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;

    iget p0, p0, Lz1/a;->c:I

    if-nez p0, :cond_0

    iget-object p0, v1, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->i:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    iget-object p0, v1, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->j:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    iget-object p0, v1, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->k:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p0, v2, :cond_3

    iget-object p0, v1, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->l:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p0, v2, :cond_4

    iget-object p0, v1, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->m:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-ne p0, v2, :cond_5

    iget-object p0, v1, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->n:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    if-ne p0, v2, :cond_6

    iget-object p0, v1, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->o:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x7

    if-ne p0, v2, :cond_7

    iget-object p0, v1, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->p:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const/16 v2, 0x8

    if-ne p0, v2, :cond_8

    iget-object p0, v1, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->q:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    const/16 v2, 0x9

    if-ne p0, v2, :cond_9

    iget-object p0, v1, Lcom/mega/engineeringmode/function/screen/DashboardStatusActivity;->r:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_0
    return-void
.end method
