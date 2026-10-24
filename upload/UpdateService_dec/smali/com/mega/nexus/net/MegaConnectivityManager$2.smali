.class Lcom/mega/nexus/net/MegaConnectivityManager$2;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "MegaConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/nexus/net/MegaConnectivityManager;->startTethering(Landroid/net/ConnectivityManager;IZLcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;


# direct methods
.method constructor <init>(Lcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mega/nexus/net/MegaConnectivityManager$2;->val$callback:Lcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 42
    iget-object v0, p0, Lcom/mega/nexus/net/MegaConnectivityManager$2;->val$callback:Lcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;

    invoke-virtual {v0}, Lcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;->onTetheringFailed()V

    .line 43
    return-void
.end method

.method public onTetheringStarted()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    .line 36
    iget-object v0, p0, Lcom/mega/nexus/net/MegaConnectivityManager$2;->val$callback:Lcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;

    invoke-virtual {v0}, Lcom/mega/nexus/net/MegaConnectivityManager$MegaOnStartTetheringCallback;->onTetheringStarted()V

    .line 37
    return-void
.end method
