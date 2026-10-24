.class public final Lg1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic r:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/ScreenCaptureActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/q;->r:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    iput-boolean p2, p0, Lg1/q;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lg1/q;->c:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1201ca

    goto :goto_0

    :cond_0
    const v0, 0x7f1201c8

    :goto_0
    iget-object p0, p0, Lg1/q;->r:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lk2/d;->a(Landroid/content/Context;II)V

    return-void
.end method
