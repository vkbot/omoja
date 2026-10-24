.class final Lcom/mega/nexus/content/om/MegaOverlayManager$Holder;
.super Ljava/lang/Object;
.source "MegaOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/content/om/MegaOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/mega/nexus/content/om/MegaOverlayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/mega/nexus/content/om/MegaOverlayManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mega/nexus/content/om/MegaOverlayManager;-><init>(Lcom/mega/nexus/content/om/MegaOverlayManager$1;)V

    sput-object v0, Lcom/mega/nexus/content/om/MegaOverlayManager$Holder;->INSTANCE:Lcom/mega/nexus/content/om/MegaOverlayManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mega/nexus/content/om/MegaOverlayManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/mega/nexus/content/om/MegaOverlayManager$Holder;->INSTANCE:Lcom/mega/nexus/content/om/MegaOverlayManager;

    return-object v0
.end method
