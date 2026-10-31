.class public Lcom/woha/appmanag/MountedStorageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    if-nez p2, :cond_5

    .line 4
    .line 5
    goto :goto_a

    .line 6
    :cond_5
    sget-object v0, Lh7/k;->o:Lh7/k;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lh7/k;->f(Landroid/content/Context;Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    :cond_a
    :goto_a
    return-void
.end method
