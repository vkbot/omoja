.class final Lcom/mega/nexus/view/MegaWindowManager$Holder;
.super Ljava/lang/Object;
.source "MegaWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/view/MegaWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/mega/nexus/view/MegaWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/mega/nexus/view/MegaWindowManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mega/nexus/view/MegaWindowManager;-><init>(Lcom/mega/nexus/view/MegaWindowManager$1;)V

    sput-object v0, Lcom/mega/nexus/view/MegaWindowManager$Holder;->INSTANCE:Lcom/mega/nexus/view/MegaWindowManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mega/nexus/view/MegaWindowManager;
    .locals 1

    .line 13
    sget-object v0, Lcom/mega/nexus/view/MegaWindowManager$Holder;->INSTANCE:Lcom/mega/nexus/view/MegaWindowManager;

    return-object v0
.end method
