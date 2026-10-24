.class public Lmega/config/util/SleepManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/config/util/SleepManager$SleepListener;
    }
.end annotation


# static fields
.field private static final FS_ACC_KEY:Ljava/lang/String; = "acc"

.field private static final FS_ACTION_ACC_STATE_CHANGED:Ljava/lang/String; = "com.reglink.action.acc_state_changed"

.field private static final MCU_STATE:Ljava/lang/String; = "extra_mcu_state"

.field private static final NWD_MCU_BROADCAST:Ljava/lang/String; = "com.nwd.action.ACTION_MCU_STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "SleepManager"


# instance fields
.field private mPowerSleepReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lmega/config/util/SleepRule$Opt;Ljava/lang/Object;Lmega/config/util/SleepManager$SleepListener;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lmega/config/util/SleepManager;->trigSleepListener(Lmega/config/util/SleepRule$Opt;Ljava/lang/Object;Lmega/config/util/SleepManager$SleepListener;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmega/config/util/SleepManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private generateDefaultSleepRule()Lmega/config/util/SleepRule;
    .locals 7

    new-instance p0, Lmega/config/util/SleepRule;

    invoke-direct {p0}, Lmega/config/util/SleepRule;-><init>()V

    const-string v0, "com.nwd.action.ACTION_MCU_STATE_CHANGE"

    invoke-virtual {p0, v0}, Lmega/config/util/SleepRule;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nwd.action.ACTION_MCU_STATE_CHANGE"

    const-string v2, "extra_mcu_state"

    const-string v3, "B"

    const-string v4, "=="

    const-string v5, "0"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmega/config/util/SleepRule;->addTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "com.nwd.action.ACTION_MCU_STATE_CHANGE"

    const-string v2, "extra_mcu_state"

    const-string v3, "B"

    const-string v4, "=="

    const-string v5, "2"

    invoke-virtual/range {v0 .. v6}, Lmega/config/util/SleepRule;->addTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "com.nwd.action.ACTION_MCU_STATE_CHANGE"

    const-string v2, "extra_mcu_state"

    const-string v3, "B"

    const-string v4, "=="

    const-string v5, "3"

    invoke-virtual/range {v0 .. v6}, Lmega/config/util/SleepRule;->addTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "com.nwd.action.ACTION_MCU_STATE_CHANGE"

    const-string v2, "extra_mcu_state"

    const-string v3, "B"

    const-string v4, "=="

    const-string v5, "1"

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lmega/config/util/SleepRule;->addTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "com.reglink.action.acc_state_changed"

    invoke-virtual {p0, v0}, Lmega/config/util/SleepRule;->addAction(Ljava/lang/String;)V

    const-string v1, "com.reglink.action.acc_state_changed"

    const-string v2, "acc"

    const-string v3, "Z"

    const-string v4, "=="

    const-string/jumbo v5, "true"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmega/config/util/SleepRule;->addTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "com.reglink.action.acc_state_changed"

    const-string v2, "acc"

    const-string v3, "Z"

    const-string v4, "=="

    const-string v5, "false"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lmega/config/util/SleepRule;->addTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method private static generateReceiverBySleepRule(Lmega/config/util/SleepRule;Lmega/config/util/SleepManager$SleepListener;)Landroid/content/BroadcastReceiver;
    .locals 1

    new-instance v0, Lmega/config/util/SleepManager$1;

    invoke-direct {v0, p0, p1}, Lmega/config/util/SleepManager$1;-><init>(Lmega/config/util/SleepRule;Lmega/config/util/SleepManager$SleepListener;)V

    return-object v0
.end method

.method private static trigSleepListener(Lmega/config/util/SleepRule$Opt;Ljava/lang/Object;Lmega/config/util/SleepManager$SleepListener;)Z
    .locals 2

    iget-object v0, p0, Lmega/config/util/SleepRule$Opt;->op:Ljava/lang/String;

    const-string v1, "=="

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lmega/config/util/SleepRule$Opt;->base:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lmega/config/util/SleepRule$Opt;->wakeUp:Z

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lmega/config/util/SleepManager$SleepListener;->wakeUp()V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lmega/config/util/SleepManager$SleepListener;->sleep()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public registerPowerSleepListener(Landroid/content/Context;Lmega/config/util/SleepManager$SleepListener;)V
    .locals 2

    const-string/jumbo v0, "power_sleep_rule"

    sget-object v1, Lmega/config/util/SleepRule;->CREATOR:Lmega/config/XmlSerializable$Creator;

    invoke-static {v0, v1}, Lmega/config/MegaOsConfig;->getAsType(Ljava/lang/String;Lmega/config/XmlSerializable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/config/util/SleepRule;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmega/config/util/SleepManager;->generateDefaultSleepRule()Lmega/config/util/SleepRule;

    move-result-object v0

    :cond_0
    invoke-static {v0, p2}, Lmega/config/util/SleepManager;->generateReceiverBySleepRule(Lmega/config/util/SleepRule;Lmega/config/util/SleepManager$SleepListener;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    iput-object p2, p0, Lmega/config/util/SleepManager;->mPowerSleepReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iget-object v0, v0, Lmega/config/util/SleepRule;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmega/config/util/SleepManager;->mPowerSleepReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerScreenListener(Landroid/content/Context;Lmega/config/util/SleepManager$SleepListener;)V
    .locals 2

    const-string/jumbo v0, "screen_state_rule"

    sget-object v1, Lmega/config/util/SleepRule;->CREATOR:Lmega/config/XmlSerializable$Creator;

    invoke-static {v0, v1}, Lmega/config/MegaOsConfig;->getAsType(Ljava/lang/String;Lmega/config/XmlSerializable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/config/util/SleepRule;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmega/config/util/SleepManager;->generateDefaultSleepRule()Lmega/config/util/SleepRule;

    move-result-object v0

    :cond_0
    invoke-static {v0, p2}, Lmega/config/util/SleepManager;->generateReceiverBySleepRule(Lmega/config/util/SleepRule;Lmega/config/util/SleepManager$SleepListener;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    iput-object p2, p0, Lmega/config/util/SleepManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iget-object v0, v0, Lmega/config/util/SleepRule;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmega/config/util/SleepManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterPowerSleepListener(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lmega/config/util/SleepManager;->mPowerSleepReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmega/config/util/SleepManager;->mPowerSleepReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public unregisterScreenListener(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lmega/config/util/SleepManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmega/config/util/SleepManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
