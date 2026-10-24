.class public Lcom/mega/nexus/os/MegaDebug;
.super Ljava/lang/Object;
.source "MegaDebug.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static traceBootKpi(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .line 8
    invoke-static {p0}, Landroid/os/Debug;->traceBootKpi(Ljava/lang/String;)V

    .line 9
    return-void
.end method
