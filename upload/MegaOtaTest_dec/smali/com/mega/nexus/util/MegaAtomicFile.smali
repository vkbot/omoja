.class public Lcom/mega/nexus/util/MegaAtomicFile;
.super Ljava/lang/Object;
.source "MegaAtomicFile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exists(Landroid/util/AtomicFile;)Z
    .locals 1
    .param p0, "atomicFile"    # Landroid/util/AtomicFile;

    .line 8
    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    return v0
.end method
