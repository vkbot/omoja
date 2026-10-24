.class public Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mega/engineeringmode/function/tbox/b$b;


# instance fields
.field public i:Landroid/widget/TextView;

.field public j:Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;

.field public k:Lcom/mega/engineeringmode/function/tbox/TBoxExtraFragment;

.field public l:Lcom/mega/engineeringmode/function/tbox/TBoxLogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(ILjava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onMessage  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TBoxTestActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    const-string p1, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f1200e4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f1202e6

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final n(I)V
    .locals 4

    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->j:Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->o(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->k:Lcom/mega/engineeringmode/function/tbox/TBoxExtraFragment;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->o(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->l:Lcom/mega/engineeringmode/function/tbox/TBoxLogFragment;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->o(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public final o(Landroidx/fragment/app/Fragment;Z)V
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->n(I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->n(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->n(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00a7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0049

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f1201e0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "TBoxLogFragment"

    const-string v1, "TBoxExtraFragment"

    const-string v2, "TBoxBaseFragment"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->j:Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/tbox/TBoxExtraFragment;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->k:Lcom/mega/engineeringmode/function/tbox/TBoxExtraFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/tbox/TBoxLogFragment;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->l:Lcom/mega/engineeringmode/function/tbox/TBoxLogFragment;

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->j:Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;

    const v3, 0x7f0a019a

    if-nez p1, :cond_1

    new-instance p1, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;

    invoke-direct {p1}, Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->j:Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v4, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->j:Lcom/mega/engineeringmode/function/tbox/TBoxBaseFragment;

    invoke-virtual {p1, v3, v4, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->k:Lcom/mega/engineeringmode/function/tbox/TBoxExtraFragment;

    if-nez p1, :cond_2

    new-instance p1, Lcom/mega/engineeringmode/function/tbox/TBoxExtraFragment;

    invoke-direct {p1}, Lcom/mega/engineeringmode/function/tbox/TBoxExtraFragment;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->k:Lcom/mega/engineeringmode/function/tbox/TBoxExtraFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->k:Lcom/mega/engineeringmode/function/tbox/TBoxExtraFragment;

    invoke-virtual {p1, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    iget-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->l:Lcom/mega/engineeringmode/function/tbox/TBoxLogFragment;

    if-nez p1, :cond_3

    new-instance p1, Lcom/mega/engineeringmode/function/tbox/TBoxLogFragment;

    invoke-direct {p1}, Lcom/mega/engineeringmode/function/tbox/TBoxLogFragment;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->l:Lcom/mega/engineeringmode/function/tbox/TBoxLogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->l:Lcom/mega/engineeringmode/function/tbox/TBoxLogFragment;

    invoke-virtual {p1, v3, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_3
    const p1, 0x7f0a03ee

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/tbox/TBoxTestActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f0a00a7

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/mega/engineeringmode/function/tbox/b;->n:Lcom/mega/engineeringmode/function/tbox/b;

    invoke-virtual {v0, p0}, Lcom/mega/engineeringmode/function/tbox/b;->a(Lcom/mega/engineeringmode/function/tbox/b$b;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    sget-object v0, Lcom/mega/engineeringmode/function/tbox/b;->n:Lcom/mega/engineeringmode/function/tbox/b;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/tbox/b;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
