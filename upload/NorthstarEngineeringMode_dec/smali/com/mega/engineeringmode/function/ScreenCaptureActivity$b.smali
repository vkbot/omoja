.class public final Lcom/mega/engineeringmode/function/ScreenCaptureActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/ScreenCaptureActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity$b;->c:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity$b;->c:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->o:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
