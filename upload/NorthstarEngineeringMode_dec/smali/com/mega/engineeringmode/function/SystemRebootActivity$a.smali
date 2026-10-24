.class public final Lcom/mega/engineeringmode/function/SystemRebootActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/SystemRebootActivity;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/SystemRebootActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/SystemRebootActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/SystemRebootActivity$a;->c:Lcom/mega/engineeringmode/function/SystemRebootActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/SystemRebootActivity$a;->c:Lcom/mega/engineeringmode/function/SystemRebootActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->i:Lk2/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->k:Ln2/i;

    if-nez p0, :cond_0

    const-string p0, "SystemRebootActivity"

    const-string v0, "message center is null"

    invoke-static {p0, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ln2/i;->f()Z

    :goto_0
    return-void
.end method
