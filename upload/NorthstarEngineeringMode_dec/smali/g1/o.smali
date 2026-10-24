.class public final Lg1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/ScreenCaptureActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/o;->a:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lg1/o;->a:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    invoke-static {p1}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v0

    invoke-virtual {v0}, Li2/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->o:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1201c9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->o:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p1, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p1, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p1, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->j:Landroid/os/Handler;

    new-instance v1, Lg1/o$a;

    invoke-direct {v1, p0}, Lg1/o$a;-><init>(Lg1/o;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const p0, 0x7f12024f

    invoke-static {p1, p0, v1}, Lk2/d;->a(Landroid/content/Context;II)V

    :goto_0
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->m:Z

    return-void
.end method
