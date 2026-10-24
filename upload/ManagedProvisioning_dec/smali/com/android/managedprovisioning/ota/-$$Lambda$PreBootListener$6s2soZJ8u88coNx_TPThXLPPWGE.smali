.class public final synthetic Lcom/android/managedprovisioning/ota/-$$Lambda$PreBootListener$6s2soZJ8u88coNx_TPThXLPPWGE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$PreBootListener$6s2soZJ8u88coNx_TPThXLPPWGE;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$PreBootListener$6s2soZJ8u88coNx_TPThXLPPWGE;->f$1:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$PreBootListener$6s2soZJ8u88coNx_TPThXLPPWGE;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/managedprovisioning/ota/-$$Lambda$PreBootListener$6s2soZJ8u88coNx_TPThXLPPWGE;->f$1:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, p0}, Lcom/android/managedprovisioning/ota/PreBootListener;->lambda$onReceive$0(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
