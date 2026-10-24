.class final Lcom/mega/nexus/os/MegaScreenManager$Holder;
.super Ljava/lang/Object;
.source "MegaScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/os/MegaScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/mega/nexus/os/MegaScreenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 354
    new-instance v0, Lcom/mega/nexus/os/MegaScreenManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mega/nexus/os/MegaScreenManager;-><init>(Lcom/mega/nexus/os/MegaScreenManager$1;)V

    sput-object v0, Lcom/mega/nexus/os/MegaScreenManager$Holder;->INSTANCE:Lcom/mega/nexus/os/MegaScreenManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mega/nexus/os/MegaScreenManager;
    .locals 1

    .line 353
    sget-object v0, Lcom/mega/nexus/os/MegaScreenManager$Holder;->INSTANCE:Lcom/mega/nexus/os/MegaScreenManager;

    return-object v0
.end method
