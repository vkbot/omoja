.class public final synthetic Lv1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lv1/c;->a:I

    iput-object p1, p0, Lv1/c;->b:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lv1/c;->a:I

    const/4 v0, 0x0

    iget-object p0, p0, Lv1/c;->b:Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->i:Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " submitValue "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->c:Lv1/a;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lv1/a;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ConfigurationAdapter"

    invoke-static {v1, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->c:Lv1/a;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->m:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv1/e;

    iget v2, v2, Lv1/e;->d:I

    iget-object v3, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->m:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv1/e;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lv1/e;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " submitValue  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->c:Lv1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "submitValue old "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->c:Lv1/a;

    iget-object v2, v2, Lv1/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->c:Lv1/a;

    invoke-static {v0, p1}, Lv1/f;->c(Lv1/a;Lv1/e;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lv1/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "submitValue new "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->c:Lv1/a;

    iget-object v2, v2, Lv1/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->m:I

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->e:Landroid/app/AlertDialog;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->e:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    :cond_3
    const p1, 0x7f12015c

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->b:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lk2/d;->a(Landroid/content/Context;II)V

    :cond_4
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/offlineconfiguration/ConfigurationAdapter;->a(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
