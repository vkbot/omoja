.class public final synthetic Lg1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/ScreenCaptureActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/n;->a:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    sget p1, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->p:I

    iget-object p0, p0, Lg1/n;->a:Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ln2/l;->a()Ln2/l;

    move-result-object p1

    iget-boolean p1, p1, Ln2/l;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnCheckedChange  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  vis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCaptureActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, p2, :cond_1

    const-class p1, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;

    if-eqz p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void
.end method
