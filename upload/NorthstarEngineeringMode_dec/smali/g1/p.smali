.class public final Lg1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/ScreenCaptureActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/p;->r:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    const p1, 0x7f1201c8

    iput p1, p0, Lg1/p;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "ScreenCaptureActivity"

    const-string v1, " showToast "

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lg1/p;->c:I

    const/4 v1, 0x0

    iget-object p0, p0, Lg1/p;->r:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    invoke-static {p0, v0, v1}, Lk2/d;->a(Landroid/content/Context;II)V

    return-void
.end method
