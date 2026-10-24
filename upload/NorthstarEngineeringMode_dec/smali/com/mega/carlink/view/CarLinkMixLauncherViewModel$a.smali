.class public final Lcom/mega/carlink/view/CarLinkMixLauncherViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/d$s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/carlink/view/CarLinkMixLauncherViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# virtual methods
.method public final a()V
    .locals 1

    const-string p0, "CarLinkMixLauncherViewModel"

    const-string/jumbo v0, "onInitSuccess"

    invoke-static {p0, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const-string p0, "CarLinkMixLauncherViewModel"

    const-string/jumbo v0, "onInitFailed"

    invoke-static {p0, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
