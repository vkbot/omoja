.class public Lcom/mega/update/peripheral/TboxService;
.super Landroid/app/Service;
.source "TboxService.java"


# instance fields
.field private mTboxProtocolConverter:Lcom/mega/update/peripheral/TboxProtocolConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 16
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 17
    new-instance v0, Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-direct {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;-><init>()V

    iput-object v0, p0, Lcom/mega/update/peripheral/TboxService;->mTboxProtocolConverter:Lcom/mega/update/peripheral/TboxProtocolConverter;

    .line 18
    invoke-virtual {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->init()V

    .line 19
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 23
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 24
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxService;->mTboxProtocolConverter:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-virtual {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->deInit()V

    .line 25
    return-void
.end method
