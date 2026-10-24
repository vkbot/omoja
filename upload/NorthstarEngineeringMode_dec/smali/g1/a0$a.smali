.class public final Lg1/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/a0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lg1/a0;


# direct methods
.method public constructor <init>(Lg1/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/a0$a;->c:Lg1/a0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lg1/a0$a;->c:Lg1/a0;

    iget-object v0, p0, Lg1/a0;->c:Lcom/mega/engineeringmode/function/SystemRebootActivity;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->i:Lk2/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lg1/a0;->c:Lcom/mega/engineeringmode/function/SystemRebootActivity;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
