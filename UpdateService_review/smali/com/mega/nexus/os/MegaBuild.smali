.class public Lcom/mega/nexus/os/MegaBuild;
.super Ljava/lang/Object;
.source "MegaBuild.java"


# static fields
.field public static final IS_USER:Z

.field public static final IS_USERDEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    sput-boolean v0, Lcom/mega/nexus/os/MegaBuild;->IS_USERDEBUG:Z

    .line 7
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    sput-boolean v0, Lcom/mega/nexus/os/MegaBuild;->IS_USER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
