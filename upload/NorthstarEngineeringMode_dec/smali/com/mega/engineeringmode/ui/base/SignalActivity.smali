.class public abstract Lcom/mega/engineeringmode/ui/base/SignalActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# instance fields
.field public final i:Lcom/mega/engineeringmode/ui/base/SignalActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Lcom/mega/engineeringmode/ui/base/SignalActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/ui/base/SignalActivity$a;-><init>(Lcom/mega/engineeringmode/ui/base/SignalActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/ui/base/SignalActivity;->i:Lcom/mega/engineeringmode/ui/base/SignalActivity$a;

    return-void
.end method


# virtual methods
.method public n()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract o()V
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0046

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/base/SignalActivity;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->i(Ljava/lang/String;)V

    const p1, 0x7f0a0424

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/base/SignalActivity;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/base/SignalActivity;->r()V

    const p1, 0x7f0a0395

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/ui/MegaSwitch;

    new-instance v0, Ll2/a;

    invoke-direct {v0, p0, p1}, Ll2/a;-><init>(Lcom/mega/engineeringmode/ui/base/SignalActivity;Lcom/mega/engineeringmode/ui/MegaSwitch;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/base/SignalActivity;->o()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/base/SignalActivity;->n()I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/mega/engineeringmode/ui/base/SignalActivity;->i:Lcom/mega/engineeringmode/ui/base/SignalActivity$a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract p()V
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract r()V
.end method
