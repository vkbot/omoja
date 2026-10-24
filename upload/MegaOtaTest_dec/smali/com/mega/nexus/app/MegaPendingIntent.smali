.class public Lcom/mega/nexus/app/MegaPendingIntent;
.super Ljava/lang/Object;
.source "MegaPendingIntent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 9
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
