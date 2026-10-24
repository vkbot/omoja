.class public final synthetic Lcom/android/managedprovisioning/task/-$$Lambda$AddWifiNetworkTask$EZZ-BoQKzJz6x5kL5FHTaeUQZSw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/managedprovisioning/task/AddWifiNetworkTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/managedprovisioning/task/AddWifiNetworkTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/task/-$$Lambda$AddWifiNetworkTask$EZZ-BoQKzJz6x5kL5FHTaeUQZSw;->f$0:Lcom/android/managedprovisioning/task/AddWifiNetworkTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/managedprovisioning/task/-$$Lambda$AddWifiNetworkTask$EZZ-BoQKzJz6x5kL5FHTaeUQZSw;->f$0:Lcom/android/managedprovisioning/task/AddWifiNetworkTask;

    invoke-virtual {p0}, Lcom/android/managedprovisioning/task/AddWifiNetworkTask;->lambda$connectToProvidedNetwork$0$AddWifiNetworkTask()V

    return-void
.end method
