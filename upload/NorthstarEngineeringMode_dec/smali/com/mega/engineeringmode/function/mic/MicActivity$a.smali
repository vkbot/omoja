.class public final Lcom/mega/engineeringmode/function/mic/MicActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/mic/MicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/mic/MicActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/mic/MicActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/MicActivity$a;->c:Lcom/mega/engineeringmode/function/mic/MicActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity$a;->c:Lcom/mega/engineeringmode/function/mic/MicActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->n:Lcom/mega/engineeringmode/function/mic/a;

    sget-object v1, Lcom/mega/engineeringmode/function/mic/a$b;->c:Lcom/mega/engineeringmode/function/mic/a$b;

    iput-object v1, v0, Lcom/mega/engineeringmode/function/mic/a;->f:Lcom/mega/engineeringmode/function/mic/a$b;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f12021f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/MicActivity;->l:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
