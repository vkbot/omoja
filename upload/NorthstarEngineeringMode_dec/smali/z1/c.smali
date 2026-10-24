.class public final Lz1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic x:Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/c;->x:Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;

    iput p2, p0, Lz1/c;->c:I

    iput-object p3, p0, Lz1/c;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/16 v0, 0xa

    iget-object v1, p0, Lz1/c;->r:Ljava/lang/String;

    iget-object v2, p0, Lz1/c;->x:Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;

    iget p0, p0, Lz1/c;->c:I

    if-ne p0, v0, :cond_0

    iget-object p0, v2, Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;->i:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    iget-object p0, v2, Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;->j:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xc

    if-ne p0, v0, :cond_2

    iget-object p0, v2, Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;->k:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    if-ne p0, v0, :cond_3

    iget-object p0, v2, Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;->l:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_4

    iget-object p0, v2, Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;->m:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xf

    if-ne p0, v0, :cond_5

    iget-object p0, v2, Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;->n:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6

    iget-object p0, v2, Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;->o:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x11

    if-ne p0, v0, :cond_7

    iget-object p0, v2, Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;->p:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const/16 v0, 0x12

    if-ne p0, v0, :cond_8

    iget-object p0, v2, Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;->q:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    const/16 v0, 0x13

    if-ne p0, v0, :cond_9

    iget-object p0, v2, Lcom/mega/engineeringmode/function/screen/MasterScreenStatusActivity;->r:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_0
    return-void
.end method
