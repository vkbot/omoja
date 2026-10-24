.class public Lcom/mega/nexus/os/MegaBundle;
.super Ljava/lang/Object;
.source "MegaBundle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 8
    invoke-static {p0, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getPairValue(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 12
    invoke-virtual {p0}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
