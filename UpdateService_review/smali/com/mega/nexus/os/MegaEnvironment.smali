.class public Lcom/mega/nexus/os/MegaEnvironment;
.super Ljava/lang/Object;
.source "MegaEnvironment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserSystemDirectory(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    .line 10
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
