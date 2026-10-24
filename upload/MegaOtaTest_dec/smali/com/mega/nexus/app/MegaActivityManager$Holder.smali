.class final Lcom/mega/nexus/app/MegaActivityManager$Holder;
.super Ljava/lang/Object;
.source "MegaActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/MegaActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/mega/nexus/app/MegaActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/mega/nexus/app/MegaActivityManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mega/nexus/app/MegaActivityManager;-><init>(Lcom/mega/nexus/app/MegaActivityManager$1;)V

    sput-object v0, Lcom/mega/nexus/app/MegaActivityManager$Holder;->INSTANCE:Lcom/mega/nexus/app/MegaActivityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mega/nexus/app/MegaActivityManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/mega/nexus/app/MegaActivityManager$Holder;->INSTANCE:Lcom/mega/nexus/app/MegaActivityManager;

    return-object v0
.end method
