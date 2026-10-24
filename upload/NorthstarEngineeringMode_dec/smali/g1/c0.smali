.class public final Lg1/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/SystemResetActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/SystemResetActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/c0;->c:Lcom/mega/engineeringmode/function/SystemResetActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lg1/c0;->c:Lcom/mega/engineeringmode/function/SystemResetActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/SystemResetActivity;->i:Lk2/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "system_reset_car_settings"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
