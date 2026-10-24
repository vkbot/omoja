.class public final synthetic Ld2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld2/a;->a:I

    iput-object p2, p0, Ld2/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Ld2/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Ld2/a;->a:I

    iget-object v0, p0, Ld2/a;->c:Ljava/lang/Object;

    iget-object p0, p0, Ld2/a;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/function/wifi/WifiTestActivity;

    check-cast v0, Landroid/net/wifi/WifiManager;

    sget p1, Lcom/mega/engineeringmode/function/wifi/WifiTestActivity;->p:I

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/wifi/WifiTestActivity;->n(Landroid/net/wifi/WifiManager;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/upgrade/FileAdapter;

    check-cast v0, Lcom/mega/engineeringmode/function/upgrade/FileAdapter$FileViewHolder;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/upgrade/FileAdapter;->b:Lcom/mega/engineeringmode/function/upgrade/FileAdapter$a;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/mega/engineeringmode/function/upgrade/FileAdapter;->a:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    check-cast p1, Ls0/e;

    iget-object p1, p1, Ls0/e;->r:Ljava/lang/Object;

    check-cast p1, Lcom/mega/engineeringmode/function/upgrade/a;

    sget v0, Lcom/mega/engineeringmode/function/upgrade/a;->i:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".cbf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "TBoxUpgradeDialog"

    if-ne v0, v1, :cond_0

    const-string p1, "cbfPath = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".rsa"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rsaPath = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iget-object v2, p1, Lcom/mega/engineeringmode/function/upgrade/a;->a:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const-string/jumbo p0, "sign file not found!"

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Lcom/mega/engineeringmode/function/upgrade/a;->a(Ljava/lang/String;)V

    new-instance p0, Lq0/b;

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lq0/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lcom/mega/engineeringmode/function/upgrade/a;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
