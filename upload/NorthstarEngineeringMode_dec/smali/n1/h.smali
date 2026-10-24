.class public final Ln1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Ln1/l;


# direct methods
.method public constructor <init>(Ln1/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/h;->a:Ln1/l;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "UsbVedioDialog"

    const-string v0, "mVedioDialog onDismiss"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ln1/h;->a:Ln1/l;

    iget-object p1, p0, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object p1, p0, Ln1/l;->d:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    const/4 p1, 0x0

    iput-object p1, p0, Ln1/l;->d:Landroid/widget/VideoView;

    iput-object p1, p0, Ln1/l;->c:Landroid/app/AlertDialog;

    return-void
.end method
